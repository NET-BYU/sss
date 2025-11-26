class AllOn:
    """This demo turns all the segments on"""

    demo_time = None

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue for user input
            output_queue (Queue): Queue for game output
            screen (Screen): Screen object
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 50

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """Run the demo"""
        # Create generator here
        for column in range(0, self.screen.x_width):
            for row in range(0, self.screen.y_height):
                self.screen.draw_pixel(column, row, 0xF, combine=True)

        self.screen.push()
        while True:
            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
