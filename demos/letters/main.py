import random

class Template:
    """This is demo draws random symbols on the screen. Kind of fun to watch"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 20
        self.demo_time = 30  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        width = 16
        height = 6
        sleep_time = 0.075

        modules = [j for sub in self.screen.board_objects for j in sub]
        while True:
            for mod in modules:
                x1 = random.randint(0, width - 1)
                y1 = random.randint(0, height - 1)
                x2 = random.randint(0, width - 1)
                y2 = random.randint(0, height - 1)
                letter1 = chr(random.randint(33, 126))
                # letter2 = chr(random.randint(33, 126))
                mod.letter2(x1, y1, letter1)
                mod.letter2(x2, y2, " ")
                mod.flush()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
