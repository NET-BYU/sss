from demos.snake import snek_state
import random

class Template:
    """This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function calls the super init and then intializes the specific demo/game variables.
    The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen.
    The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = 300  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        game_over = False
        self.screen.clear()
        current_location = (self.screen.x_width // 2, self.screen.y_height // 2)
        snek_list = [current_location]
        snek_length = 1
        h_score = 0
        with open("games/snake/ai_high_score.txt", "r") as scores:
            h_score = int(scores.read())

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

        direction = None
        
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
        self.screen.draw_text(self.screen.x_width - 3 - 8, 0, "H-SCORE " + str(h_score).zfill(3))
        self.screen.draw_text(self.screen.x_width // 2 - 2, 0, "SNAKE", push=True)

        # Generator Loop with raw yield
        while True:
            while not game_over:
                if not queue.empty():
                    temp = queue.get(block=False)
                    direction = (
                        temp
                        if temp == b"a"
                        or temp == b"h"
                        or temp == b"d"
                        or temp == b"k"
                        or temp == b"s"
                        or temp == b"j"
                        or temp == b"w"
                        or temp == b"u"
                        or temp == b"q"
                        else direction
                    )
                    print(direction)
                # else:
                #     direction = ""

                if direction == b"q":
                    game_over = True
                    self.screen.clear()
                    return
                    # break

                if direction is None:
                    print("press key to start game")
                    next(tick)
                    continue
                elif not ai:
                    current_location = (
                        current_location[0] - 1
                        if direction == b"a" or direction == b"h"
                        else current_location[0] + 1
                        if direction == b"d" or direction == b"k"
                        else current_location[0],
                        current_location[1] + 1
                        if direction == b"s" or direction == b"j"
                        else current_location[1] - 1
                        if direction == b"w" or direction == b"u"
                        else current_location[1],
                    )
                else:
                    if len(snek_path) == 0:
                        print("ran out, try search again")
                        game_state.snek_parts = deepcopy(snek_list[:-1])
                        snek_path = snek_ai.run_Search2(
                            current_location[0],
                            current_location[1],
                            current_food_location,
                            game_state,
                            snek_length,
                        )
                    current_location = snek_path.pop(0)
                    # game_state.add_snake_part(current_location)
                    game_state.add_snake_part2(current_location)

                # check food situation
                if current_food_location == current_location:
                    snek_length += 1

                    if mqtt_client.connected:
                        mqtt_client.publish(topic=SCORE_TOPIC, payload=snek_length)
                    else:
                        logger.info("MQTT Client is not connected so skipping publications.")

                    # temp = current_food_location
                    current_food_location = get_new_food_location()
                    # print("new food location", current_food_location)
                    # draw food
                    self.screen.draw_pixel(
                        current_food_location[0], current_food_location[1], 15
                    )
                    self.screen.draw_text(6, 0, str(snek_length).zfill(3))
                    
                snek_list.append(current_location)
                if len(snek_list) > snek_length:
                    self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
                    temp = snek_list.pop(0)
                    # if ai:
                    #     # game_state.del_snake_part(temp)
                    #     game_state.del_snake_part2()

                # print(direction, current_location)
                # check to make sure snek isn't in the weeds
                if (
                    current_location[0] >= self.screen.x_width
                    or current_location[0] < 0
                    or current_location[1] >= self.screen.y_height
                    or current_location[1] < 4
                    or current_location in snek_list[:-1]
                ):
                    print(
                        "\nSnake:",
                        snek_list,
                        # "\nPATH:",
                        # snek_path,
                        "\nCurrent location:",
                        current_location,
                    )
                    print("killed itself")
                    game_over = True

                    if mqtt_client.connected:
                        mqtt_client.publish(topic=LIFE_TOPIC, payload="Game Over")
                    else:
                        logger.info("MQTT Client is not connected so skipping publications.")

                    continue

                # draw snek part
                self.screen.draw_pixel(current_location[0], current_location[1], 15)
                # self.screen.draw_pixel(current_food_location[0],current_food_location[1],15)
                # print(snek_length, current_location, current_food_location)
                self.screen.push()
            # if not ai:
            #     termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

            for i in snek_list[:-1]:
                self.screen.draw_pixel(i[0], i[1], 0)
            self.screen.draw_pixel(current_food_location[0], current_food_location[1], 0)
            self.screen.draw_text(
                self.screen.x_width // 2 - 4, self.screen.y_height // 2 - 2, "GAME OVER"
            )
            if snek_length > h_score:
                self.screen.draw_text(
                    self.screen.x_width // 2 - 6,
                    self.screen.y_height // 2,
                    "H-SCORE " + str(snek_length).zfill(3),
                )
                h_score = snek_length
                with open(
                    "games/snake/ai_high_score.txt", "w"
                ) as scores:
                    scores.write(str(h_score))
                self.screen.draw_text(self.screen.x_width - 3, 0, str(snek_length).zfill(3))
            else:
                self.screen.draw_text(
                    self.screen.x_width // 2 - 6,
                    self.screen.y_height // 2,
                    "SCORE " + str(snek_length).zfill(3),
                )
            self.screen.push()
            

            # draw snek part
            self.screen.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
            # draw food
            self.screen.draw_pixel(
                current_food_location[0], current_food_location[1], 15, push=True
            )

        self.screen.clear()


    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

    def generate_game_state2(width, height, start_loc, food_loc):
        game_state = snek_state.snek_state(width, height)
        game_state.add_snake_part2(start_loc)
        game_state.add_food2(food_loc)
        return game_state

