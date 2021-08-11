import sys

from numpy.core.defchararray import zfill

sys.path.append("../..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import random
import time
from copy import deepcopy
from itertools import count
import tty, sys, termios, select

import snek_ai, snek_state


panel = ss.SevenSegment(
    num_digits=96,
    cs_num=2,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel2 = ss.SevenSegment(
    num_digits=96,
    cs_num=3,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel3 = ss.SevenSegment(
    num_digits=96,
    cs_num=4,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel6 = ss.SevenSegment(
    num_digits=96,
    cs_num=5,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel5 = ss.SevenSegment(
    num_digits=96,
    cs_num=9,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel4 = ss.SevenSegment(
    num_digits=96,
    cs_num=10,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

screen = gd.Display([[panel, panel2, panel3], [panel4, panel5, panel6]], 48, 24)


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


def isData():
    return select.select([sys.stdin], [], [], 0) == ([sys.stdin], [], [])


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


def snek_game(display, period, ai=False):
    game_over = False
    display.clear()
    tick = frameRate(period)
    current_location = (display.x_width // 2, display.y_height // 2)
    snek_list = [current_location]
    snek_length = 1
    h_score = 0
    with open("ai_high_score.txt", "r") as scores:
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
        # game_state = generate_game_state(
        #     display.x_width, display.y_height, current_location, current_food_location
        # )
        game_state = generate_game_state2(
            display.x_width, display.y_height, current_location, current_food_location
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
        if not ai:
            old_settings = termios.tcgetattr(sys.stdin)
        try:
            if not ai:
                tty.setcbreak(sys.stdin.fileno())

            while not game_over:
                # check keyboard press and generate new snake part
                if isData():
                    c = sys.stdin.read(1)
                    while c == direction and isData():
                        c = sys.stdin.read(1)
                    if c == "a":
                        direction = "a"
                    if c == "w":
                        direction = "w"
                    if c == "d":
                        direction = "d"
                    if c == "s":
                        direction = "s"
                if direction is None:
                    print("press key to start game")
                    next(tick)
                    continue
                elif not ai:
                    current_location = (
                        current_location[0] - 1
                        if direction == "a"
                        else current_location[0] + 1
                        if direction == "d"
                        else current_location[0],
                        current_location[1] + 1
                        if direction == "s"
                        else current_location[1] - 1
                        if direction == "w"
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
                    or current_location[1] < 3
                    or current_location in snek_list[:-1]
                ):
                    print(
                        "\nSnake:",
                        snek_list,
                        "\nPATH:",
                        snek_path,
                        "\nCurrent location:",
                        current_location,
                    )
                    print("killed itself")
                    game_over = True
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

            if not ai:
                termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

        for i in snek_list:
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
            with open("ai_high_score.txt", "w") as scores:
                scores.write(str(h_score))
            display.draw_text(display.x_width - 3, 0, str(snek_length).zfill(3))
        else:
            display.draw_text(
                display.x_width // 2 - 6,
                display.y_height // 2,
                "SCORE " + str(snek_length).zfill(3),
            )
        display.push()
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
            # print(snek_path)

        # draw snek part
        display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
        # draw food
        display.draw_pixel(
            current_food_location[0], current_food_location[1], 15, push=True
        )


if __name__ == "__main__":
    snek_game(screen, 10, True)
