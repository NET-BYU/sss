import sys, keyboard

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
from time import sleep


def checkboard_screensaver(screen, queue):
    print("CHECKERBOARD")

    input_ = ""

    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)

        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)

    screen.clear()
