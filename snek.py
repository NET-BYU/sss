from seven_seg import SevenSegment
from game_display import Display
import random
import time
from itertools import count
import tty, sys, termios, select


panel = SevenSegment(
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

panel2 = SevenSegment(
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

panel3 = SevenSegment(
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

panel6 = SevenSegment(
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

panel5 = SevenSegment(
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

panel4 = SevenSegment(
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

screen = Display([[panel, panel2, panel3], [panel4, panel5, panel6]], 48, 24)


def frameRate(period):
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
    tick = frameRate(period)
    current_location = [display.x_width // 2, display.y_height // 2]
    snek_list = [current_location]
    snek_length = 1

    def get_new_food_location():
        food_location = [
            round(random.randrange(0, display.x_width)),
            round(random.randrange(0, display.x_width)),
        ]
        while food_location in snek_list:
            food_location = [
                round(random.randrange(0, display.x_width)),
                round(random.randrange(0, display.x_width)),
            ]
        return food_location

    current_food_location = get_new_food_location()

    # draw snek part
    display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
    # draw food
    display.draw_pixel(current_food_location[0], current_food_location[1])
    direction = None
    old_settings = termios.tcgetattr(sys.stdin)
    try:
        tty.setcbreak(sys.stdin.fileno())

        while not game_over:
            # check keyboard press and generate new snake part
            if isData():
                c = sys.stdin.read(1)
                if c == "a":
                    direction = "left"
                if c == "w":
                    direction = "up"
                if c == "d":
                    direction = "right"
                if c == "s":
                    direction = "down"
            if direction is None:
                continue
            print(direction)
            # check to make sure snek isn't in the weeds
            if (
                current_location[0] >= display.x_width
                or current_location[0] < 0
                or current_location[1] >= display.y_height
                or current_location[1] < 0
            ):
                game_over = True
                continue

            # check food situation
            if current_food_location == current_location:
                snek_length += 1
                current_food_location = get_new_food_location()
                # draw food
                display.draw_pixel(current_food_location[0], current_food_location[1])

            # draw snek part
            display.draw_pixel(current_food_location[0], current_food_location[1])
            snek_list.append(current_location)
            if len(snek_list) > snek_length:
                display.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
                snek_list.pop(0)
            next(tick)
    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)


if __name__ == "__main__":
    snek_game(screen, 1)
