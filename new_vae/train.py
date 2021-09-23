# Configuration

import json
config_file = open('config.json',)
config = json.load(config_file)
training_params = config["training_params"]

# Training Parameters
LEARNING_RATE = training_params['learning_rate']
EPOCHS = training_params['num_epochs']
BATCH_SIZE = training_params['batch_size']
VECTOR_DIM = training_params['vector_dimension']

# Pre-Processing Section
HOP_SIZE = training_params['hop_size']
SAMPLE_RATE = training_params['sr']
MIN_LEVEL_DB = training_params['min_level_db']
REF_LEVEL_DB = training_params['ref_level_db']
TIME_AXIS_LENGTH = training_params['time_axis_length']
spec_split = 1

from preprocess import *
from augment import augment_audio
from model import VAE
from data.loader import get_training_set

def load_raw_data():
    print("loading raw data")
    sr = 22050
    k = 10
    X_tr = np.load('../gtzan_tr.npy')
    y_tr_dense = X_tr[:,-1]
    y_tr = np.zeros((X_tr.shape[0],k))
    y_tr[range(X_tr.shape[0]),y_tr_dense.astype(int)] = 1
    X_tr = X_tr[:,:-1]
    X_vl = np.load('../gtzan_cv.npy')
    y_vl_dense = X_vl[:,-1]
    y_vl = np.zeros((X_vl.shape[0],k))
    y_vl[range(X_vl.shape[0]),y_vl_dense.astype(int)] = 1
    X_vl = X_vl[:,:-1]
    X_ts = np.load('../gtzan_te.npy')
    y_ts_dense = X_ts[:,-1]
    y_ts = np.zeros((X_ts.shape[0],k))
    y_ts[range(X_ts.shape[0]),y_ts_dense.astype(int)] = 1
    X_ts = X_ts[:,:-1]
    return X_tr, y_tr, X_vl, y_vl, X_ts, y_ts

# this is hard coded for GTZan
# generates spectrograms from dataset
def generate_training_data(X_tr):
    print("generating training data")
    aspec = tospec(X_tr) 
    new_shape = ((0, 0), (0, 0), (0, 3), (0, 0))
    aspec = np.pad(aspec, pad_width=new_shape, mode='constant', constant_values=0)
    adata = split_spectrograms(aspec)
    return adata
# --------------------------------------------------------------------------------


# Train Section
def train(x_train_pure, x_train_noised, learning_rate, batch_size, epochs, chkpt_pth): 
  vae = VAE(
      input_shape = (HOP_SIZE, TIME_AXIS_LENGTH * spec_split, 1),
      conv_filters=(512, 256, 128, 64, 32),
      conv_kernels=(3, 3, 3, 3, 3),
      conv_strides=(2, 2, 2, 2, (2,1)),
      latent_space_dim = VECTOR_DIM
  )
  vae.summary()
  vae.compile(learning_rate)
  vae.train(x_train_pure, x_train_noised, batch_size, epochs, chkpt_pth)
  return vae

def continue_training(checkpoint):
  vae = VAE.load(checkpoint)
  vae.summary()
  vae.compile(LEARNING_RATE)
  vae.train(x_train_pure, x_train_noised, BATCH_SIZE,EPOCHS)
  return vae

def load_model(checkpoint):
  vae = VAE.load(checkpoint)
  vae.summary()
  vae.compile(LEARNING_RATE)
  return vae
# --------------------------------------------------------------------------------


# Train!
# X_raw_tr, y_raw_tr, X_raw_vl, y_raw_vl, X_raw_ts, y_raw_ts = load_raw_data()

# X_noised_tr = augment_audio(X_raw_tr, SAMPLE_RATE).cpu().numpy()

# X_tr_pure = generate_training_data(X_raw_tr)
# X_tr_noised = generate_training_date(X_noised_tr)

X_train = get_training_set()
X_train_noised = X_train.map(augment_audio)

training_run_name = "my_melspecvae_model"
checkpoint_save_directory = "./saved_models/"

current_time = get_time_stamp()

vae = train(X_train, X_train_noised, LEARNING_RATE, BATCH_SIZE, EPOCHS, checkpoint_save_directory)
vae.save(f"{checkpoint_save_directory}{training_run_name}_{current_time}_h{HOP_SIZE}_w{TIME_AXIS_LENGTH}_z{VECTOR_DIM}")
