from demos.utils import get_all_from_queue

import random

import time


class Run:
    """This game consists of running and jumping to avoid objects that will be shot at you. They will not vary in size but they will vary in speed and timing"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = None  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here
        self.score = 0  # starts out with no points
        self.lives = 3  # start with 3 lives

    def run(self):
        x = 25
        head_y = 24
        body_y = 25
        self.is_left = False
        self.is_right = False
        self.is_up = False
        self.is_jump = False
        self.is_down = False

        # bools for button logic
        # cannonball[0] is the height of the cannonball cannonball[1] x coordinate
        self.cannonball = [1, 43]
        # dude[0] body y coordinate, dude[1] heady y coordinate, dude[2] x coordinate
        self.dude = [24, 25, 25]
        # This block of code is design set up
        # Draw the character
        self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
        self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)

        # Draw the ground
        for x_line in range(26, 30):
            self.screen.draw_hline(0, x_line, 47, push=True)
            yield

        # Draws the cannon
        self.screen.draw_pixel(46, 26, 0xF, push=True)
        self.screen.draw_pixel(46, 25, 0xF, push=True)
        self.screen.draw_pixel(45, 25, 0xF, push=True)
        # Create generator here
        while True:
            # This block moves the character
            for keypress in get_all_from_queue(self.input_queue):
                if keypress == "LEFT_P":
                    self.is_left = True
                elif keypress == "LEFT_R":
                    self.is_left = False
                elif keypress == "RIGHT_P":
                    self.is_right = True
                elif keypress == "RIGHT_R":
                    self.is_right = False
                elif keypress == "UP_P":
                    self.is_jump = True
                    self.is_up = True
                    self.is_down = False
                elif keypress == "UP_R":
                    self.is_jump = False
                    self.is_up = False

            self.move(
                self.is_left, self.is_right, self.is_jump, self.is_up, self.is_down
            )
            # # Set up for cannonballs
            # def gen_random_speed(self):
            #     speed = random.randrange(0, 75, 10)
            #     return speed

            # def gen_rand_time(self):
            #     time = random.randint(2, 10)
            #     return time

            # set up movement in the loop

            # set up the cannonballs
            if self.cannonball[1] == 0:
                self.screen.draw_pixel(self.cannonball[1], 25, 0x0, push=True)
                # self.screen.draw_pixel(cannonball[1], 24, 0x0, push=True)

                self.cannonball[1] = 43
                self.cannonball[0] = random.randint(1, 2)
            else:
                # if cannonball[0] == 1:
                self.screen.draw_pixel(self.cannonball[1], 25, 0x0, push=True)
                self.screen.draw_pixel(self.cannonball[1] - 1, 25, 0xF, push=True)
                self.cannonball[1] -= 1

            yield

    def move(self, is_left, is_right, is_jump, is_up, is_down):
        if is_left:
            if self.dude[2] <= 40 and self.dude[2] >= 2:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2] - 1, self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2] - 1, self.dude[0], 0xF, push=True)
                self.dude[2] -= 1
                is_left = False
            else:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                is_left = False
        if is_right:
            if self.dude[2] <= 40 and self.dude[2] >= 2:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2] + 1, self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2] + 1, self.dude[0], 0xF, push=True)
                self.dude[2] += 1
                is_right = False
            else:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                is_right = False
        if is_jump:
            if self.dude[1] <= 21:
                is_up = False
            if is_up:
                is_down = False
                self.dude[0] -= 1
                self.dude[1] -= 1
                self.screen.draw_pixel(self.dude[2], self.dude[0] + 1, 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[1] + 1, 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                print(self.dude[1])
            elif is_up == False and is_down == False:
                if self.dude[0] >= 25:
                    is_down = True
                else:
                    self.dude[0] += 1
                    self.dude[1] += 1
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[0] - 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[1] - 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                    self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                if is_down == True:
                    is_jump = False

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
