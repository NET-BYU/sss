import sys
from numpy.core.defchararray import zfill

sys.path.append("../..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import random
import time
from copy import deepcopy
from itertools import count
from loguru import logger

LIFE_TOPIC = "byu_sss/output/lives"
SCORE_TOPIC = "byu_sss/output/score"
# MQTT_HOST = "aq.byu.edu"
# MQTT_PORT = 8883
# MQTT_USERNAME = "sss"
# MQTT_PASSWORD = "***REMOVED***"
# MQTT_CERT = "/etc/ssl/certs/ca-certificates.crt"
# import tty, sys, termios, select

# import snek_ai, snek_state
from games.snake import snek_ai, snek_state


def frameRate(fps):
    period = 1.0 / fps
    nextTime = time.time() + period
    for i in count():
        now = time.time()
        toSleep = nextTime - now
        if toSleep > 0:
            time.sleep(toSleep)
            nextTime += period
        else:
            nextTime = now + period
        yield i, nextTime


# def isData():
#     return select.select([sys.stdin], [], [], 0) == ([sys.stdin], [], [])


def generate_game_state(width, height, start_loc, food_loc):
    game_state = snek_state.snek_state(width, height)
    game_state.add_snake_part(start_loc)
    game_state.add_food(food_loc)
    return game_state


def generate_game_state2(width, height, start_loc, food_loc):
    game_state = snek_state.snek_state(width, height)
    game_state.add_snake_part2(start_loc)
    game_state.add_food2(food_loc)
    return game_state


def snek_game(display, queue, mqtt_client, fps=10, ai=False):
    game_over = False
    display.clear()
    tick = frameRate(fps)
    current_location = (display.x_width // 2, display.y_height // 2)
    snek_list = [current_location]
    snek_length = 1
    h_score = 0
    with open("games/snake/ai_high_score.txt", "r") as scores:
        h_score = int(scores.read())

    def get_new_food_location():
        food_location = (
            round(random.randrange(0, display.x_width - 1)),
            round(random.randrange(4, display.y_height - 1)),
        )
        while food_location in snek_list:
            food_location = (
                round(random.randrange(0, display.x_width - 1)),
                round(random.randrange(4, display.y_height - 1)),
            )
        # print(food_location)
        return food_location

    current_food_location = get_new_food_location()

    direction = None
    if ai:
        logger.info("Run snake AI")
        # game_state = generate_game_state(
        #     display.x_width, display.y_height, current_location, current_food_location
        # )
        game_state = generate_game_state2(
            display.x_width, display.y_height, current_location, current_food_location
        )
        direction = "ai"
        snek_path = snek_ai.run_Search2(
            current_location[0],
            current_location[1],
            current_food_location,
            game_state,
            snek_length,
        )
        # print(snek_path)

    # draw snek part
    display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
    # draw food
    display.draw_pixel(
        current_food_location[0], current_food_location[1], 15, push=True
    )

    # draw banner at the top
    display.draw_hline(0, 2, display.x_width, push=True)
    display.draw_hline(0, 3, display.x_width, push=True)
    display.draw_text(0, 0, "SCORE 000")
    display.draw_text(display.x_width - 3 - 8, 0, "H-SCORE " + str(h_score).zfill(3))
    display.draw_text(display.x_width // 2 - 2, 0, "SNAKE", push=True)

    while True:
        # if not ai:
        #     old_settings = termios.tcgetattr(sys.stdin)
        try:
            if mqtt_client.connected:
                mqtt_client.publish(topic=SCORE_TOPIC, payload=snek_length)
                mqtt_client.publish(topic=LIFE_TOPIC, payload=1)
            else:
                logger.info("MQTT Client is not connected so skipping publications.")

            # if not ai:
            #     tty.setcbreak(sys.stdin.fileno())

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
                    display.clear()
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
                    display.draw_pixel(
                        current_food_location[0], current_food_location[1], 15
                    )
                    display.draw_text(6, 0, str(snek_length).zfill(3))
                    if ai:
                        if snek_length > 200:
                            game_over = True
                            continue
                        # game_state.del_food(temp)
                        # game_state.add_food(current_food_location)
                        game_state.add_food2(current_food_location)
                        # snek_path = snek_ai.run_Search(
                        #     current_location[0],
                        #     current_location[1],
                        #     current_food_location,
                        #     game_state,
                        #     snek_length,
                        # )
                        game_state.snek_parts = deepcopy(snek_list)
                        # print("list:", snek_list)
                        snek_path = snek_ai.run_Search2(
                            current_location[0],
                            current_location[1],
                            current_food_location,
                            game_state,
                            snek_length,
                        )
                        # print(
                        #     "brand new path:", snek_path, "\nwith snake at:", snek_list
                        # )
                        if snek_path is None or len(snek_path) == 0:
                            print("Path was zero, no solution?")
                            game_over = True

                snek_list.append(current_location)
                if len(snek_list) > snek_length:
                    display.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
                    temp = snek_list.pop(0)
                    # if ai:
                    #     # game_state.del_snake_part(temp)
                    #     game_state.del_snake_part2()

                # print(direction, current_location)
                # check to make sure snek isn't in the weeds
                if (
                    current_location[0] >= display.x_width
                    or current_location[0] < 0
                    or current_location[1] >= display.y_height
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
                display.draw_pixel(current_location[0], current_location[1], 15)
                # display.draw_pixel(current_food_location[0],current_food_location[1],15)
                # print(snek_length, current_location, current_food_location)
                display.push()
                next(tick)
        except Exception as e:
            print("error occurred")
            print(e)
        finally:
            pass
            # if not ai:
            #     termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

        for i in snek_list[:-1]:
            display.draw_pixel(i[0], i[1], 0)
        display.draw_pixel(current_food_location[0], current_food_location[1], 0)
        display.draw_text(
            display.x_width // 2 - 4, display.y_height // 2 - 2, "GAME OVER"
        )
        if snek_length > h_score:
            display.draw_text(
                display.x_width // 2 - 6,
                display.y_height // 2,
                "H-SCORE " + str(snek_length).zfill(3),
            )
            h_score = snek_length
            with open(
                "games/snake/ai_high_score.txt", "w"
            ) as scores:
                scores.write(str(h_score))
            display.draw_text(display.x_width - 3, 0, str(snek_length).zfill(3))
        else:
            display.draw_text(
                display.x_width // 2 - 6,
                display.y_height // 2,
                "SCORE " + str(snek_length).zfill(3),
            )
        display.push()
        # if game_over:
        #     return
        time.sleep(5)
        print("\n\n\nNEW GAME")
        start_sweep_x = display.x_width // 2 - 1
        for i in range(start_sweep_x + 1):
            display.draw_shape_line(
                start_sweep_x - i, 4, start_sweep_x - i, display.y_height - 1, 15
            )
            display.draw_shape_line(
                start_sweep_x + i + 1,
                4,
                start_sweep_x + i + 1,
                display.y_height - 1,
                15,
            )
            if i > 0:
                display.draw_shape_line(
                    start_sweep_x - i + 1,
                    4,
                    start_sweep_x - i + 1,
                    display.y_height - 1,
                    0,
                )
                display.draw_shape_line(
                    start_sweep_x + i,
                    4,
                    start_sweep_x + i,
                    display.y_height - 1,
                    0,
                )
            display.push()
            next(tick)
        display.draw_shape_line(0, 4, 0, display.y_height - 1, 0)
        display.draw_shape_line(
            display.x_width - 1,
            4,
            display.x_width - 1,
            display.y_height - 1,
            0,
        )
        game_over = False
        snek_length = 1
        current_food_location = get_new_food_location()
        current_location = (display.x_width // 2, display.y_height // 2)
        snek_list = [current_location]
        if ai:
            # game_state = generate_game_state(
            #     display.x_width,
            #     display.y_height,
            #     current_location,
            #     current_food_location,
            # )
            game_state = generate_game_state2(
                display.x_width,
                display.y_height,
                current_location,
                current_food_location,
            )
            direction = "ai"
            # print(current_location, current_food_location)
            # snek_path = snek_ai.run_Search(
            #     current_location[0],
            #     current_location[1],
            #     current_food_location,
            #     game_state,
            #     snek_length,
            # )
            snek_path = snek_ai.run_Search2(
                current_location[0],
                current_location[1],
                current_food_location,
                game_state,
                snek_length,
            )
        else:
            break

        # draw snek part
        display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
        # draw food
        display.draw_pixel(
            current_food_location[0], current_food_location[1], 15, push=True
        )

    display.clear()


def snek_ai_game(screen, queue, client):
    snek_game(screen, queue, client, ai=True)


# if __name__ == "__main__":
#     snek_game(screen)
