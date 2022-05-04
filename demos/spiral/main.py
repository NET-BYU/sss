import sys

sys.path.append("..")

from display import seven_seg as ss  # import SevenSegment
from display import game_display as gd  # import Display
import time


stop = False


def spiral(screen, queue, mqtt_client):
    """circle chase around the board, width is number of digits across and height is how many digits tall."""

    global stop

    print("SPIRAL")

    width = screen.x_width
    height = screen.y_height
    sleep_time = 0.0025

    input_ = ""
    while not stop:

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        if input_ == b"q":
            stop = True
            break

        across = width
        down = height
        x_in = 0
        y_in = 0

        while not stop:

            if not queue.empty():
                input_ = queue.get(block=False)
            else:
                input_ = ""

            if input_ == b"q":
                stop = True
                break

            for x in range(x_in, across):
                if not queue.empty():
                    input_ = queue.get(block=False)
                    if input_ == b"q":
                        stop = True
                        break
                screen.draw_pixel(x, y_in, 0xF)
                # if x > x_in:
                    # screen.draw_pixel(x - 1, y_in, 0x0)
                screen.push()
                if x < across - 1:
                    time.sleep(sleep_time)

            if stop:
                break

            for y in range(y_in, down):
                if not queue.empty():
                    input_ = queue.get(block=False)
                    if input_ == b"q":
                        stop = True
                        break
                screen.draw_pixel(x, y, 0xF)
                # if y > y_in:
                #     screen.draw_pixel(x, y - 1, 0x0)
                screen.push()
                if y < down - 1:
                    time.sleep(sleep_time)

            if stop:
                break

            for x in range(across - 1, x_in - 1, -1):
                if not queue.empty():
                    input_ = queue.get(block=False)
                    if input_ == b"q":
                        stop = True
                        break
                screen.draw_pixel(x, y, 0xF)
                # if x < across - 1:
                #     screen.draw_pixel(x + 1, y, 0x0)
                screen.push()
                if x > 0:
                    time.sleep(sleep_time)

            if stop:
                break

            if down - 1 == y_in + 1:
                break

            for y in range(down - 1, y_in, -1):
                if not queue.empty():
                    input_ = queue.get(block=False)
                    if input_ == b"q":
                        stop = True
                        break
                screen.draw_pixel(x, y, 0xF)
                # if y < down - 1:
                #     screen.draw_pixel(x, y + 1, 0x0)
                screen.push()
                # if y > 0:
                time.sleep(sleep_time)
                # if y == y_in + 1:
                #     screen.draw_pixel(x, y, 0x0)

            if stop:
                break

            x_in += 1
            y_in += 1
            across -= 1
            down -= 1

        screen.clear()

    screen.clear()
    stop = False
