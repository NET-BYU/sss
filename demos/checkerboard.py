import sys, keyboard
sys.path.append('..')

from lib import seven_seg as ss # import SevenSegment
from lib import game_display as gd # import Display
from time import sleep

bright = 1

panel = ss.SevenSegment(
    num_digits=96,
    cs_num=2,
    brightness=bright,
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
    brightness=bright,
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
    brightness=bright,
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
    brightness=bright,
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
    brightness=bright,
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
    brightness=bright,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

screen = gd.Display([[panel, panel2, panel3],[panel4, panel5, panel6]], 48, 24)

def checkboard_screensaver(queue):
    print("CHECKERBOARD")

    input_ = ""

    while input_ != b"q" :

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        print(input_)

        # screen.board_object.clear()
        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
        screen.push()
        sleep(.1)
        # screen.board_object.clear()
        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
        screen.push()
        sleep(.1)

    screen.clear()

    