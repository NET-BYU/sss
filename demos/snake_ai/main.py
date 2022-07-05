"""Snake AI Demo"""
from demos.snake_ai import snek_state, snek_ai
import random
from loguru import logger
from copy import deepcopy


class SnakeAi:
    """This is the ai snake game.
    The init function does nothing special.
    The run function calculates the snake trajectory and checks to see if the
    snake as eaten an apple. It always checks for game over.
    The stop function will check to see if a high score needs to be written
    before exiting"""

    demo_time = 120

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """Constructor that specifies game specifics"""
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 60

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def _draw_set_up(self):
        """Draw the setup on the game screen"""
        logger.debug("Game reset and starting again")
        # draw banner at the top
        self.screen.draw_hline(0, 2, self.screen.x_width, push=True)
        self.screen.draw_hline(0, 3, self.screen.x_width, push=True)
        self.screen.draw_text(0, 0, "SCORE 000")
        self.screen.draw_text(
            self.screen.x_width - 3 - 8, 0, "H-SCORE " + str(self.h_score).zfill(3)
        )
        self.screen.draw_text(self.screen.x_width // 2 - 2, 0, "SNAKE", push=True)
        self.output_queue.put("SCORE                        ")
        self.output_queue.put("LIVES                        ")

    def run(self):
        """Main game loop"""
        game_over = False
        self.screen.clear()
        current_location = (self.screen.x_width // 2, self.screen.y_height // 2)
        snek_list = [
            (current_location[0] - 2, current_location[1]),
            (current_location[0] - 1, current_location[1]),
            current_location,
        ]
        self.snek_length = 1
        self.h_score = 0
        with open("demos/snake_ai/ai_high_score.txt", "r") as scores:
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

        def generate_game_state(width, height, snake, food_loc):
            game_state = snek_state.snek_state(width, height)
            for part in snake:
                game_state.add_snake_part2(part)
            game_state.add_food2(food_loc)
            return game_state

        current_food_location = get_new_food_location()

        game_state = generate_game_state(
            self.screen.x_width,
            self.screen.y_height,
            snek_list,
            current_food_location,
        )

        snek_path = snek_ai.run_Search2(
            current_location[0],
            current_location[1],
            current_food_location,
            game_state,
            self.snek_length,
        )

        # draw snek part
        self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
        # draw food
        self.screen.draw_pixel(current_food_location[0], current_food_location[1], 15, push=True)

        # draw banner at the top
        self._draw_set_up()

        # Generator Loop with raw yield
        while True:
            while not game_over:

                if len(snek_path) == 0:
                    logger.debug("ran out, try search again")
                    game_state.snek_parts = deepcopy(snek_list[:-1])
                    snek_path = snek_ai.run_Search2(
                        current_location[0],
                        current_location[1],
                        current_food_location,
                        game_state,
                        self.snek_length,
                    )
                current_location = snek_path.pop(0)
                # logger.debug(str(current_location) + " " + str(current_food_location))
                # game_state.add_snake_part(current_location)
                game_state.add_snake_part2(current_location)

                # check food situation
                if current_food_location == current_location:
                    logger.debug("found some food")
                    self.snek_length += 1

                    # Publish score to output
                    self.output_queue.put("SCORE " + str(self.snek_length))
                    logger.debug("SCORE: " + str(self.snek_length))

                    # calc new food location and draw on screen
                    current_food_location = get_new_food_location()
                    game_state.add_food2(current_food_location)
                    game_state.snek_parts = deepcopy(snek_list)

                    snek_path = snek_ai.run_Search2(
                        current_location[0],
                        current_location[1],
                        current_food_location,
                        game_state,
                        self.snek_length,
                    )
                    logger.debug("found new snake path")

                    if snek_path is None or len(snek_path) == 0:
                        logger.debug("Path was zero, no solution?")
                        game_over = True
                        continue

                    self.screen.draw_pixel(current_food_location[0], current_food_location[1], 15)

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
                    logger.debug("Snake killed itself in the weeds")
                    game_over = True

                    self.output_queue.put("LIVES Game Over")

                    continue

                # draw snek part and flush updates to the screen
                self.screen.draw_pixel(current_location[0], current_location[1], 15)
                self.screen.push()
                # logger.debug("yielding")
                # yield here await next tick
                yield

            # Game is over
            # Erase the snake from the screen
            for i in snek_list[:-1]:
                self.screen.draw_pixel(i[0], i[1], 0)
            self.screen.draw_pixel(current_food_location[0], current_food_location[1], 0)
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
                with open("demos/snake_ai/ai_high_score.txt", "w") as scores:
                    scores.write(str(self.h_score))
                self.screen.draw_text(self.screen.x_width - 3, 0, str(self.snek_length).zfill(3))
            else:
                self.screen.draw_text(
                    self.screen.x_width // 2 - 6,
                    self.screen.y_height // 2,
                    "SCORE " + str(self.snek_length).zfill(3),
                )
            self.screen.push()
            logger.debug("Game over screen printed")
            self.output_queue.put("LIVES Game Over")
            # draw this stuff to the screen and await next update
            yield

            self._draw_set_up()

            # wait about 3 seconds and then move onto reseting the game
            count = 0
            while count < self.frame_rate * 3:
                count += 1
                yield

            # reset the state and start the game again
            current_location = (self.screen.x_width // 2, self.screen.y_height // 2)
            snek_list = [
                (current_location[0] - 2, current_location[1]),
                (current_location[0] - 1, current_location[1]),
                current_location,
            ]
            self.snek_length = 1

            current_food_location = get_new_food_location()
            game_state = generate_game_state(
                self.screen.x_width,
                self.screen.y_height,
                snek_list,
                current_food_location,
            )

            snek_path = snek_ai.run_Search2(
                current_location[0],
                current_location[1],
                current_food_location,
                game_state,
                self.snek_length,
            )
            self.screen.clear()

            # draw snek part
            self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
            # draw food
            self.screen.draw_pixel(
                current_food_location[0], current_food_location[1], 15, push=True
            )
            self.screen.push()
            game_over = False

            # draw new snake in reset spot and get ready to start moving again
            yield

    def stop(self):
        """Exit logic"""
        # Reset the state of the demo if needed, else leave blank
        if self.snek_length > self.h_score:
            self.h_score = self.snek_length
            with open("demos/snake_ai/ai_high_score.txt", "w") as scores:
                scores.write(str(self.h_score))
