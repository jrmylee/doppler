from models.vqvae3 import *
from models.callbacks.QuantizerCallback import QuantizerCallback
import tensorflow as tf
from loader import get_audio_dataset, split_audio_dataset, load_audio
import datetime
import json
from types import SimpleNamespace
import os 

with open("config.json") as file:
    hparams = json.load(file, object_hook=lambda d: SimpleNamespace(**d))
    
    epochs = hparams.num_epochs
    batch_size= hparams.batch_size

    # for multi-gpu training
    mirrored_strategy = tf.distribute.MirroredStrategy()
    batch_size *= mirrored_strategy.num_replicas_in_sync

    dataset = get_audio_dataset(hparams.audio_dir, hparams.mapping_file)
    train_set, test_set = split_audio_dataset(dataset, batch_size=batch_size)

    with mirrored_strategy.scope():
        # Model Definitions
        vqvae_trainer = VQVAETrainer(latent_dim=256, num_embeddings=512)
        vqvae_trainer.compile(optimizer=keras.optimizers.Adam(learning_rate=hparams.learning_rate))

        vqvae_trainer.set_mode("restoration")

        # Tensorboard Callback
        log_dir = "logs/fit/" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
        tensorboard_callback = tf.keras.callbacks.TensorBoard(log_dir=log_dir, histogram_freq=1)
    
        # Checkpoint Callback
        checkpoint_filepath = os.path.join(hparams.model_save_dir, "recon_06")
        model_checkpoint_callback = tf.keras.callbacks.ModelCheckpoint(
            filepath=checkpoint_filepath,
            save_weights_only=True,
            save_best_only=True,
            monitor='loss')

        # Quantizer Callback, this prints the embedding code frequency

        callbacks = [model_checkpoint_callback, tensorboard_callback]

        vqvae_trainer.fit(train_set, epochs=epochs, validation_data=test_set, callbacks=callbacks)
