class Circle:
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
        while True:
            for x in range(1, width):
                # Changed x - 1 to x - 2 to add another dot
                self.screen.draw_pixel(x - 2, 0, 0x0, push=True)
                self.screen.draw_pixel(x, 0, 0xF, push=True)
                # Putting another pixel next to original
                # self.screen.draw_pixel(x - 2, 0, 0x0, push=True)
                # self.screen.draw_pixel(x - 1, 0, 0xF, push=True)
                yield
            for y in range(1, height):
                # Switched to y - 2
                self.screen.draw_pixel(width - 1, y - 2, 0x0, push=True)
                self.screen.draw_pixel(width - 1, y, 0xF, push=True)
                # Putting another pixel next to original
                # self.screen.draw_pixel(width - 1, y, 0x0, push=True)
                # self.screen.draw_pixel(width - 1, y + 1, 0xF, push=True)
                yield
            for x in range(width - 1, 0, -1):
                # Switched to x - 2
                self.screen.draw_pixel(x - 2, height - 1, 0xF, combine=False, push=True)
                self.screen.draw_pixel(x, height - 1, 0x0, combine=False, push=True)
                # Putting another pixel
                # self.screen.draw_pixel(x - 2, height - 1, 0xF, combine=False, push=True)
                # self.screen.draw_pixel(x - 1, height - 1, 0x0, combine=False, push=True)
                yield
            for y in range(height - 1, 0, -1):
                # Switched to y - 2
                self.screen.draw_pixel(0, y - 2, 0xF, combine=False, push=True)
                self.screen.draw_pixel(0, y, 0x0, combine=False, push=True)
                yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
