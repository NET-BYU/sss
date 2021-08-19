import sys

sys.path.append("../..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import paho.mqtt.publish as publish

SCREEN_X = 48
ARENA_START = 14
ARENA_END = ARENA_START - 15
LEFT_KEY = 0x61
RIGHT_KEY = 0x64
QUIT_KEY = 0x71
LEFT_BRICK = 0x7
RIGHT_BRICK = 0xD
PIXEL_ON = 0xF
PIXEL_OFF = 0x0
BALL_SPEED = 600
SCORE_INC = 5
LIFE_TOPIC = "byu_sss/output/lives"
SCORE_TOPIC = "byu_sss/output/score"
MQTT_HOST = "aq.byu.edu"
MQTT_PORT = 8883
MQTT_USERNAME = "sss"
MQTT_PASSWORD = "***REMOVED***"
MQTT_CERT = "/etc/ssl/certs/ca-certificates.crt"

paddle = [24]
ball = []
bricks = {}
level = 1
line_left = 0
line_right = 0
rows = level + 2


def init_screen(screen):

    global line_left, line_right, rows, level, ball, paddle

    paddle = [24]
    line_right = screen.x_width - ARENA_START
    line_left = ARENA_START - 1

    ball = [screen.x_width // 2, screen.y_height // 2]

    if level % 2 == 0:
        for pix in range(screen.y_height):
            screen.draw_pixel(line_left, pix, 0x0)
            screen.draw_pixel(line_right, pix, 0x0)
        line_left = 13 - level
        line_right = (screen.x_width - ARENA_START) + level
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

    # Draw ball and paddle
    screen.draw_pixel(ball[0], ball[1], PIXEL_ON, combine=False)

    for block in range(1, (line_right - line_left) // 3):
        paddle.append(paddle[-1] + 1)

    for val in paddle:
        screen.draw_pixel(val, screen.y_height - 1, PIXEL_ON, combine=False)

    screen.push()


def level_up():
    for rows in bricks.values():
        if rows:
            return False
    return True


def breakout(screen, command_queue):

    print("BREAKOUT")

    isLeft = True
    isDown = True
    counter = 0
    paddle_counter = 0
    gameover = False
    repeatRight = False
    repeatLeft = False
    score = 0
    speed = BALL_SPEED
    paddle_speed = BALL_SPEED // 2
    lives = 5

    global level, line_left, line_right, paddle, ball

    # Draw bricks on screen
    init_screen(screen)

    msgs = [
        {"topic": SCORE_TOPIC, "payload": score},
        {"topic": LIFE_TOPIC, "payload": lives},
    ]
    publish.multiple(
        msgs,
        hostname=MQTT_HOST,
        port=MQTT_PORT,
        auth={"username": MQTT_USERNAME, "password": MQTT_PASSWORD},
        tls={"ca_certs": MQTT_CERT},
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
        paddle_counter += 1
        if counter >= speed:

            counter = 0

            if ball[1] <= level + 2:
                row = ball[1]
                if row in bricks.keys():
                    if ball[0] in bricks[row]:
                        isDown = not isDown
                        score += SCORE_INC
                        publish.single(
                            SCORE_TOPIC,
                            score,
                            hostname=MQTT_HOST,
                            port=MQTT_PORT,
                            auth={"username": MQTT_USERNAME, "password": MQTT_PASSWORD},
                            tls={"ca_certs": MQTT_CERT},
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
                    score += SCORE_INC * 20
                    level += 1
                    if lives <= 4:
                        lives += 1
                        publish.single(
                            LIFE_TOPIC,
                            lives,
                            hostname=MQTT_HOST,
                            port=MQTT_PORT,
                            auth={"username": MQTT_USERNAME, "password": MQTT_PASSWORD},
                            tls={"ca_certs": MQTT_CERT},
                        )
                    init_screen(screen)

            screen.draw_pixel(ball[0], ball[1], PIXEL_OFF)

            # Bounds check for ball
            if ball[0] == line_left + 1:
                isLeft = False
            if ball[0] == line_right - 1:
                isLeft = True
            if ball[1] == 0:
                isDown = True
            if ball[1] == screen.y_height - 2:
                if ball[0] in paddle:
                    isDown = False
            if ball[1] == screen.y_height - 1:
                isDown = True
                # score //= 2
                lives -= 1
                publish.single(
                            LIFE_TOPIC,
                            lives,
                            hostname=MQTT_HOST,
                            port=MQTT_PORT,
                            auth={"username": MQTT_USERNAME, "password": MQTT_PASSWORD},
                            tls={"ca_certs": MQTT_CERT},
                        )
                screen.draw_pixel(ball[0], ball[1], PIXEL_OFF, combine=False, push=True)
                if lives == 0:
                    gameover = True
                    break
                ball[0] = screen.x_width // 2
                ball[1] = screen.y_height // 2

            if isLeft:
                ball[0] -= 1
            else:
                ball[0] += 1
            if isDown:
                ball[1] += 1
            else:
                ball[1] -= 1

        if paddle_counter >= paddle_speed:
            paddle_counter = 0

            if input_ == b"a":
                if paddle[0] == line_left + 1:
                    continue
                for val in range(len(paddle)):
                    paddle[val] -= 1
                screen.draw_pixel(
                    paddle[0], screen.y_height - 1, PIXEL_ON, combine=False
                )
                screen.draw_pixel(
                    paddle[-1] + 1, screen.y_height - 1, PIXEL_OFF, combine=False
                )

            if input_ == b"d":
                if paddle[-1] == line_right - 1:
                    continue
                for val in range(len(paddle)):
                    paddle[val] += 1
                screen.draw_pixel(
                    paddle[0] - 1, screen.y_height - 1, PIXEL_OFF, combine=False
                )
                screen.draw_pixel(
                    paddle[-1], screen.y_height - 1, PIXEL_ON, combine=False
                )

        # Handle the ball
        screen.draw_pixel(ball[0], ball[1], PIXEL_ON)

        screen.push()

    screen.clear()
