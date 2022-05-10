import sys, keyboard

sys.path.append("..")

from display import seven_seg as ss  # import SevenSegment
from display import game_display as gd  # import Display
from time import sleep


def checkboard_screensaver(screen, queue, mqtt_client):
    print("CHECKERBOARD")

    input_ = ""

    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2 == 0:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)

        for x in range(screen.x_width):
            for y in range(screen.y_height):
                if y % 2:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xF, combine=False, push=False)
        screen.push()
        sleep(0.1)

    screen.clear()


class CheckerBoard_Screensaver:
    """This is the checkboard demo. It just alternates a checker pattern on the display"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 5
        self.demo_time = 30  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        while True:
            for x in range(self.screen.x_width):
                for y in range(self.screen.y_height):
                    if y % 2 == 0:
                        if x % 2:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 2 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
            self.screen.push()
            yield

            for x in range(self.screen.x_width):
                for y in range(self.screen.y_height):
                    if y % 2:
                        if x % 2:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 2 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
            self.screen.push()
            yield


    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

