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

def byu_netlab_lines():
    clear_screen()

def byu_netlab():
    screen.draw_pixel(23, 2, 0xf, combine=False)
    screen.draw_pixel(24, 2, 0xf, combine=False)

    screen.draw_pixel(23, 22, 0xf, combine=False)
    screen.draw_pixel(24, 22, 0xf, combine=False)

    screen.draw_pixel(21, 3, 0xf, combine=False)
    screen.draw_pixel(19, 4, 0xf, combine=False)
    screen.draw_pixel(17, 5, 0xf, combine=False)
    screen.draw_pixel(15, 6, 0xf, combine=False)

    screen.draw_pixel(26, 3, 0xf, combine=False)
    screen.draw_pixel(28, 4, 0xf, combine=False)
    screen.draw_pixel(30, 5, 0xf, combine=False)
    screen.draw_pixel(32, 6, 0xf, combine=False)

    screen.draw_pixel(21, 21, 0xf, combine=False)
    screen.draw_pixel(19, 20, 0xf, combine=False)
    screen.draw_pixel(17, 19, 0xf, combine=False)
    screen.draw_pixel(15, 18, 0xf, combine=False)

    screen.draw_pixel(26, 21, 0xf, combine=False)
    screen.draw_pixel(28, 20, 0xf, combine=False)
    screen.draw_pixel(30, 19, 0xf, combine=False)
    screen.draw_pixel(32, 18, 0xf, combine=False)

    for line in range(11):
        screen.draw_pixel(15, 6 + line, 0xf, combine=True)
        screen.draw_pixel(32, 6 + line, 0xf, combine=True)

    # Text

    for n in range(5):
        screen.draw_pixel(17, 7 + n, 0xf, combine=True)
        screen.draw_pixel(20, 7 + n, 0xf, combine=True)
    screen.draw_pixel(18, 8, 0xf, combine=True)
    screen.draw_pixel(19, 9, 0xf, combine=True)

    for e in range(5):
        screen.draw_pixel(22, 7 + e, 0xf, combine=True)
    
    for ee in range(3):
        screen.draw_pixel(23 + ee, 7, 0xf, combine=True)
        screen.draw_pixel(23 + ee, 9, 0xf, combine=True)
        screen.draw_pixel(23 + ee, 11, 0xf, combine=True)

    for t in range(4):
        screen.draw_pixel(27 + t, 7, 0xf, combine=True)
        screen.draw_pixel(28, 8 + t, 0xf, combine=True)

    for l in range(5):
        screen.draw_pixel(17, 13 + l, 0xf, combine=True)

    for ll in range(3):
        screen.draw_pixel(18 + ll, 17, 0xf, combine=True)

    for a in range(5):
        screen.draw_pixel(22, 13 + a, 0xf, combine=True)
        screen.draw_pixel(25, 13 + a, 0xf, combine=True)

    for aa in range(2):
        screen.draw_pixel(23 + aa, 13, 0xf, combine=True)
        screen.draw_pixel(23 + aa, 15, 0xf, combine=True)

    for b in range(5):
        screen.draw_pixel(27, 13 + b, 0xf, combine=True)

    for bb in range(3):
        screen.draw_pixel(28 + bb, 15, 0xf, combine=True)
        screen.draw_pixel(28 + bb, 17, 0xf, combine=True)

    for bbb in range(2):
        screen.draw_pixel(28 + bbb, 13, 0xf, combine=True)    
    screen.draw_pixel(30, 16, 0xf)
    screen.draw_pixel(30, 14, 0xf)

    while True:
        for x in range(13):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)

        for x in range(35, screen.x_width):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
        screen.push()
        sleep(.1)
        # screen.board_object.clear()
        for x in range(13):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)

        for x in range(35, screen.x_width):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 3:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
                else:
                    if x % 3 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=False)
        screen.push()
        sleep(.1)

def main():
    byu_netlab()

if __name__ == "__main__":
    main()
    