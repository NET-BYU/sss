from seven_seg import SevenSegment
from game_display import Display
from time import sleep
import tty, sys, termios

# filedescriptor = termios.tcgetattr(sys.stdin)
# tty.setcbreak(sys.stdin)
# x = 0
# while 1:
#     x=sys.stdin.read(1)[0]
#     print("You pressed", x)
#     if x == "r":
#         print("If condition met")
#         break
# termios.tcsetattr(sys.stdin, termios.TCSADRAIN,filedescriptor)

SCREEN_Y = 12
SCREEN_X = 48

a = ""

# panel = SevenSegment(
#     num_digits=288,
#     cs_num=2,
#     brightness=2,
#     segment_orientation_array=[
#         [1, 2, 13, 14, 25, 26],
#         [3, 4, 15, 16, 27, 28],
#         [5, 6, 17, 18, 29, 30],
#         [7, 8, 19, 20, 31, 32],
#         [9, 10, 21, 22, 33, 34],
#         [11, 12, 23, 24, 35, 36],
#     ],
# )

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

# screen = Display([[panel]], 16, 12)
# screen = Display([[panel, panel2]], 32, 12)
# screen = Display([[panel, panel2, panel3]], 48, 12)
# screen = Display([[panel, panel2, panel3, panel4]], 64, 12)
# screen = Display([[panel, panel2, panel3, panel4, panel5]], 80, 12)
# screen = Display([[panel, panel2, panel3, panel4, panel5, panel6]], 96, 12)
screen = Display([[panel, panel2, panel3],[panel4, panel5, panel6]], 48, 24)


paddle = [23, 24, 25]
ball = (SCREEN_X / 2, SCREEN_Y / 2)
bricks = []
score = 0


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


def breakout():
    pass
    

    # while True:
    #     if keyboard.read_key() == "p":
    #         print("You pressed p")
    #         break

def main():
    # breakout()
    checkboard_screensaver()
    pass


if __name__ == "__main__":
    main()
# while True:
#     keyboard.on_press_key("p", lambda _:print("You pressed p"))
