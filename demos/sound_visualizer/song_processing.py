# Performed offline on a different computer

import librosa
import numpy as np
import scipy.signal

# Tunable parameters
song_name = "bensound-evolution"
hop_length_secs = 1 / 10
bands = 48  # How many frequency bands?

# filename = librosa.ex("~/Downloads/bensound-evolution")
y, sr = librosa.load("~/Downloads/" + song_name + ".mp3", sr=22050)
sound_length = y.shape[0] / sr
print(f"{sound_length = }")
hop_length_samples = int(hop_length_secs * sr)
print(f"{hop_length_secs = }")
print(f"{hop_length_samples = }")

stft = np.abs(librosa.stft(y, n_fft=1024, hop_length=hop_length_samples))
num_bins, num_samples = stft.shape

# This should be approximately `sound_length` now
print(f"{num_samples * hop_length_secs = }")

# Resample to the desired number of frequency bins
stft2 = np.abs(scipy.signal.resample(stft, bands, axis=0))
stft2 = stft2 / np.max(stft2)  # Normalize to 0..1
stft2 = stft2 * 36
stft2_int = stft2.astype(int).T
print(len(stft2_int))
with open(song_name + ".npy", "wb") as f:
    np.save(f, stft2_int)
