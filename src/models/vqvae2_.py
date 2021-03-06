import numpy as np
import matplotlib.pyplot as plt
import random

from tensorflow import keras
from tensorflow.keras import layers
import tensorflow as tf

class VectorQuantizer(layers.Layer):
    def __init__(self, num_embeddings, embedding_dim, beta=2, **kwargs):
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
        encoder_inputs = keras.Input(shape=(1024, 88, in_channel))
        x = layers.Conv2D(out_channel // 2, 4, activation="relu", strides=2, padding="same")(encoder_inputs)
        x = layers.Conv2D(out_channel, 4, activation="relu", strides=2, padding="same")(x)
        x = layers.Conv2D(out_channel, 3, strides=1, padding="same")(x)
    elif stride == 2:
        encoder_inputs = keras.Input(shape=(256, 88 // 4, in_channel))
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
        input_shape = (128, 11, in_channel)
    elif stride == 4: # bottom decoder
        input_shape = (256, 22, in_channel)
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
    pre_quantized_top = layers.Conv2D(embed_dim, 1, padding="same", name="prequant_top")
    pre_quantized_bottom = layers.Conv2D(embed_dim, 1, padding="same", name="prequant_bot")
    
    # --- Quantization Layers ---
    quantize_top = VectorQuantizer(n_embed, embed_dim)
    quantize_bottom = VectorQuantizer(n_embed, embed_dim)
    
    # Upsampling Layers
    upsample_top = layers.Conv2DTranspose(embed_dim, 4, strides=2, padding="same")
    
    
    # --------------- Model Definition ----------------
    inputs = keras.Input(shape=(1024, 88, 1))
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

        self.prequantize_top = keras.Model(inputs=self.vqvae.input, outputs=self.vqvae.get_layer("prequant_top").output)
        self.prequantize_bot = keras.Model(inputs=self.vqvae.input, outputs=self.vqvae.get_layer("prequant_bot").output)	
        self.mode = mode

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
    
    def decode_code(self, code_top, code_bot):
        top_quantizer = self.vqvae.get_layer("vector_quantizer")
        bot_quantizer = self.vqvae.get_layer("vector_quantizer_1")

        quant_top = top_quantizer.get_quantized(code_top, (1, 128, 11, 64))
        quant_bot = bot_quantizer.get_quantized(code_bot, (1, 256, 22, 64))

        return self.decode(quant_top, quant_bot)

    def test_step(self, data):
        x_clean, x_noised = data
        
        if self.mode == "reconstruction":
            x, x_ = x_clean, x_clean
        elif self.mode == "restoration":
            x_ = x_noised
            x = x_clean
        
        reconstructions = self.vqvae(x_)

        # Calculate the losses.
        reconstruction_loss = (
            tf.reduce_mean((x - reconstructions) ** 2)
        )
        total_loss = reconstruction_loss + sum(self.vqvae.losses)
        self.valid_loss_tracker.update_state(total_loss)
        self.valid_reconstruction_loss_tracker.update_state(reconstruction_loss)
        self.valid_vq_loss_tracker.update_state(sum(self.vqvae.losses))

        # Log results.
        return {
            "loss": self.valid_loss_tracker.result(),
            "reconstruction_loss": self.valid_reconstruction_loss_tracker.result(),
            "vqvae_loss": self.valid_vq_loss_tracker.result(),
        }
        

    def train_step(self, data):
        x_clean, x_noised = data
        
        if self.mode == "reconstruction":
            x, x_ = x_clean, x_clean
        elif self.mode == "restoration":
            x_ = x_noised
            x = x_clean
            
        with tf.GradientTape() as tape:
            # Outputs from the VQ-VAE.
            reconstructions = self.vqvae(x_)

            # Calculate the losses.
            reconstruction_loss = (
                tf.reduce_mean((x - reconstructions) ** 2)
            )
            total_loss = reconstruction_loss + sum(self.vqvae.losses)

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
