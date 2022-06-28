from sysv_ipc import SharedMemory, Semaphore
import numpy as np
from loguru import logger
import cv2

DOOM_ID = 666
SCREENWIDTH = 320
SCREENHEIGHT = 200
NUM_COLS = 48


class Doom:
    """This is an interactive demo that adapts the Doom game for the SSS by capturing the game's video output"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 30
        self.demo_time = None  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        self.shm = SharedMemory(DOOM_ID, 0, 0)
        self.shm.attach(0, 0)

        self.num_to_pixel = {
            0: 0x0,
            1: 0x0,
            2: 0x0,
            3: 0x1,
            4: 0x1,
            5: 0x2,
            6: 0x2,
            7: 0x2,
            8: 0x2,
            9: 0xA,
            10: 0xE,
            11: 0xF,
            12: 0xF,
        }

        self.screen_max = 0
        self.screen_min = 0

        self.arr = []
        for i in range(NUM_COLS):
            self.arr.append([])
            for j in range(NUM_COLS):
                self.arr[i].append(0)

    def run(self):
        # Create generator here
        while True:
            #    sem.acquire()
            buf = self.shm.read(SCREENWIDTH * SCREENHEIGHT)
            buf = np.frombuffer(bytearray(buf), dtype=np.uint8)
            buf = buf.reshape(SCREENHEIGHT, SCREENWIDTH)
            buf = buf[12:156, 16:304]
            buf = cv2.resize(buf, (48, 48))

            # logger.info(buf)
            # imsave("screenshot" + str(count) + ".png", buf[12:156, 16:304])
            #    sem.release()

            self.screen_min = buf.min()
            self.screen_max = buf.max()

            for i in range(48):
                for j in range(48):
                    pixel = int((buf[i][j] - self.screen_min) / (self.screen_max / 12))
                    if pixel > 12:
                        logger.debug(f"\nself.screen_min = {self.screen_min}")
                        logger.debug(f"pixel = {pixel}")
                        logger.debug(f"graySmall[{i}][{j}] = {buf[i][j]}")
                        logger.debug(f"self.screen_max = {self.screen_max}")
                        pixel = 12

                    if self.arr[i][j] != self.num_to_pixel[pixel]:
                        self.screen.draw_pixel(j, i, self.num_to_pixel[pixel])
                        self.arr[i][j] = self.num_to_pixel[pixel]

            self.screen.push()

            yield

    def stop(self):
        self.shm.detach()
