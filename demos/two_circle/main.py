class TwoCircle:
    """This is a demo that just runs a circle around the perimeter"""

    demo_time = None

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        width = self.screen.x_width
        height = self.screen.y_height
        # Size is 48x48
        print(width, height)
        while True:
            for x in range(0, width):
                if x < 2:
                    self.screen.draw_pixel(x, 0, 0xF, push=True)

                else:
                    # Changed x - 1 to x - 2 to add another dot
                    self.screen.draw_pixel(x - 2, 0, 0x0, push=True)
                    self.screen.draw_pixel(x, 0, 0xF, push=True)
                # Putting another pixel next to original
                # self.screen.draw_pixel(x - 2, 0, 0x0, push=True)
                # self.screen.draw_pixel(x - 1, 0, 0xF, push=True)
                yield

            self.screen.draw_pixel(46, 0, 0x0, push=True)
            self.screen.draw_pixel(47, 0, 0x0, push=True)

            for y in range(1, height):
                if y <= 2:
                    self.screen.draw_pixel(width - 1, y, 0xF, push=True)

                else:
                    # Switched to y - 2
                    self.screen.draw_pixel(width - 1, y - 2, 0x0, push=True)
                    self.screen.draw_pixel(width - 1, y, 0xF, push=True)
                # Putting another pixel next to original
                # self.screen.draw_pixel(width - 1, y, 0x0, push=True)
                # self.screen.draw_pixel(width - 1, y + 1, 0xF, push=True)
                yield

            self.screen.draw_pixel(width - 1, 46, 0x0, push=True)
            for x in range(width - 1, 0, -1):
                if x >= width - 2:  # is 46
                    self.screen.draw_pixel(x, height - 1, 0xF, push=True)

                # elif x >= 3 and x <= 45:
                # Switched to x - 2
                else:
                    self.screen.draw_pixel(x + 2, height - 1, 0x0, push=True)
                    self.screen.draw_pixel(x, height - 1, 0xF, push=True)

                # else:
                #     self.screen.draw_pixel(x + 1, height - 1, 0x0, push=True)
                #     self.screen.draw_pixel(x, height - 1, 0xF, push=True)
                # Putting another pixel
                # self.screen.draw_pixel(x - 2, height - 1, 0xF, combine=False, push=True)
                # self.screen.draw_pixel(x - 1, height - 1, 0x0, combine=False, push=True)
                # print(x)
                yield

            self.screen.draw_pixel(2, height - 1, 0x0, push=True)
            self.screen.draw_pixel(1, height - 1, 0x0, push=True)
            for y in range(height - 1, 0, -1):
                if y >= height - 2:
                    self.screen.draw_pixel(0, y, 0xF, push=True)
                else:
                    # Switched to y - 2
                    self.screen.draw_pixel(0, y + 2, 0x0, push=True)
                    self.screen.draw_pixel(0, y, 0xF, push=True)

                # print(y)
                yield
            self.screen.draw_pixel(0, 2, 0x0, push=True)
            self.screen.draw_pixel(0, 1, 0x0, push=True)

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
