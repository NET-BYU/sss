from seven_seg import SevenSegment
from game_display import Display
from time import sleep
import tty, sys, termios, select

SCREEN_Y = 24
SCREEN_X = 48
LEFT_KEY = 0x61
RIGHT_KEY = 0x64
QUIT_KEY = 0x71

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
ball = [SCREEN_X // 2, SCREEN_Y // 2]
bricks = {}
score = 0
counter = 0
isLeft = True
isDown = True
level = 1
lives = 3

def isData():
    return select.select([sys.stdin], [], [], 0) == ([sys.stdin], [], [])

def clear_screen():
    for board in screen.board_objects:
        board.clear()

def fill_bricks(level=1):

    if level < 1:
        raise ValueError("level must be greater than 1")

    for row in range(level + 2):
        bricks[row] = []
        for brick in range(SCREEN_X):
            bricks[row].append(brick)
    
    print(bricks)

    for row in bricks.keys():
        for brick in bricks[row]:
            if brick % 2 == 0:
                screen.draw_pixel(brick, row, 0x7, combine=True)
            else:
                screen.draw_pixel(brick, row, 0xd, combine=True)

    screen.push()


def breakout(speed=500):
    global isLeft, isDown, counter, lives

    fill_bricks()

    screen.draw_pixel(ball[0], ball[1], 0xf, combine=False)
    for val in paddle:
        screen.draw_pixel(val, 23, 0xf, combine=False)

    screen.push()


    old_settings = termios.tcgetattr(sys.stdin)
    try:
        tty.setcbreak(sys.stdin.fileno())

        while True:

            if isData():
                c = sys.stdin.read(1)
                
                if c == "a":
                    if paddle[0] == 0:
                        continue
                    for val in range(len(paddle)):
                        paddle[val] -= 1
                    screen.draw_pixel(paddle[0], 23, 0xf, combine=False)
                    screen.draw_pixel(paddle[2] + 1, 23, 0x0, combine=False)

                if c == "d":
                    if paddle[2] == 47:
                        continue
                    for val in range(len(paddle)):
                        paddle[val] += 1
                    screen.draw_pixel(paddle[0] - 1, 23, 0x0, combine=False)
                    screen.draw_pixel(paddle[2], 23, 0xf, combine=False)

                if c == "q":
                    print("Bye felisha")
                    break
            
            counter += 1
            if counter == speed:
                print(bricks)

                counter = 0

                # Bounds check for ball
                if ball[0] == 0:
                    isLeft = False
                if ball[0] == 47:
                    isLeft = True
                if ball[1] == 0:
                    isDown = True
                if ball[1] == 22:
                    if ball[0] in paddle:
                        isDown = False
                if ball[1] == 23:
                    isDown = False
                    # lives -= 1
                    # screen.draw_pixel(ball[0], ball[1], 0x0, combine=False)
                    # if lives == 0:
                    #     break
                    # ball[0] = SCREEN_X // 2
                    # ball[1] = SCREEN_Y // 2
                if ball[1] <= level + 3:
                    row = ball[1] - 2
                    if ball[0] in bricks[row]  :
                        isDown = True
                        bricks[row].remove(ball[0])
                        screen.draw_pixel(ball[0], row, 0x0)
                        if ball[0] % 2 == 0:
                            bricks[row].remove(ball[0] + 1)
                            screen.draw_pixel(ball[0] + 1, row, 0x0)
                        else:
                            bricks[row].remove(ball[0] - 1)
                            screen.draw_pixel(ball[0] - 1, row, 0x0)
                
                
                screen.draw_pixel(ball[0], ball[1], 0x0, combine=False)

                if isLeft:
                    ball[0] -= 1
                else:
                    ball[0] += 1
                if isDown:
                    ball[1] += 1
                else:
                    ball[1] -= 1

            # Handle the ball
            screen.draw_pixel(ball[0], ball[1], 0xf)

            screen.push()



    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

def main():
    breakout()

if __name__ == "__main__":
    main()
