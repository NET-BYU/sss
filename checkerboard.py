from seven_seg import SevenSegment
from game_display import Display
from time import sleep

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

screen = Display([[panel, panel2, panel3],[panel4, panel5, panel6]], 48, 24)

def checkboard_screensaver():

    while True:
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

def main():
    checkboard_screensaver()

if __name__ == "__main__":
    main()
    