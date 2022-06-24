import numpy as np
from loguru import logger
import os
import random
from demos.utils import get_all_from_queue


class Video:
    """This demo takes a pre-processed video and plays it on the sss. It randomly chooses between the available
    assets and allows the user to play, pause, go through the video frame by frame, and switch between videos"""

    demo_time = 300

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 25

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        self.path = "./demos/video/resorces/pre-processed/"
        self.targets = os.listdir(self.path)
        self.address = random.randint(0, len(self.targets) - 1)
        self.target = self.targets[self.address]
        self.pause = False
        self.new_video = False
        self.next_frame = False
        self.previous_frame = np.full((2353), 0)

    def get_next_video(self):
        if self.address < (len(self.targets) - 1):
            self.address += 1
            self.target = self.targets[self.address]
        else:
            self.address = 0
            self.target = self.targets[self.address]

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

    def run(self):
        # Create generator here
        while True:
            self.new_video = False
            self.pause = False
            self.screen.clear()
            self.screen.push()
            yield

            with open(self.path + self.target, "r") as input_file:
                y = 0
                for index, input_line in enumerate(input_file):
                    self.next_frame = False
                    if not self.input_queue.empty():
                        while True:
                            action = self.input_parsing(
                                get_all_from_queue(self.input_queue)
                            )

                            # FIXME: Remove this for input refactor
                            self.input_queue.queue.clear()

                            if (not self.pause) or self.next_frame or self.new_video:
                                break
                            yield
                    if self.new_video:
                        break

                    input_data = input_line.strip("\n").split(",")
                    y = 0
                    for x_index, pixel in enumerate(input_data):
                        if pixel == "":
                            y += 1
                            continue
                        x = x_index % (self.screen.x_width + 1)

                        if not self.previous_frame[int(x_index)] == int(pixel):
                            self.screen.draw_pixel(x, y, int(pixel))
                            self.previous_frame[x_index] = pixel
                    self.screen.push()
                    yield
                self.get_next_video()

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        self.screen.clear()
        pass

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)
