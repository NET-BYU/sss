from json import loads
from math import sqrt
from os import environ
from os.path import exists
from subprocess import DEVNULL, Popen

import cv2
import numpy as np
from loguru import logger
from sysv_ipc import ExistentialError, SharedMemory

from demos.utils import get_all_from_queue

DOOM_VIDEO_ID = 666
DOOM_INPUT_ID = 667
DOOM_OUTPUT_ID = 668

SCREENWIDTH = 320
SCREENHEIGHT = 200
NUM_COLS = 48


class Doom:
    """This is an interactive demo that adapts the Doom game for the SSS by capturing the game's video output"""

    demo_time = None  # None for a game

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): The input queue
            output_queue (Queue): The output queue
            screen (Screen): The screen to draw on

        Raises:
            Exception: If the game is not found
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 50

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.game_installed = exists("demos/doom/chocolate-doom")

        self.shared_mem_init = False
        self.choco_doom = 0
        self.curmin = 0
        self.curmax = 0

        # Initialize game and allocate shared memory
        if self.game_installed:
            environ["SDL_VIDEODRIVER"] = "dummy"
            self.choco_doom = Popen(
                [
                    "./demos/doom/chocolate-doom",
                    "-iwad",
                    "assets/fuller.wad",
                    "-file",
                    "assets/subvert.wad",
                ],
                stdout=DEVNULL,
                stderr=DEVNULL,
            )

            # init a connection to shared memory locations here
            try:
                self.shm = SharedMemory(DOOM_VIDEO_ID, 0, 0)
                self.shm.attach(0, 0)

                self.shm_input = SharedMemory(DOOM_INPUT_ID, 0, 0)
                self.shm_input.attach(0, 0)

                self.shm_output = SharedMemory(DOOM_OUTPUT_ID, 0, 0)
                self.shm_output.attach(0, 0)

                self.shared_mem_init = True
            except (ExistentialError, Exception) as e:
                logger.error("Could not establish connection with shared memory")
                logger.error(e)
                exit(0)

        # Color map for the SSS
        self.num_to_pixel = {
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

        self.screen_max = 0
        self.screen_min = 0

        # Init numpy array for screen
        self.arr = []
        for i in range(NUM_COLS):
            self.arr.append([])
            for j in range(NUM_COLS):
                self.arr[i].append(0)

    def run(self):
        """Run the game"""
        # In case memory cannot be initialized correctly or game is not found
        if not self.game_installed or not self.shared_mem_init:
            self.screen.draw_text(
                self.screen.x_width // 2 - 10,
                self.screen.y_height // 2 - 4,
                "ERROR INITIALIZING DOOM",
                push=True,
            )
            while True:
                yield

        # Create generator here
        while True:
            # Reading screen details from screen shared memory buffer
            buf = self.shm.read(SCREENWIDTH * SCREENHEIGHT)
            buf = np.frombuffer(bytearray(buf), dtype=np.uint8)
            buf = buf.reshape(SCREENHEIGHT, SCREENWIDTH)
            buf = buf[12:156, 16:304]
            buf = cv2.resize(buf, (48, 48))

            # Load keypresses into shared memory for input to game
            outbuf = self.shm_output.read()
            outbuf = str(outbuf).split("|")[0][2:]
            outjson = loads(outbuf)
            self.output_queue.put(outjson)

            presses = ""

            for keypress in get_all_from_queue(self.input_queue):
                presses += keypress + ","
            presses = presses[:-1]

            self.shm_input.write(presses + "\0")

            self.screen_min = 0
            self.screen_max = 255

            for i in range(48):
                for j in range(48):
                    pixel = int(
                        (
                            (buf[i][j] - self.screen_min)
                            / (self.screen_max - self.screen_min)
                        )
                        * 12
                    )
                    if pixel > 12:
                        logger.debug(f"\nself.screen_min = {self.screen_min}")
                        logger.debug(f"pixel = {pixel}")
                        logger.debug(f"graySmall[{i}][{j}] = {buf[i][j]}")
                        logger.debug(f"self.screen_max = {self.screen_max}")
                        pixel = 12
                    pixel = int(-1 * sqrt(12 * pixel) + 12)

                    if self.arr[i][j] != self.num_to_pixel[pixel]:
                        self.screen.draw_pixel(
                            j, i, self.num_to_pixel[pixel], combine=False
                        )
                        self.arr[i][j] = self.num_to_pixel[pixel]

            self.screen.push()

            yield

    def stop(self):
        """Stop the game"""
        # Close game, release memory to OS, and close processes attached
        logger.info("Releasing system resources...")
        if self.shared_mem_init:
            self.shm_input.write("QUIT_P")
            self.choco_doom.terminate()
            self.shm.detach()
            self.shm_input.detach()
            self.shm_output.detach()
