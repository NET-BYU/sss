class Spiral:
    """This demo that just spirals around"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = 30  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        width = self.screen.x_width
        height = self.screen.y_height
        across = width
        down = height
        x_in = 0
        y_in = 0
        # Create generator here
        while True:
            for x in range(x_in, across):
                self.screen.draw_pixel(x, y_in, 0xF)
                # if x > x_in:
                # screen.draw_pixel(x - 1, y_in, 0x0)
                self.screen.push()
                if x < across - 1:
                    yield

            for y in range(y_in, down):
                self.screen.draw_pixel(x, y, 0xF)
                # if y > y_in:
                #     screen.draw_pixel(x, y - 1, 0x0)
                self.screen.push()
                if y < down - 1:
                    yield

            for x in range(across - 1, x_in - 1, -1):
                self.screen.draw_pixel(x, y, 0xF)
                # if x < across - 1:
                #     screen.draw_pixel(x + 1, y, 0x0)
                self.screen.push()
                if x > 0:
                    yield

            # if down - 1 == y_in + 1:
            #     break

            for y in range(down - 1, y_in, -1):
                self.screen.draw_pixel(x, y, 0xF)
                # if y < down - 1:
                #     screen.draw_pixel(x, y + 1, 0x0)
                self.screen.push()
                # if y > 0:
                yield
                # if y == y_in + 1:
                #     screen.draw_pixel(x, y, 0x0)

            x_in += 1
            y_in += 1
            across -= 1
            down -= 1

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
