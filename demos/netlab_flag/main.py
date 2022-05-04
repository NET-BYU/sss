import sys

sys.path.append("..")

from display import seven_seg as ss  # import SevenSegment
from display import game_display as gd  # import Display
from time import sleep


def byu_netlab(screen, queue, mqtt_client):

    print("NET LAB FLAG")

    screen.draw_pixel(23, 2, 0xF, combine=False)
    screen.draw_pixel(24, 2, 0xF, combine=False)

    screen.draw_pixel(23, 22, 0xF, combine=False)
    screen.draw_pixel(24, 22, 0xF, combine=False)

    screen.draw_pixel(21, 3, 0xF, combine=False)
    screen.draw_pixel(19, 4, 0xF, combine=False)
    screen.draw_pixel(17, 5, 0xF, combine=False)
    screen.draw_pixel(15, 6, 0xF, combine=False)

    screen.draw_pixel(26, 3, 0xF, combine=False)
    screen.draw_pixel(28, 4, 0xF, combine=False)
    screen.draw_pixel(30, 5, 0xF, combine=False)
    screen.draw_pixel(32, 6, 0xF, combine=False)

    screen.draw_pixel(21, 21, 0xF, combine=False)
    screen.draw_pixel(19, 20, 0xF, combine=False)
    screen.draw_pixel(17, 19, 0xF, combine=False)
    screen.draw_pixel(15, 18, 0xF, combine=False)

    screen.draw_pixel(26, 21, 0xF, combine=False)
    screen.draw_pixel(28, 20, 0xF, combine=False)
    screen.draw_pixel(30, 19, 0xF, combine=False)
    screen.draw_pixel(32, 18, 0xF, combine=False)

    for line in range(11):
        screen.draw_pixel(15, 6 + line, 0xF, combine=True)
        screen.draw_pixel(32, 6 + line, 0xF, combine=True)

    # Text

    for n in range(5):
        screen.draw_pixel(17, 7 + n, 0xF, combine=True)
        screen.draw_pixel(20, 7 + n, 0xF, combine=True)
    screen.draw_pixel(18, 8, 0xF, combine=True)
    screen.draw_pixel(19, 9, 0xF, combine=True)

    for e in range(5):
        screen.draw_pixel(22, 7 + e, 0xF, combine=True)

    for ee in range(3):
        screen.draw_pixel(23 + ee, 7, 0xF, combine=True)
        screen.draw_pixel(23 + ee, 9, 0xF, combine=True)
        screen.draw_pixel(23 + ee, 11, 0xF, combine=True)

    for t in range(4):
        screen.draw_pixel(27 + t, 7, 0xF, combine=True)
        screen.draw_pixel(28, 8 + t, 0xF, combine=True)

    for l in range(5):
        screen.draw_pixel(17, 13 + l, 0xF, combine=True)

    for ll in range(3):
        screen.draw_pixel(18 + ll, 17, 0xF, combine=True)

    for a in range(5):
        screen.draw_pixel(22, 13 + a, 0xF, combine=True)
        screen.draw_pixel(25, 13 + a, 0xF, combine=True)

    for aa in range(2):
        screen.draw_pixel(23 + aa, 13, 0xF, combine=True)
        screen.draw_pixel(23 + aa, 15, 0xF, combine=True)

    for b in range(5):
        screen.draw_pixel(27, 13 + b, 0xF, combine=True)

    for bb in range(3):
        screen.draw_pixel(28 + bb, 15, 0xF, combine=True)
        screen.draw_pixel(28 + bb, 17, 0xF, combine=True)

    for bbb in range(2):
        screen.draw_pixel(28 + bbb, 13, 0xF, combine=True)
    screen.draw_pixel(30, 16, 0xF)
    screen.draw_pixel(30, 14, 0xF)

    input_ = ""

    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        for x in range(13):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)

        for x in range(35, screen.x_width):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)
        # screen.board_object.clear()
        for x in range(13):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)

        for x in range(35, screen.x_width):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)

    screen.clear()
