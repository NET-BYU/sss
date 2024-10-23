import os
import random

import numpy as np
from loguru import logger

from demos.utils import get_all_from_queue


class Video:
    """This demo takes a pre-processed video and plays it on the sss. It randomly chooses between the available
    assets and allows the user to play, pause, go through the video frame by frame, and switch between videos
    """

    demo_time = 120

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """Constructor

        Args:
            input_queue (Queue): Queue for user input
            output_queue (Queue): Queue for game output
            screen (Screen): Screen object
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 25

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
        self.previous_frame = np.zeros((self.screen.x_width, self.screen.y_height))

    # Get the next video in the list
    def get_next_video(self):
        """Get the next video in the list"""
        if self.address < (len(self.targets) - 1):
            self.address += 1
            self.target = self.targets[self.address]
        else:
            self.address = 0
            self.target = self.targets[self.address]

    # Parse the user input
    def input_parsing(self, input_queue):
        """Parse the user input"""
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

    # Draws frame to screen
    def draw_frame(self, frame):
        """Draws frame to screen"""
        # Get frame of which pixels need to get updated
        diff_frame = np.not_equal(frame, self.previous_frame)

        for r in range(self.screen.x_width):
            for c in range(self.screen.y_height):
                # If pixel is different from last frame, update
                if diff_frame[r, c]:
                    self.screen.draw_pixel(c, r, int(frame[r, c]))

        # Update previous frame
        self.previous_frame = frame.copy()

        # Push the frame to the screen
        self.screen.push()

    def run(self):
        """Run the demo"""
        # Create generator here
        while True:
            self.new_video = False
            self.pause = False
            self.screen.clear()
            self.screen.push()
            yield

            # Load the video
            loaded_video = np.load(self.path + self.target)
            loaded_video = loaded_video["arr_0"]

            # Iterate through the frames
            for frame in loaded_video:
                self.next_frame = False

                # Parse through the user input
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

                # Draw frame to screen
                self.draw_frame(frame)
                yield

            # Go to next video
            self.get_next_video()

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        self.screen.clear()
        pass

    def get_input_buff(self):
        """Get all input off the queue"""
        return list(self.input_queue.queue)
