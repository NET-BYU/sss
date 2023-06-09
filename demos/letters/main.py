import random


class Letters:
    """This is demo draws random symbols on the screen. Kind of fun to watch"""

    demo_time = 30

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 20

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        while True:
            for _ in range(4):
                self.screen.draw_text(
                    random.randint(0, self.screen.x_width - 1),
                    random.randint(0, self.screen.y_height - 2),
                    chr(random.randint(33, 126)),
                )
            for _ in range(4):
                self.screen.draw_text(
                    random.randint(0, self.screen.x_width - 1),
                    random.randint(0, self.screen.y_height - 2),
                    " ",
                )
            self.screen.push()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
