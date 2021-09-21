import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display

PIXEL_FULL = 0xF
PIXEL_BOTTOM = 0x1
PIXEL_LEFT = 0x2
PIXEL_TOP = 0x4
PIXEL_RIGHT = 0x8


def construction_sign(screen):
    xmax = screen.x_width
    ymax = screen.y_height
    line = screen.draw_shape_line
    dot = screen.draw_pixel

    line(5, ymax // 2 - 10, 6, ymax // 2 - 10, PIXEL_TOP)
    line(5, ymax // 2 - 12, 6, ymax // 2 - 12, PIXEL_TOP)
    line(5, ymax // 2 - 8, 6, ymax // 2 - 8, PIXEL_BOTTOM)
    line(4, ymax // 2 - 8, 4, ymax // 2 - 10, PIXEL_RIGHT)
    line(7, ymax // 2 - 8, 7, ymax // 2 - 10, PIXEL_LEFT)
    dot(7, ymax // 2 - 12, PIXEL_RIGHT + PIXEL_TOP)
    dot(4, ymax // 2 - 12, PIXEL_LEFT + PIXEL_TOP)
    dot(8, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_LEFT)
    dot(3, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_RIGHT)
    dot(4, ymax // 2 - 6, PIXEL_TOP + PIXEL_LEFT)
    dot(3, ymax // 2 - 7, PIXEL_TOP + PIXEL_LEFT)
    dot(7, ymax // 2 - 6, PIXEL_TOP + PIXEL_RIGHT)
    dot(8, ymax // 2 - 7, PIXEL_TOP + PIXEL_RIGHT)
    line(2, ymax // 2 - 8, 2, ymax // 2 - 10, PIXEL_RIGHT)
    line(9, ymax // 2 - 8, 9, ymax // 2 - 10, PIXEL_LEFT)
    line(4, ymax // 2 - 5, 4, ymax // 2 + 5, PIXEL_RIGHT)
    line(7, ymax // 2 - 5, 7, ymax // 2 + 5, PIXEL_LEFT)
    dot(4, ymax // 2 + 6, PIXEL_TOP + PIXEL_LEFT)
    dot(3, ymax // 2 + 7, PIXEL_TOP + PIXEL_LEFT)
    dot(7, ymax // 2 + 6, PIXEL_TOP + PIXEL_RIGHT)
    dot(8, ymax // 2 + 7, PIXEL_TOP + PIXEL_RIGHT)
    line(2, ymax // 2 + 8, 2, ymax // 2 + 11, PIXEL_RIGHT)
    line(9, ymax // 2 + 8, 9, ymax // 2 + 11, PIXEL_LEFT)
    dot(3, ymax // 2 + 12, PIXEL_LEFT + PIXEL_BOTTOM)
    dot(8, ymax // 2 + 12, PIXEL_RIGHT + PIXEL_BOTTOM)
    dot(4, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
    dot(7, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
    line(4, ymax // 2 + 8, 4, ymax // 2 + 11, PIXEL_RIGHT)
    line(7, ymax // 2 + 8, 7, ymax // 2 + 11, PIXEL_LEFT)
    line(5, ymax // 2 + 7, 6, ymax // 2 + 7, PIXEL_BOTTOM)

    screen.draw_text(16, 12, "UNDER")
    screen.draw_text(16, 16, "CONSTRUCTION")
    screen.push()


def under_construction(screen, queue):
    print("UNDER CONSTRUCTION")

    construction_sign(screen)

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

    screen.clear()
