class Identify:
    """This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function needs to at least have the things shown below. Frame rate is in frames per second and demo time is in seconds. Demo time should be None if it is a game.
    """

    demo_time = None  # Number of seconds or None if its game

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): The input queue
            output_queue (Queue): The output queue
            screen (Screen): The screen to draw on

        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen."""
        # Create generator here
        while True:
            for num_height in range(4):
                for num_width in range(3):
                    self.screen.draw_text(
                        num_width * 16,
                        num_height * 12,
                        str(num_height * 3 + num_width),
                        push=True,
                    )
            yield

    def stop(self):
        """The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game"""
        pass
