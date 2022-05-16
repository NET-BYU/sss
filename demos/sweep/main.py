class Sweep:
    """This demo sweeps back and forth across the screen"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 50
        self.demo_time = 10  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        while True:
            for column in range(0, self.screen.x_width):
                self.draw_vline_loc(column, 0xF)
                yield

            for column in range(self.screen.x_width - 1, -1, -1):
                self.draw_vline_loc(column, 0x0)
                yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

    def draw_vline_loc(self, x, val):
        for pix in range(0, self.screen.y_height):
            self.screen.draw_pixel(x, pix, val)
        self.screen.push()
