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
screen_min = 0
screen_max = 0
pause = False
processing = True
path = "./demos/video/resorces/videos/"
try:
    os.mkdir(path)
except:
    pass
else:
    logger.info(f"Created directory {path}")
targets = os.listdir(path)

for target in targets:
    cap = cv2.VideoCapture(f"./demos/video/resorces/videos/{target}")

    if os.path.exists(path + target + ".csv"):
        processing = True
        logger.info(f"processing {target}")
    else:
        processing = False
        logger.info(f"{target} has already been processed")
    # Create generator here

    while processing:
        (ret, frame) = cap.read()
        if not ret:
            break
        grayFrame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        graySmall = np.array(cv2.resize(grayFrame, [48, 48]))
        screen_max = graySmall.max()
        screen_min = graySmall.min()

        if screen_max < 12:
            screen_max = 12

        output = ""
        for i in range(48):
            for j in range(48):
                pixel = int((graySmall[i][j] - screen_min) / (screen_max / 12))
                if pixel > 12:
                    logger.info("pixel > 12, set to 12")
                    pixel = 12
                output = output + f"{num_to_pixel[pixel]},"
            output = output + ","

        with open(
            "./demos/video/resorces/pre-processed/" + target + ".csv", "a"
        ) as output_file:
            output_file.write(f"{output}\n")

    cap.release()
