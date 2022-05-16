

class Checkerboard:
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

