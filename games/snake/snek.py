import sys
sys.path.append('../..')

from lib import seven_seg as ss # import SevenSegment
from lib import game_display as gd # import Display
import random
import time
from itertools import count
import tty, sys, termios, select


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


def snek_game(display, period):
    game_over = False
    display.clear()
    tick = frameRate(period)
    current_location = [display.x_width // 2, display.y_height // 2]
    snek_list = [current_location]
    snek_length = 1

    def get_new_food_location():
        food_location = [
            round(random.randrange(0, display.x_width)),
            round(random.randrange(0, display.y_height)),
        ]
        while food_location in snek_list:
            food_location = [
                round(random.randrange(0, display.x_width)),
                round(random.randrange(0, display.y_height)),
            ]
        print(food_location)
        return food_location

    current_food_location = get_new_food_location()

    # draw snek part
    display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
    # draw food
    display.draw_pixel(
        current_food_location[0], current_food_location[1], 15, push=True
    )
    direction = None
    old_settings = termios.tcgetattr(sys.stdin)
    try:
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

            current_location = [
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
            ]
            print(direction, current_location)
            # check to make sure snek isn't in the weeds
            if (
                current_location[0] >= display.x_width
                or current_location[0] < 0
                or current_location[1] >= display.y_height
                or current_location[1] < 0
                or current_location in snek_list
            ):
                game_over = True
                continue

            # check food situation
            if current_food_location == current_location:
                snek_length += 1
                current_food_location = get_new_food_location()
                # draw food
                display.draw_pixel(
                    current_food_location[0], current_food_location[1], 15
                )

            # draw snek part
            display.draw_pixel(current_location[0], current_location[1], 15)
            snek_list.append(current_location)
            if len(snek_list) > snek_length:
                display.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
                snek_list.pop(0)
            display.push()
            next(tick)
    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)


if __name__ == "__main__":
    snek_game(screen, 4)
