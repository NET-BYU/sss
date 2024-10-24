import time

from demos.digit_clock.trace import Trace


class DigitClock:
    """This is the Digital Clock demo. It will display the current time on the screen in a digital format."""

    demo_time = 30

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): The input queue
            output_queue (Queue): The output queue
            screen (Screen): The screen to draw on
        """
        self.frame_rate = 20

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """Runs the demo loop"""
        # Draw two dots in the middle of the screen
        self.screen.draw_pixel(24, 22, 15, True, False)
        self.screen.draw_pixel(24, 26, 15, True, False)
        self.screen.push()
        trace = Trace(self.screen)

        def draw_time(current_time, draw):
            """
            Draw the current time on the screen

            Args:
                current_time (tuple): The current time
                draw (bool): If True then draw the time, else clear the time
            """
            hour = current_time[3]
            min = current_time[4]
            if len(str(min)) == 1:
                trace.draw_number(0, min, draw)
                trace.draw_number(1, 0, draw)
            if len(str(min)) == 2:
                trace.draw_number(0, int(str(min)[1]), draw)
                trace.draw_number(1, int(str(min)[0]), draw)

            if hour > 12:
                hour = hour - 12

            if len(str(hour)) == 1:
                trace.draw_number(2, hour, draw)

            if len(str(hour)) == 2:
                trace.draw_number(2, int(str(hour)[1]), draw)
                trace.draw_number(3, int(str(hour)[0]), draw)

        # Initialize current time on the clock
        current_time = time.localtime(None)
        draw_time(current_time, True)

        # Generator that will compare a new time with the current time and if there is a difference then the generator will update the clock
        while True:
            new_time = time.localtime(None)
            if new_time[4] is not current_time[4]:
                draw_time(current_time, False)
                draw_time(new_time, True)
                current_time = new_time
            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass

    def get_input_buff(self):
        """Get all input off the queue

        Returns:
            list: A list of all the input from the queue
        """
        return list(self.input_queue.queue)
