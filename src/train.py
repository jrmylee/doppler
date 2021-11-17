from models.vqvae2 import *
import tensorflow as tf
from loader import get_dataset, split_data, load_audio
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

    dataset = get_dataset(ds_dir=os.path.join(hparams.dataset_dir, "original"),augmented_dir=os.path.join(hparams.dataset_dir, "echoed"))
    train_set, test_set = split_data(dataset, batch_size=batch_size)

    with mirrored_strategy.scope():
        # Model Definitions
        vqvae_trainer = VQVAETrainer(latent_dim=None, num_embeddings=None)
        vqvae_trainer.compile(optimizer=keras.optimizers.Adam(learning_rate=hparams.learning_rate))

        vqvae_trainer.set_mode("restoration")

        checkpoint_filepath = os.path.join(hparams.model_save_dir, "recon_model_2")
        model_checkpoint_callback = tf.keras.callbacks.ModelCheckpoint(
            filepath=checkpoint_filepath,
            save_weights_only=True,
            save_best_only=True,
            monitor='loss')

        vqvae_trainer.fit(train_set, epochs=epochs,validation_data=test_set, callbacks=[checkpoint_filepath])