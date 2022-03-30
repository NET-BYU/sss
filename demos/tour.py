import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time


stop = False

class Face:

    class Eyebrow:
        def __init__(self):
            pass

    class Eye:
        def __init__(self, brow):
            pass

        def blink(self):
            pass

        def look_direction(self, x, y):
            pass

    class Mouth:
        def __init__(self):
            pass

        def close(self):
            pass

        def opened(self):
            pass

        def smile(self):
            pass

        def frown(self):
            pass




    leftBrow = Eyebrow()
    rightBrow = Eyebrow()
    leftEye = Eye(leftBrow)
    rightEye = Eye(rightBrow)

    def __init__(self):
        eyes = [leftEye, rightEye]

    def surprised(self):
        pass

    def happy(self):
        pass

    def sad(self):
        pass

    def explain(self):
        pass

    def neutral(self):
        pass



def spiral(screen, queue, mqtt_client):
    """circle chase around the board, width is number of digits across and height is how many digits tall."""

    global stop

    print("SPIRAL")

    width = screen.x_width
    height = screen.y_height
    sleep_time = 0.0012

    while not stop:

        across = width
        down = height
        x_in = 0
        y_in = 0

        while not stop:

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
        stop = True

    for val in range(10):
        draw_eye(screen, 10, 10, val, push=True)
        time.sleep(0.025)

    for val in range(10):
        draw_eye(screen, 30, 10, val, push=True)
        time.sleep(0.025)

    while True:
        pass

def draw_eye(screen, x, y, d, push=False):
    
    for row in range(d):
        for col in range(d):
            print(row, col)
            screen.draw_pixel(x + col, y + row, 0xF)
    if push:
        screen.push()
