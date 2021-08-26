import sys

sys.path.append("../..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import paho.mqtt.publish as publish
from random import getrandbits

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

    if level == 1:
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

    for val in range(line_left + 1, line_right):
        screen.draw_pixel(val, screen.y_height - 1, PIXEL_OFF)

    for val in paddle:
        screen.draw_pixel(val, screen.y_height - 1, PIXEL_ON, combine=False)

    screen.push()


def level_up():
    for rows in bricks.values():
        if rows:
            return False
    return True


def get_angle(paddle):
    global ball
    if paddle.index(ball[0]) < (len(paddle) // 2):
        spin = paddle.index(ball[0]) % len(paddle) + 1
        isLeft = True
    elif paddle.index(ball[0]) < (len(paddle) // 2):
        spin = (len(paddle) - 1) - paddle.index(ball[0]) % len(paddle) + 1
        isLeft = False
    else:
        spin = paddle.index(ball[0]) // 2
        isLeft = bool(getrandbits(1))

    return spin, isLeft


def ball_travel(isLeft, isDown, spin, screen):
    global ball, bricks, paddle, rows
    
    horizbound = 0
    vertbound = 0

    if isLeft:
        horizbound = ball[0] - 1
    else:
        horizbound = ball[0] + 1

    if isDown:
        vertbound = ball[1] + spin
    else:
        vertbound = ball[1] - spin        

    collide_field = []
    if spin > 1:
        for y_val in range(min(ball[1], vertbound), max(ball[1], vertbound)):
            collide_field.append([horizbound,y_val])       


    if isLeft:
        ball[0] -= 1
    else:
        ball[0] += 1    
    
    if isDown:
        # A possible conflict with ball trying to jump paddle
        if (screen.y_height - 1) - (ball[1] + spin) <= 0 and spin > 1:
            for block in collide_field:
                if block[0] in paddle:
                    ball[1] = screen.y_height - 2
                    isDown = False
                    if paddle.index(block[0]) > len(paddle) // 2:
                        isLeft = False
                    return isLeft, isDown
                ball[1] += spin
        else:
            ball[1] += spin
    else:
        # A possible conflict with ball trying to jump bricks
        if (rows - 1) - (ball[1] - spin) >= 0 and spin > 1:
            for block in collide_field:
                for row in range(rows - 1, 0 - 1, -1):
                    if block[0] in bricks[row]:
                        # isDown = True
                        ball[1] = row
                        return isLeft, isDown
                    ball[1] -= spin
        else:
            ball[1] -= spin

    return isLeft, isDown


def breakout(screen, command_queue, ai=False):

    print("BREAKOUT")

    isLeft = True
    isDown = True
    counter = 0
    paddle_counter = 0
    gameover = False
    start = False
    repeatRight = False
    repeatLeft = False
    score = 0
    speed = BALL_SPEED
    spin = 1
    if not ai:
        paddle_speed = BALL_SPEED // 2
    else:
        paddle_speed = BALL_SPEED
    lives = 5

    global level, line_left, line_right, paddle, ball

    if not ai:
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

    # Waits for user ready
    if not ai:
        screen.draw_text((screen.x_width // 2) - 4, (screen.y_height // 2) - 8, "BREAKOUT")
        screen.draw_text(
            (screen.x_width // 2) - 5, (screen.y_height // 2) - 4, "PRESS START"
        )
        screen.draw_text((screen.x_width // 2) - 4, (screen.y_height // 2) - 2, "TO BEGIN")
        screen.push()

        while not start:
            if not command_queue.empty():
                input_ = command_queue.get(block=False)
            else:
                input_ = ""
            if input_ == b"start":
                start = True
            elif input_ == b"q":
                start = True
                gameover = True

        screen.draw_text((screen.x_width // 2) - 4, (screen.y_height // 2) - 8, "        ")
        screen.draw_text(
            (screen.x_width // 2) - 5, (screen.y_height // 2) - 4, "           "
        )
        screen.draw_text((screen.x_width // 2) - 4, (screen.y_height // 2) - 2, "        ")
        screen.push()

    # Draw bricks on screen
    init_screen(screen)

    while not gameover:

        if not command_queue.empty():
            input_ = command_queue.get(block=False)
        else:
            input_ = ""

        if input_ == b"start":
            screen.draw_text(
                (screen.x_width // 2) - 3,
                (screen.y_height // 2) - 8,
                "PAUSED",
                push=True,
            )
            while True:
                if not command_queue.empty():
                    input_ = command_queue.get(block=False)
                else:
                    input_ = ""
                if input_ == b"start":
                    screen.draw_text(
                        (screen.x_width // 2) - 3,
                        (screen.y_height // 2) - 8,
                        "      ",
                        push=True,
                    )
                    with command_queue.mutex:
                        command_queue.queue.clear()
                    break

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
                        if not ai:
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
                        if not ai:
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
                    spin, isLeft = get_angle(paddle)
                    speed = BALL_SPEED * spin // (1 + spin // 2)
                    isDown = False
            if ball[1] == screen.y_height - 1:
                isDown = True
                if not ai:
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

            isLeft, isDown = ball_travel(isLeft, isDown, spin, screen)
            

            # Spin correct
            if ball[0] < line_left + 1:
                ball[0] = line_left + 1
            elif ball[0] > line_right - 1:
                ball[0] = line_right - 1
            
            if ball[1] < 0:
                ball[1] = 0
            elif ball[1] > screen.y_height - 1:
                ball[1] = screen.y_height - 1

        if paddle_counter >= paddle_speed:
            paddle_counter = 0

            if ai:
                if ball[1] >= (screen.y_height // 2):
                    if isLeft:
                        if paddle[0] == line_left + 1:
                            continue
                        for val in range(len(paddle)):
                            paddle[val] -= 1
                        screen.draw_pixel(
                            paddle[0], screen.y_height - 1, PIXEL_ON, combine=False
                        )
                        screen.draw_pixel(
                            paddle[-1] + 1,
                            screen.y_height - 1,
                            PIXEL_OFF,
                            combine=False,
                        )
                    else:
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

            else:
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
    print("bye")


def breakout_demo(screen, queue):
    breakout(screen, queue, ai=True)
