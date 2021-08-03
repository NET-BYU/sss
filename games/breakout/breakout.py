import sys
sys.path.append('../..')

from lib import seven_seg as ss # import SevenSegment
from lib import game_display as gd # import Display
from lib import mqtt_input
from lib import subscriber as sub
from time import sleep
import tty, sys, termios, select, threading
import keyboard

SCREEN_Y = 24
SCREEN_X = 48
LEFT_KEY = 0x61
RIGHT_KEY = 0x64
QUIT_KEY = 0x71
LEFT_BRICK = 0x7
RIGHT_BRICK = 0xd
PIXEL_ON = 0xf
PIXEL_OFF = 0x0

panel = ss.SevenSegment(
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

panel2 = ss.SevenSegment(
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

panel3 = ss.SevenSegment(
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

panel6 = ss.SevenSegment(
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

panel5 = ss.SevenSegment(
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

panel4 = ss.SevenSegment(
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

screen = gd.Display([[panel, panel2, panel3],[panel4, panel5, panel6]], 48, 24)


paddle = [23, 24, 25]
ball = [SCREEN_X // 2, SCREEN_Y // 2]
bricks = {}
score = 0
counter = 0
isLeft = True
isDown = True
level = 1
lives = 3

def update_lives(inc):
    global lives
    lives+=inc

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
    
    for row in bricks.keys():
        for brick in bricks[row]:
            if not brick % 2:
                screen.draw_pixel(brick, row, LEFT_BRICK)
            else:
                screen.draw_pixel(brick, row, RIGHT_BRICK)

    screen.push()


def breakout(speed=500):

    input_data = mqtt_input.InputData()
    data_thread = threading.Thread(target=sub.run, args=([input_data],))
    data_thread.daemon = True
    data_thread.start()

    global isLeft, isDown, counter, lives

    fill_bricks()

    screen.draw_pixel(ball[0], ball[1], PIXEL_ON, combine=False)
    for val in paddle:
        screen.draw_pixel(val, 23, PIXEL_ON, combine=False)

    screen.push()


    # old_settings = termios.tcgetattr(sys.stdin)
    # try:
    #     tty.setcbreak(sys.stdin.fileno())

    while True:

        # if isData():
        # c = sys.stdin.read(1)
        # c = input_data.keypress
        
        # if c == "a":
        # if keyboard.is_pressed("a"):
        #     if paddle[0] == 0:
        #         continue
        #     for val in range(len(paddle)):
        #         paddle[val] -= 1
        #     screen.draw_pixel(paddle[0], 23, PIXEL_ON, combine=False)
        #     screen.draw_pixel(paddle[-1] + 1, 23, PIXEL_OFF, combine=False)

        # # if c == "d":
        # if keyboard.is_pressed("d"):
        #     if paddle[-1] == 47:
        #         continue
        #     for val in range(len(paddle)):
        #         paddle[val] += 1
        #     screen.draw_pixel(paddle[0] - 1, 23, PIXEL_OFF, combine=False)
        #     screen.draw_pixel(paddle[-1], 23, PIXEL_ON, combine=False)

        # if c == "q":
        if keyboard.is_pressed("q"):
            print("Bye felisha")
            break
        
        counter += 1
        if counter >= speed:

            counter = 0

            if keyboard.is_pressed("a"):
                print("left")
                if paddle[0] == 0:
                    continue
                for val in range(len(paddle)):
                    paddle[val] -= 1
                screen.draw_pixel(paddle[0], 23, PIXEL_ON, combine=False)
                screen.draw_pixel(paddle[-1] + 1, 23, PIXEL_OFF, combine=False)

            # if c == "d":
            if keyboard.is_pressed("d"):
                if paddle[-1] == 47:
                    continue
                for val in range(len(paddle)):
                    paddle[val] += 1
                screen.draw_pixel(paddle[0] - 1, 23, PIXEL_OFF, combine=False)
                screen.draw_pixel(paddle[-1], 23, PIXEL_ON, combine=False)

            if ball[1] <= level + 2:
                row = ball[1]
                if row in bricks.keys():
                    if ball[0] in bricks[row]:
                        isDown = not isDown
                        bricks[row].remove(ball[0])
                        screen.draw_pixel(ball[0], row, PIXEL_OFF)
                        if not ball[0] % 2:
                            bricks[row].remove(ball[0] + 1)
                            screen.draw_pixel(ball[0] + 1, row, PIXEL_OFF)
                        else:
                            bricks[row].remove(ball[0] - 1)
                            screen.draw_pixel(ball[0] - 1, row, PIXEL_OFF)                
            
            screen.draw_pixel(ball[0], ball[1], PIXEL_OFF)

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
                # update_lives(-1)
                # screen.draw_pixel(ball[0], ball[1], PIXEL_OFF, combine=False)
                # if lives == 0:
                #     break
                # ball[0] = SCREEN_X // 2
                # ball[1] = SCREEN_Y // 2

            if isLeft:
                ball[0] -= 1
            else:
                ball[0] += 1
            if isDown:
                ball[1] += 1
            else:
                ball[1] -= 1

        # Handle the ball
        screen.draw_pixel(ball[0], ball[1], PIXEL_ON)

        screen.push()



    # finally:
    #     termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)

# Test comment
def main():
    # while 1:
    #     if keyboard.is_pressed('q'):
    breakout(500)
            # print("Banana")

if __name__ == "__main__":
    main()
