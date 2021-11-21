import numpy as np
import matplotlib.pyplot as plt
from tensorflow import keras
from tensorflow.keras import layers
import tensorflow as tf
from kapre.composed import get_stft_magnitude_layer
from kapre.time_frequency import STFT, InverseSTFT, Magnitude, Phase, MagnitudeToDecibel

from .utils import db_to_magnitude

class VectorQuantizer(layers.Layer):
    def __init__(self, num_embeddings, embedding_dim, beta=.25, **kwargs):
        super().__init__(**kwargs)
        self.embedding_dim = embedding_dim
        self.num_embeddings = num_embeddings
        self.beta = (
            beta  # This parameter is best kept between [0.25, 2] as per the paper.
        )

        # Initialize the embeddings which we will quantize.
        w_init = tf.random_uniform_initializer()
        self.embeddings = tf.Variable(
            initial_value=w_init(
                shape=(self.embedding_dim, self.num_embeddings), dtype="float32"
            ),
            trainable=True,
            name="embeddings_vqvae",
        )

    def get_quantized(self, encoding_indices, input_shape):
        encodings = tf.one_hot(encoding_indices, self.num_embeddings)
        quantized = tf.matmul(encodings, self.embeddings, transpose_b=True)
        quantized = tf.reshape(quantized, input_shape)
        return quantized

    def call(self, x):
        # Calculate the input shape of the inputs and
        # then flatten the inputs keeping `embedding_dim` intact.
        input_shape = tf.shape(x)
        flattened = tf.reshape(x, [-1, self.embedding_dim])

        # Quantization.
        encoding_indices = self.get_code_indices(flattened)
        encodings = tf.one_hot(encoding_indices, self.num_embeddings)
        quantized = tf.matmul(encodings, self.embeddings, transpose_b=True)
        quantized = tf.reshape(quantized, input_shape)

        # Calculate vector quantization loss and add that to the layer. You can learn more
        # about adding losses to different layers here:
        # https://keras.io/guides/making_new_layers_and_models_via_subclassing/. Check
        # the original paper to get a handle on the formulation of the loss function.
        commitment_loss = self.beta * tf.reduce_mean(
            (tf.stop_gradient(quantized) - x) ** 2
        )
        codebook_loss = tf.reduce_mean((quantized - tf.stop_gradient(x)) ** 2)
        self.add_loss(commitment_loss + codebook_loss)

        # Straight-through estimator.
        quantized = x + tf.stop_gradient(quantized - x)
        return quantized

    def get_code_indices(self, flattened_inputs):
        # Calculate L2-normalized distance between the inputs and the codes.
        similarity = tf.matmul(flattened_inputs, self.embeddings)
        distances = (
            tf.reduce_sum(flattened_inputs ** 2, axis=1, keepdims=True)
            + tf.reduce_sum(self.embeddings ** 2, axis=0)
            - 2 * similarity
        )

        # Derive the indices for minimum distances.
        encoding_indices = tf.argmin(distances, axis=1)
        return encoding_indices

def residual_block(x, in_channel, channel, kernel_size=3):
    y = layers.ReLU()(x)
    y = layers.Conv2D(kernel_size=kernel_size,
               strides= 1,
               filters=channel,
               padding="same")(y)
    y = layers.ReLU()(y)
    y = layers.Conv2D(kernel_size=kernel_size,
               strides=1,
               filters=in_channel,
               padding="same")(y)

    out = layers.Add()([x, y])
    return out


