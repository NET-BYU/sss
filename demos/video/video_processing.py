import os
from os.path import exists

import cv2
import numpy as np
from loguru import logger

# init demo/game specific variables here
num_to_pixel = {
    0: 0x0,
    1: 0x0,
    2: 0x0,
    3: 0x0,
    4: 0x0,
    5: 0x2,
    6: 0x2,
    7: 0xA,
    8: 0xA,
    9: 0xE,
    10: 0xE,
    11: 0xF,
    12: 0xF,
}
num_to_pixel_inverted = {
    12: 0x0,
    11: 0x0,
    10: 0x0,
    9: 0x0,
    8: 0x0,
    7: 0x2,
    6: 0x2,
    5: 0xA,
    4: 0xA,
    3: 0xE,
    2: 0xE,
    1: 0xF,
    0: 0xF,
}

# Set screen max and min values to 0
screen_min = 0
screen_max = 0
pause = False

# Create directory for pre-processed videos
path = "./demos/video/resources/videos/"
try:
    os.mkdir(path)
except:
    pass
else:
    logger.info(f"Created directory {path}")

# Get all videos in the directory
targets = os.listdir(path)
logger.info(f"Found {len(targets)} videos")

# Normalize the values in the video
def normalize(x):
    return num_to_pixel[int((x - screen_min) / (screen_max / 12))]


# Iterate through all videos
for target in targets:
    # Open the video and get the total number of frames
    cap = cv2.VideoCapture(f"{path}{target}")
    total_frames = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))

    # Check if the video has already been processed
    if not os.path.exists(f"{path}{target[:-4]}.csv"):
        processing = True
        logger.info(f"processing {target}")
    else:
        processing = False
        logger.info(f"{target} has already been processed")

    # Iterate through all frames in the video
    video = np.array([])
    while processing:
        (ret, frame) = cap.read()
        if not ret:
            break

        grayFrame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)  # convert to grayscale
        graySmall = np.array(cv2.resize(grayFrame, [48, 48]))  # resize to 48x48
        screen_max = max(graySmall.max(), 12)  # get the max value in the frame
        screen_min = graySmall.min()  # get the min value in the frame
        vector_func = np.vectorize(normalize)  # vectorize the normalize function
        graySmall = vector_func(graySmall)  # normalize the frame
        video = np.append(video, graySmall)  # append the frame to the video

    # Reshape the video and save it
    video = video.reshape((total_frames, 48, 48))
    video = video.astype(np.uint8)
    np.savez_compressed(
        f"./demos/video/resources/pre-processed/{target[:-4]}.npz", video
    )

    # Release the video
    cap.release()
