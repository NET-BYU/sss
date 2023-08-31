import os
import random

import numpy as np
from loguru import logger

from demos.utils import get_all_from_queue

import time


class Video:
    """This demo takes a pre-processed video and plays it on the sss. It randomly chooses between the available
    assets and allows the user to play, pause, go through the video frame by frame, and switch between videos
    """

    demo_time = 120

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 50

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        self.path = "./demos/video/resources/pre-processed/"
        self.targets = os.listdir(self.path)
        self.address = random.randint(0, len(self.targets) - 1)
        self.target = self.targets[self.address]
        self.pause = False
        self.new_video = False
        self.next_frame = False
        self.previous_frame = None

    # Get the next video in the list
    def get_next_video(self):
        if self.address < (len(self.targets) - 1):
            self.address += 1
            self.target = self.targets[self.address]
        else:
            self.address = 0
            self.target = self.targets[self.address]

    # Parse the user input
    def input_parsing(self, input_queue):
        for input in input_queue:  # allows the user to pause the video
            if input == "LEFT_P":
                self.pause = True
            if input == "UP_P":
                self.pause = True
                self.next_frame = True
            if input == "RIGHT_P":
                self.pause = False
            if input == "DOWN_P":
                self.new_video = True

    def draw_frame(self, frame):
        for r in range(frame.shape[0]):
            for c in range(frame.shape[1]):
                # start_time = time.perf_counter()
                pixel = frame[r, c]
                # end_time = time.perf_counter()
                # print(f"\tAccessing pixel took:\t{end_time - start_time:.4f}sec")
                start_time = time.perf_counter()
                if self.previous_frame is None or not np.not_equal(self.previous_frame[r, c], pixel):
                    self.screen.draw_pixel(c, r, int(pixel))
                end_time = time.perf_counter()
                print(f"\tDrawing pixels took:\t{end_time - start_time:.4f}sec")
                
        # self.previous_frame = frame.copy()

        # Push the frame to the screen
        start_time = time.perf_counter()
        self.screen.push()
        end_time = time.perf_counter()
        print(f"\tPushing pixels took:\t{end_time - start_time:.4f}sec")

    def run(self):
        # Create generator here
        while True:
            self.new_video = False
            self.pause = False
            self.screen.clear()
            self.screen.push()
            yield

            start_time = time.perf_counter()
            # Load the video
            loaded_video = np.load(self.path + self.target)
            loaded_video = loaded_video["arr_0"]
            end_time = time.perf_counter()
            print(f"Loading video took:\t{end_time - start_time:.4f}sec")

            # Iterate through the frames
            for frame in loaded_video:
                self.next_frame = False


                # Parse through the user input
                start_time = time.perf_counter()
                if not self.input_queue.empty():
                    while True:
                        action = self.input_parsing(
                            get_all_from_queue(self.input_queue)
                        )

                        self.input_queue.queue.clear()

                        # If the user wants to go to the next video, break out of the loop
                        if (not self.pause) or self.next_frame or self.new_video:
                            break
                        yield

                # Skip to the next video
                if self.new_video:
                    break
                end_time = time.perf_counter()
                print(f"Parsing input took:\t{end_time - start_time:.4f}sec")

                # Iterate through rows and columns of the frame
                # r = 0
                # for row in frame:
                #     c = 0
                #     for pixel in row:
                #         # Draw the pixel
                #         if self.previous_frame is None or not np.not_equal(self.previous_frame[c, r], pixel):
                #             self.screen.draw_pixel(c, r, int(pixel))
                #         c += 1
                #     r += 1
                # self.previous_frame = frame

                # with np.nditer(frame, flags=['multi_index']) as it:
                #     for x in it:
                #         r, c = it.multi_index
                #         # print(f"Val: {x}, Row: {r}, Col: {c}")
                #         if self.previous_frame is None or not np.not_equal(self.previous_frame[r, c], x):
                #             self.screen.draw_pixel(c, r, int(x), push=False)
                #     self.previous_frame = frame

                self.draw_frame(frame)
                print(f"Drawing video took:\t{end_time - start_time:.4f}sec")
                yield

            # Go to next video
            self.get_next_video()

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        self.screen.clear()
        pass

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)
