from demos.snake import snek_state
import random
from loguru import logger

from demos.utils import get_all_from_queue

# import os, sys

# # getting the name of the directory
# # where the this file is present.
# current = os.path.dirname(os.path.realpath(__file__))
  
# # Getting the parent directory name
# # where the current directory is present.
# parent = os.path.dirname(current)
  
# # adding the parent directory to 
# # the sys.path.
# sys.path.append(parent)


class Snake:
    """This is the playable snake game. The user inputs either from the controller or the phone to control the snake
    The init function does nothing special.
    The run function calculates the snake trajectory and checks to see if the snake as eaten an apple. It always checks for game over.
    The stop function will check to see if a high score needs to be written before exiting"""

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

    def run(self):
        game_over = False
        self.screen.clear()
        current_location = (self.screen.x_width // 2, self.screen.y_height // 2)
        snek_list = [current_location]
        self.snek_length = 1
        self.h_score = 0
        with open("demos/snake/high_score.txt", "r") as scores:
            self.h_score = int(scores.read())

        def get_new_food_location():
            food_location = (
                round(random.randrange(0, self.screen.x_width - 1)),
                round(random.randrange(4, self.screen.y_height - 1)),
            )
            while food_location in snek_list:
                food_location = (
                    round(random.randrange(0, self.screen.x_width - 1)),
                    round(random.randrange(4, self.screen.y_height - 1)),
                )
            # print(food_location)
            return food_location

        current_food_location = get_new_food_location()

        direction = 0

        # draw snek part
        self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
        # draw food
        self.screen.draw_pixel(
            current_food_location[0], current_food_location[1], 15, push=True
        )

        # draw banner at the top
        self.screen.draw_hline(0, 2, self.screen.x_width, push=True)
        self.screen.draw_hline(0, 3, self.screen.x_width, push=True)
        self.screen.draw_text(0, 0, "SCORE 000")
        self.screen.draw_text(
            self.screen.x_width - 3 - 8, 0, "H-SCORE " + str(self.h_score).zfill(3)
        )
        self.screen.draw_text(self.screen.x_width // 2 - 2, 0, "SNAKE", push=True)

        # Generator Loop with raw yield
        while True:
            while not game_over:
                temp = get_all_from_queue(self.input_queue)
                # if len(temp) > 0:
                for command in temp:
                    if command == "LEFT_P":
                        direction -= 1
                    elif command == "RIGHT_P":
                        direction += 1
                if direction < 0:
                    direction = 3
                elif direction > 3:
                    direction = 0

                # Get new snake location based on trajectory
                current_location = (
                    current_location[0] - 1
                    if direction == 3
                    else current_location[0] + 1
                    if direction == 1
                    else current_location[0],
                    current_location[1] + 1
                    if direction == 2
                    else current_location[1] - 1
                    if direction == 0
                    else current_location[1],
                )

                # check food situation
                if current_food_location == current_location:
                    self.snek_length += 1

                    # Publish score to output
                    self.output_queue.put("SCORE: " + str(self.snek_length))

                    # calc new food location and draw on screen
                    current_food_location = get_new_food_location()
                    self.screen.draw_pixel(
                        current_food_location[0], current_food_location[1], 15
                    )

                    # update score on screen
                    self.screen.draw_text(6, 0, str(self.snek_length).zfill(3))

                snek_list.append(current_location)

                # if snake is bigger than it is supposed to pop the end of the snake off
                if len(snek_list) > self.snek_length:
                    self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
                    temp = snek_list.pop(0)

                # check to make sure snek isn't in the weeds
                if (
                    current_location[0] >= self.screen.x_width
                    or current_location[0] < 0
                    or current_location[1] >= self.screen.y_height
                    or current_location[1] < 4
                    or current_location in snek_list[:-1]
                ):

                    logger.info("Snake killed itself in the weeds")
                    game_over = True

                    self.output_queue.put("LIVES: Game Over")

                    continue

                # draw snek part and flush updates to the screen
                self.screen.draw_pixel(current_location[0], current_location[1], 15)
                self.screen.push()
                # yield here await next tick
                yield

            # Game is over
            # Erase the snake from the screen
            for i in snek_list[:-1]:
                self.screen.draw_pixel(i[0], i[1], 0)
            self.screen.draw_pixel(
                current_food_location[0], current_food_location[1], 0
            )
            self.screen.draw_text(
                self.screen.x_width // 2 - 4, self.screen.y_height // 2 - 2, "GAME OVER"
            )

            # update the highscore if highscore was acheived
            if self.snek_length > self.h_score:
                self.screen.draw_text(
                    self.screen.x_width // 2 - 6,
                    self.screen.y_height // 2,
                    "H-SCORE " + str(self.snek_length).zfill(3),
                )
                self.h_score = self.snek_length
                with open("demos/snake/high_score.txt", "w") as scores:
                    scores.write(str(self.h_score))
                self.screen.draw_text(
                    self.screen.x_width - 3, 0, str(self.snek_length).zfill(3)
                )
            else:
                self.screen.draw_text(
                    self.screen.x_width // 2 - 6,
                    self.screen.y_height // 2,
                    "SCORE " + str(self.snek_length).zfill(3),
                )
            self.screen.push()
            logger.info("Game over screen printed")
            # draw this stuff to the screen and await next update
            yield

            # wait about 3 seconds and then move onto reseting the game
            count = 0
            while count < self.frame_rate * 3:
                count += 1
                yield

            # reset the state and start the game again
            current_location = (self.screen.x_width // 2, self.screen.y_height // 2)
            snek_list = [current_location]
            self.snek_length = 1

            current_food_location = get_new_food_location()

            direction = 0
            self.screen.clear()
                # draw banner at the top
            self.screen.draw_hline(0, 2, self.screen.x_width, push=True)
            self.screen.draw_hline(0, 3, self.screen.x_width, push=True)
            self.screen.draw_text(0, 0, "SCORE 000")
            self.screen.draw_text(
                self.screen.x_width - 3 - 8, 0, "H-SCORE " + str(self.h_score).zfill(3)
            )
            self.screen.draw_text(self.screen.x_width // 2 - 2, 0, "SNAKE", push=True)

            # draw snek part
            self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
            # draw food
            self.screen.draw_pixel(
                current_food_location[0], current_food_location[1], 15, push=True
            )
            self.screen.push()
            game_over = False
            logger.info("Game reset and starting again")
            # draw new snake in reset spot and get ready to start moving again
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        if self.snek_length > self.h_score:
            self.h_score = self.snek_length
            with open("demos/snake/high_score.txt", "w") as scores:
                scores.write(str(self.h_score))
