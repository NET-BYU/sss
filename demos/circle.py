import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time

stop = False


def circle(screen, queue, mqtt_client):

    global stop

    width = screen.x_width
    height = screen.y_height
    sleep_time = 0.025

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        if input_ == b"q":
            stop = True
            break

        for x in range(1, width):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break
            screen.draw_pixel(x - 1, 0, 0x0, push=True)
            screen.draw_pixel(x, 0, 0xF, push=True)
            time.sleep(sleep_time)

        if stop:
            break

        for y in range(1, height):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break
            screen.draw_pixel(width - 1, y - 1, 0x0, push=True)
            screen.draw_pixel(width - 1, y, 0xF, push=True)
            time.sleep(sleep_time)

        if stop:
            break

        for x in range(width - 1, 0, -1):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break
            screen.draw_pixel(x - 1, height - 1, 0xF, combine=False, push=True)
            screen.draw_pixel(x, height - 1, 0x0, combine=False, push=True)
            time.sleep(sleep_time)

        if stop:
            break

        for y in range(height - 1, 0, -1):
            if not queue.empty():
                input_ = queue.get(block=False)
                if input_ == b"q":
                    stop = True
                    break
            screen.draw_pixel(0, y - 1, 0xF, combine=False, push=True)
            screen.draw_pixel(0, y, 0x0, combine=False, push=True)
            time.sleep(sleep_time)

        if stop:
            break

    screen.clear()
    stop = False
