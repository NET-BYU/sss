import sys

sys.path.append("../..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import paho.mqtt.publish as publish

SCREEN_Y = 24
SCREEN_X = 48
ARENA_START = 14
ARENA_END = 48 - 15
LEFT_KEY = 0x61
RIGHT_KEY = 0x64
QUIT_KEY = 0x71
LEFT_BRICK = 0x7
RIGHT_BRICK = 0xD
PIXEL_ON = 0xF
PIXEL_OFF = 0x0
BALL_SPEED = 500

gameover = False
repeatRight = False
repeatLeft = False
speed = BALL_SPEED
paddle_speed = BALL_SPEED // 4
paddle = [23, 24, 25]
ball = [SCREEN_X // 2, SCREEN_Y // 2]
bricks = {}
score = 0
counter = 0
isLeft = True
isDown = True
level = 4
lives = 3
line_left = 13
line_right = (48 - 14)
rows = level + 2
screen = ""


def update_lives(inc):
    global lives
    lives += inc


def clear_screen():
    for board in screen.board_objects:
        board.clear()


def fill_bricks():

    global line_left, line_right, rows, level

    if level % 2 == 0:
        for pix in range(screen.y_height):
            screen.draw_pixel(line_left, pix, 0x0)
            screen.draw_pixel(line_right, pix, 0x0)
        line_left = 13 - level
        line_right = (screen.x_width - 14) + level
    else:
        rows = level + 2

    screen.draw_vline(line_left, 0, screen.y_height, left=False)
    screen.draw_vline(line_right, 0, screen.y_height)

    for row in range(rows):
        bricks[row] = []
        for brick in range(line_left + 1, line_right):
            bricks[row].append(brick)

    for row in bricks.keys():
        for brick in bricks[row]:
            if not brick % 2:
                screen.draw_pixel(brick, row, LEFT_BRICK)
            else:
                screen.draw_pixel(brick, row, RIGHT_BRICK)

    screen.push()


def level_up():
    for rows in bricks.values():
        if rows:
            return False
    return True


def breakout(screen_g, command_queue):

    print("BREAKOUT")

    global isLeft, isDown, counter, lives, speed, repeatLeft, repeatRight, screen, level, score, line_left, line_right

    screen = screen_g

    fill_bricks()

    screen.draw_pixel(ball[0], ball[1], PIXEL_ON, combine=False)
    for val in paddle:
        screen.draw_pixel(val, 23, PIXEL_ON, combine=False)

    screen.push()

    score = 0
    lives = 3

    publish.single(
        "byu_sss/output/score",
        score,
        hostname="aq.byu.edu",
        port=8883,
        auth={"username": "sss", "password": "***REMOVED***"},
        tls={"ca_certs": "/etc/ssl/certs/ca-certificates.crt"},
    )
    publish.single(
        "byu_sss/output/lives",
        lives,
        hostname="aq.byu.edu",
        port=8883,
        auth={"username": "sss", "password": "***REMOVED***"},
        tls={"ca_certs": "/etc/ssl/certs/ca-certificates.crt"},
    )

    while not gameover:

        if not command_queue.empty():
            input_ = command_queue.get(block=False)
        else:
            input_ = ""

        if input_ == b"h":
            repeatLeft = True
        elif input_ == b"hh":
            repeatLeft = False
        elif input_ == b"k":
            repeatRight = True
        elif input_ == b"kk":
            repeatRight = False

        if repeatLeft:
            input_ = b"a"
        elif repeatRight:
            input_ = b"d"

        if input_ == b"q":
            break

        counter += 1
        if counter >= speed:

            counter = 0

            if ball[1] <= level + 2:
                row = ball[1]
                if row in bricks.keys():
                    if ball[0] in bricks[row]:
                        isDown = not isDown
                        score += 5
                        publish.single(
                            "byu_sss/output/score",
                            score,
                            hostname="aq.byu.edu",
                            port=8883,
                            auth={"username": "sss", "password": "***REMOVED***"},
                            tls={"ca_certs": "/etc/ssl/certs/ca-certificates.crt"},
                        )
                        bricks[row].remove(ball[0])
                        screen.draw_pixel(ball[0], row, PIXEL_OFF)
                        if not ball[0] % 2:
                            bricks[row].remove(ball[0] + 1)
                            screen.draw_pixel(ball[0] + 1, row, PIXEL_OFF)
                        else:
                            bricks[row].remove(ball[0] - 1)
                            screen.draw_pixel(ball[0] - 1, row, PIXEL_OFF)
                if level_up():
                    score += 100
                    level += 1
                    if lives <= 4:
                        lives += 1
                        publish.single(
                            "byu_sss/output/lives",
                            lives,
                            hostname="aq.byu.edu",
                            port=8883,
                            auth={"username": "sss", "password": "***REMOVED***"},
                            tls={"ca_certs": "/etc/ssl/certs/ca-certificates.crt"},
                        )
                    fill_bricks()

            screen.draw_pixel(ball[0], ball[1], PIXEL_OFF)

            # Bounds check for ball
            if ball[0] == line_left + 1:
                isLeft = False
            if ball[0] == line_right - 1:
                isLeft = True
            if ball[1] == 0:
                isDown = True
            if ball[1] == 22:
                if ball[0] in paddle:
                    isDown = False
            if ball[1] == 23:
                isDown = False
                score -= score // 2
                # update_lives(-1)
                # screen.draw_pixel(ball[0], ball[1], PIXEL_OFF, combine=False)
                # if lives == 0:
                #     gameover = True
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

            if input_ == b"a":
                if paddle[0] == line_left + 1:
                    continue
                for val in range(len(paddle)):
                    paddle[val] -= 1
                screen.draw_pixel(paddle[0], 23, PIXEL_ON, combine=False)
                screen.draw_pixel(paddle[-1] + 1, 23, PIXEL_OFF, combine=False)

            if input_ == b"d":
                if paddle[-1] == line_right - 1:
                    continue
                for val in range(len(paddle)):
                    paddle[val] += 1
                screen.draw_pixel(paddle[0] - 1, 23, PIXEL_OFF, combine=False)
                screen.draw_pixel(paddle[-1], 23, PIXEL_ON, combine=False)

        # Handle the ball
        screen.draw_pixel(ball[0], ball[1], PIXEL_ON)

        screen.push()
