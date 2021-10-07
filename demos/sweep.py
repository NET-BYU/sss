import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time


stop = False


def sweep(screen, queue, mqtt_client):
    global stop
    print("SWEEP")

    width = screen.x_width
    height = screen.y_height
    sleep_time = 0.02

    def draw_vline_loc(x, val):
        for pix in range(0, height):
            screen.draw_pixel(x, pix, val)
        screen.push()

    screen.draw_vline(0, 0, height, False, push=True)
    screen.push()

    input_ = ""

    while not stop:

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        if input_ == b"q":
            break

        for column in range(0, width):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break

            draw_vline_loc(column, 0xF)
            time.sleep(sleep_time)

        if stop:
            break

        for column in range(width - 1, -1, -1):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break
            draw_vline_loc(column, 0x0)
            time.sleep(sleep_time)

    screen.clear()
    stop = False