def get_encoder(in_channel, out_channel, n_res_block, n_res_channel, stride):
    if stride == 4:
        encoder_inputs = keras.Input(shape=(88, 1024, in_channel))
        x = layers.Conv2D(out_channel // 2, 4, activation="relu", strides=2, padding="same")(encoder_inputs)
        x = layers.Conv2D(out_channel, 4, activation="relu", strides=2, padding="same")(x)
        x = layers.Conv2D(out_channel, 3, strides=1, padding="same")(x)
    elif stride == 2:
        encoder_inputs = keras.Input(shape=(88//4, 256, in_channel))
        x = layers.Conv2D(out_channel // 2, 4, activation="relu", strides=2, padding="same")(encoder_inputs)
        x = layers.Conv2D(out_channel, 3, strides=1, padding="same")(x)
    
    for i in range(n_res_block):
        x = residual_block(x, out_channel, n_res_channel)
    
    encoder_outputs = layers.ReLU()(x)
    
    return keras.Model(encoder_inputs, encoder_outputs)


# takes downsampled by 4 samples with n_emb channels and outputs reconstructions
def get_decoder(in_channel, out_channel, channel, n_res_block, n_res_channel, stride):
    # get rid of this hard coded stuff
    
    if stride == 2: # top decoder
        input_shape = (11, 128, in_channel)
    elif stride == 4: # bottom decoder
        input_shape = (22, 256, in_channel)
    latent_inputs = keras.Input(input_shape) # (freq, frames, n_emb)
    
    x = layers.Conv2D(channel, 3, activation="relu", padding="same")(latent_inputs)
    
    for i in range(n_res_block):
        x = residual_block(x, channel, n_res_channel)
    
    if stride == 4:
        x = layers.Conv2DTranspose(channel // 2, 4, activation="relu", strides=2, padding="same")(x)
        decoder_outputs = layers.Conv2DTranspose(out_channel, 4, strides=2, padding="same")(x)
    elif stride == 2:
        decoder_outputs = layers.Conv2DTranspose(out_channel, 4, strides=2, padding="same")(x)
        
    return keras.Model(latent_inputs, decoder_outputs)
def get_vqvae(embed_dim=64, n_embed=512):    
    in_channel = 1
    channel = 128
    n_res_block, n_res_channel = 2, 32
    decay = 0.99
    # -------------- Layer Definitions ----------------
    
    # --- Encoders ---
    # Bottom Encoder takes the original input and outputs one downsampled by 4, with 'channel' channels
    # Top Encoder takes the bottom encoded output and downsamples by 2.
    bottom_encoder = get_encoder(in_channel, channel, n_res_block, n_res_channel, stride=4)
    top_encoder = get_encoder(channel, channel, n_res_block, n_res_channel, stride=2)
    
    # --- Decoders ---
    top_decoder = get_decoder(embed_dim, embed_dim, channel, n_res_block, n_res_channel, stride=2)
    decoder = get_decoder(embed_dim + embed_dim, in_channel, channel, n_res_block, n_res_channel, stride=4)
     
    # --- Pre Quantization Layers ---
    pre_quantized_top = layers.Conv2D(embed_dim, 1, padding="same")
    pre_quantized_bottom = layers.Conv2D(embed_dim, 1, padding="same")
    
    # --- Quantization Layers ---
    quantize_top = VectorQuantizer(n_embed, embed_dim)
    quantize_bottom = VectorQuantizer(n_embed, embed_dim)
    
    # Upsampling Layers
    upsample_top = layers.Conv2DTranspose(embed_dim, 4, strides=2, padding="same")
    
    
    # --------------- Model Definition ----------------
    input_shape = (88, 1024, 1)
    inputs = keras.Input(shape=input_shape)
    
    encoded_bottom = bottom_encoder(inputs) # (1024, 88, 2) => (256, 22, 128)
    encoded_top = top_encoder(encoded_bottom) # (256, 22, 128) => (128, 11, 128)
    
    # get top encoding ready for quantization
    pre_quant_top = pre_quantized_top(encoded_top) # (128, 11, 128) => (128, 11, 64)
    quantized_top = quantize_top(pre_quant_top) # (128, 11, 64)
    
    # Decode the top, and encode bottom layer with it
    decoded_top = top_decoder(quantized_top) # (128, 11, 64) => (256, 22, 2)
    encoded_bottom = layers.Concatenate(axis=3)([decoded_top, encoded_bottom]) # (256, 22, 130)
    
    # Get bottom encoding ready for quantization
    pre_quant_bottom = pre_quantized_bottom(encoded_bottom) # (256, 22, 130) => (256, 22, 64)
    quantized_bottom = quantize_bottom(pre_quant_bottom) # (256, 22, 64)
    
    # Use quantized top and bottom to decode
    upsampled_top = upsample_top(quantized_top) # (128, 11, 64) => (256, 22 , 64)
    quantized = layers.Concatenate(axis=3)([upsampled_top, quantized_bottom]) # (256, 22, 128)
    
    # Some magic
    reconstructions = decoder(quantized) # (256, 22, 128) = > (1024, 88, 2)
    
    return keras.Model(inputs, reconstructions, name="vq_vae")

class VQVAETrainer(keras.models.Model):
    def __init__(self, latent_dim, num_embeddings, mode="reconstruction", **kwargs):
        super(VQVAETrainer, self).__init__(**kwargs)

        self.vqvae = get_vqvae()

        self.total_loss_tracker = keras.metrics.Mean(name="total_loss")
        self.reconstruction_loss_tracker = keras.metrics.Mean(
            name="reconstruction_loss"
        )
        self.vq_loss_tracker = keras.metrics.Mean(name="vq_loss")

        self.valid_loss_tracker = keras.metrics.Mean(name="val_total_loss")
        self.valid_reconstruction_loss_tracker = keras.metrics.Mean(
            name="val_reconstruction_loss"
        )
        self.valid_vq_loss_tracker = keras.metrics.Mean(name="val_vq_loss")

        self.prequantize_top = keras.Model(inputs=self.vqvae.input, outputs=self.vqvae.get_layer("conv2d_23").output)
        self.prequantize_bot = keras.Model(inputs=self.vqvae.input, outputs=self.vqvae.get_layer("conv2d_24").output)
        self.mode = mode

        self.STFT_Layer = STFT(n_fft=2048, win_length=2048, hop_length=512,
               window_name=None, pad_end=False, pad_begin=True,
               input_data_format='channels_last', output_data_format='channels_last',
               input_shape=(2048 * 22, 1))
        self.ISTFT_Layer = InverseSTFT(n_fft=2048, hop_length=512, 
                input_shape=(88, 1024, 1))
        self.Mag_Layer = Magnitude()
        self.Phase_layer = Phase()
        self.Decibel_Layer = MagnitudeToDecibel()

        self.Slice_Layer = keras.layers.Lambda(lambda x : x[:, :-1,:])


    @property
    def metrics(self):
        return [
            self.total_loss_tracker,
            self.reconstruction_loss_tracker,
            self.vq_loss_tracker,
        ]

    def set_mode(self, mode):
        self.mode = mode

    def get_code_indices(self, quantizer, x):
        flattened = tf.reshape(x, [-1, quantizer.embedding_dim])
        return quantizer.get_code_indices(flattened)

    def top_and_bottom_indices(self, x):
        pretop = self.prequantize_top(x)
        prebot = self.prequantize_bot(x)

        top_quantizer = self.vqvae.get_layer("vector_quantizer")
        bot_quantizer = self.vqvae.get_layer("vector_quantizer_1")

        top_i = self.get_code_indices(top_quantizer, pretop)
        bot_i = self.get_code_indices(bot_quantizer, prebot)
        return top_i, bot_i

    def decode(self, quantized_top, quantized_bot):
        upsample_top = self.vqvae.get_layer("conv2d_transpose_3")
        upsampled_top = upsample_top(quantized_top)
        quantized = layers.Concatenate(axis=3)([upsampled_top, quantized_bot])
        decoder = self.vqvae.get_layer("model_3")

        return decoder(quantized)

    def mag_phase_2_real_imag(self, mag, phase):      
        cos_phase = tf.math.cos(phase)
        sin_phase = tf.math.sin(phase)
        r= tf.complex(mag*cos_phase, mag*sin_phase)
        return  r

    def test_step(self, x):
        x = tf.squeeze(x, axis=0)
        stft = self.STFT_Layer(x)
        stft = stft[:, :, :-1, :]

        phase = self.Phase_layer(stft) # (88, 1024, 1)
        mag = self.Mag_Layer(stft)
        decibel = self.Decibel_Layer(tf.math.square(mag)) / 80.

        # Outputs from the VQ-VAE.
        recon_decibel = self.vqvae(decibel)

        recon_mag = db_to_magnitude(recon_decibel * 80.)
        recon_x = self.ISTFT_Layer(self.mag_phase_2_real_imag(recon_mag, phase))
        recon_x = recon_x[:, :2048 * 22, :]

        reconstruction_loss = (
            tf.reduce_mean((decibel - recon_decibel) ** 2)
        )
        total_loss = reconstruction_loss + sum(self.vqvae.losses) + (x - recon_x) ** 2
        
        self.valid_loss_tracker.update_state(total_loss)
        self.valid_reconstruction_loss_tracker.update_state(reconstruction_loss)
        self.valid_vq_loss_tracker.update_state(sum(self.vqvae.losses))

        # Log results.
        return {
            "loss": self.valid_loss_tracker.result(),
            "reconstruction_loss": self.valid_reconstruction_loss_tracker.result(),
            "vqvae_loss": self.valid_vq_loss_tracker.result(),
        }
    
    def train_step(self, x):
        x = tf.squeeze(x, axis=0)
        stft = self.STFT_Layer(x)
        stft = stft[:, :, :-1, :]

        phase = self.Phase_layer(stft) # (88, 1024, 1)
        mag = self.Mag_Layer(stft)
        decibel = self.Decibel_Layer(tf.math.square(mag)) / 80.
        
        with tf.GradientTape() as tape:
            # Outputs from the VQ-VAE.
            recon_decibel = self.vqvae(decibel)
            
            recon_mag = db_to_magnitude(recon_decibel * 80.)
            recon_x = self.ISTFT_Layer(self.mag_phase_2_real_imag(recon_mag, phase))
            recon_x = recon_x[:, :2048 * 22, :]
            reconstruction_loss = (
                tf.reduce_mean((decibel - recon_decibel) ** 2)
            )
            total_loss = reconstruction_loss + sum(self.vqvae.losses) + (x - recon_x) ** 2

        # Backpropagation.
        grads = tape.gradient(total_loss, self.vqvae.trainable_variables)
        self.optimizer.apply_gradients(zip(grads, self.vqvae.trainable_variables))

        # Loss tracking.
        self.total_loss_tracker.update_state(total_loss)
        self.reconstruction_loss_tracker.update_state(reconstruction_loss)
        self.vq_loss_tracker.update_state(sum(self.vqvae.losses))

        # Log results.
        return {
            "loss": self.total_loss_tracker.result(),
            "reconstruction_loss": self.reconstruction_loss_tracker.result(),
            "vqvae_loss": self.vq_loss_tracker.result(),
        }
