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
        self.is_left = False
        self.is_right = False
        self.is_up = False
        self.is_jump = False
        self.is_down = False
        self.is_collision = False
        self.is_cannonball_move = False
        self.is_reset = False
        self.game_play = True

        # bools for button logic
        # cannonball[0] is the y coordinate of the cannonball cannonball[1] x coordinate
        self.cannonball = [25, 43]
        # dude[0] body y coordinate, dude[1] heady y coordinate, dude[2] x coordinate
        self.dude = [25, 24, 25]
        # This block of code is design set up
        # self.init_screen()
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
            self.is_cannonball_move = True
            if self.game_play:
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
                        # print("Got UP signal")
                        self.is_jump = True
                        self.is_up = True
                    elif keypress == "START_P":
                        self.is_reset = True

                self.move()
                self.collision()

                # # Set up for cannonballs
                # def gen_random_speed(self):
                #     speed = random.randrange(0, 75, 10)
                #     return speed

                # def gen_rand_time(self):
                #     time = random.randint(2, 10)
                #     return time

                # set up movement in the loop

                # set up the cannonballs
                if self.is_cannonball_move == True:
                    if self.cannonball[1] == 0:
                        self.screen.draw_pixel(self.cannonball[1], 25, 0x0, push=True)
                        # self.screen.draw_pixel(cannonball[1], 24, 0x0, push=True)
                        self.score += 100

                        self.cannonball[1] = 43
                        # self.cannonball[0] = random.randint(1, 2)
                    else:
                        # if self.cannonball[0] == 1:
                        self.screen.draw_pixel(self.cannonball[1], 25, 0x0, push=True)
                        self.screen.draw_pixel(
                            self.cannonball[1] - 1, 25, 0xF, push=True
                        )
                        self.cannonball[1] -= 1
                else:
                    self.screen.draw_pixel(self.cannonball[1], 25, 0x0, push=True)
                if self.is_collision == True:
                    self.is_cannonball_move = False
                    self.screen.clear()
                    self.screen.draw_text(
                        (self.screen.x_width // 2) - 5,
                        26,
                        "SCORE " + str(self.score),
                        combine=False,
                        push=True,
                    )
                    self.screen.draw_text(
                        (self.screen.x_width // 2) - 5, 24, "GAME OVER", push=True
                    )
                    self.screen.draw_text(
                        (self.screen.x_width // 2) - 10,
                        28,
                        "PRESS ENTER TO START",
                        push=True,
                    )

                    self.game_play = False
                # print("game_play", self.game_play)

            for reset in get_all_from_queue(self.input_queue):
                if reset == "START_P":
                    self.is_reset = True

            # print("reset?", self.is_reset)
            if self.is_reset:
                self.screen.draw_text(
                    (self.screen.x_width // 2) - 5, 24, "         ", push=True
                )
                self.screen.draw_text(
                    (self.screen.x_width // 2) - 5, 26, "          ", push=True
                )
                self.screen.draw_text(
                    (self.screen.x_width // 2) - 10,
                    28,
                    "                    ",
                    push=True,
                )

                self.score = 0
                # print("Went into reset")

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
                # Move cannonball back to the beginning
                self.cannonball[1] = 43
                # reset the flags
                self.is_reset = False
                self.game_play = True
                self.is_collision = False

                # else:
                #     self.is_collision = True
            yield

    # def end_round(self):

    def collision(self):
        if self.cannonball[0] == self.dude[0] and self.cannonball[1] == self.dude[2]:
            self.is_collision = True
            self.is_cannonball_move = False
        else:
            self.is_collision = False

    def init_screen(self):
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

    def move(self):
        # print(is_jump)
        if self.is_left:
            if self.dude[2] <= 40 and self.dude[2] > 2:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2] - 1, self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2] - 1, self.dude[0], 0xF, push=True)
                self.dude[2] -= 1
                self.is_left = False
            else:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                self.is_left = False
        if self.is_right:
            if self.dude[2] < 40 and self.dude[2] >= 2:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0x0, push=True)
                self.screen.draw_pixel(self.dude[2] + 1, self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2] + 1, self.dude[0], 0xF, push=True)
                self.dude[2] += 1
                self.is_right = False
            else:
                self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
                self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                self.is_right = False
        if self.is_jump:
            # print("is up ", is_up)
            if self.is_up:
                # print(self.dude[1])
                if self.dude[1] <= 21:
                    # print("Before setting: " + str(self.is_up))
                    self.is_up = False
                    self.is_down = True
                    # print("IF STATEMENT RAN")
                    # print("Down:", self.is_down)
                    # print("Up:", self.is_up)
                else:
                    self.dude[0] -= 1
                    self.dude[1] -= 1
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[0] + 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[1] + 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                    self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
            elif self.is_down:
                # print("IS DOWN RAN")
                if self.dude[0] >= 25:
                    self.is_down = False
                else:
                    self.dude[0] += 1
                    self.dude[1] += 1
                    # print(self.dude[0])
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[0] - 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(
                        self.dude[2], self.dude[1] - 1, 0x0, push=True
                    )
                    self.screen.draw_pixel(self.dude[2], self.dude[0], 0xF, push=True)
                    self.screen.draw_pixel(self.dude[2], self.dude[1], 0xF, push=True)
            else:
                self.is_jump = False

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
