import random
import sys
from time import sleep

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display


# panel = ss.SevenSegment(
#     num_digits=96,
#     cs_num=2,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel2 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=3,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel3 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=4,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel6 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=5,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel5 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=9,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel4 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=10,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )
# screen = None
# screen = gd.Display([[panel, panel2, panel3], [panel4, panel5, panel6]], 48, 24)


def init(density=5):
    for x in range(0, screen.x_width):
        for y in range(0, screen.y_height):
            if random.randrange(0, 10) > density:
                screen.draw_pixel(x, y, 0xF)

    screen.push()


def check_alive(x, y):
    alive = bool(screen.get_pixel(x, y))
    neighbors_alive = 0

    if x > 0:
        neighbors_alive += bool(screen.get_pixel(x - 1, y))
    if (x + 1) < screen.x_width:
        neighbors_alive += bool(screen.get_pixel(x + 1, y))
    if y > 0:
        neighbors_alive += bool(screen.get_pixel(x, y - 1))
    if (y + 1) < screen.y_height:
        neighbors_alive += bool(screen.get_pixel(x, y + 1))

    if x > 0 and y > 0:
        neighbors_alive += bool(screen.get_pixel(x - 1, y - 1))
    if x > 0 and (y + 1) < screen.y_height:
        neighbors_alive += bool(screen.get_pixel(x - 1, y + 1))
    if (x + 1) < screen.x_width and y > 0:
        neighbors_alive += bool(screen.get_pixel(x + 1, y - 1))
    if (x + 1) < screen.x_width and (y + 1) < screen.y_height:
        neighbors_alive += bool(screen.get_pixel(x + 1, y - 1))

    if alive:
        if neighbors_alive < 2 or neighbors_alive > 3:
            return False
        else:
            return True
    else:
        if neighbors_alive == 3:
            return True
        else:
            return False


def loop():
    for x in range(0, screen.x_width):
        for y in range(0, screen.y_height):
            alive = check_alive(x, y)
            if alive:
                screen.draw_pixel(x, y, 0xF)
            else:
                screen.draw_pixel(x, y, 0x0)
    screen.push()
    print("Loop")


def game_of_life(display, queue, refresh=10000):
    global screen
    screen = display
    init()

    while True:
        sleep(1 / refresh)
        loop()


# if __name__ == "__main__":
#     main()
