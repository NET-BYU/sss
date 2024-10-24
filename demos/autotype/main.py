import numpy as np


class Autotype:
    """This is the autotype demo. It will type out a text file on the screen"""

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
        self.frame_rate = 20

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """Run the demo"""
        # Create generator here

        x_cursor = 0
        y_cursor = 0

        pixel_vals = np.zeros((self.screen.x_width, self.screen.y_height))

        nephi = "And it came to pass that I, Nephi, said unto my father: I will go and do the things which the Lord hath commanded, for I know that the Lord giveth no commandments unto the children of men, save he shall prepare a way for them that they may accomplish the thing which he commandeth them."
        preamble = "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defense, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America."

        with open("demos/autotype/ihaveadream.txt") as file:
            dream = file.read()

        typed_text = dream.upper().split()

        while True:
            for word in typed_text:
                if self.screen.x_width - x_cursor < len(word):
                    x_cursor = 0
                    y_cursor += 2
                if y_cursor >= self.screen.y_height:
                    y_cursor -= 2

                    # print(self.screen.get_pixel(0, 0))
                    # print(self.screen.get_pixel(0, 1))

                    # print(self.screen.get_pixel(1, 0))
                    # print(self.screen.get_pixel(1, 1))

                    for y in range(self.screen.y_height):
                        for x in range(self.screen.x_width):
                            pixel_vals[y][x] = self.screen.get_pixel(x, y)

                    pixel_vals = np.delete(pixel_vals, 0, 0)
                    pixel_vals = np.delete(pixel_vals, 0, 0)
                    pixel_vals = np.append(
                        pixel_vals, [np.zeros(self.screen.x_width)], 0
                    )
                    pixel_vals = np.append(
                        pixel_vals, [np.zeros(self.screen.x_width)], 0
                    )

                    self.screen.clear()
                    for y in range(self.screen.y_height):
                        for x in range(self.screen.x_width):
                            self.screen.draw_pixel(x, y, int(pixel_vals[y][x]))
                    self.screen.push()
                    yield
                for char in word:
                    self.screen.draw_text(x_cursor, y_cursor, char, push=True)
                    x_cursor += 1
                    yield
                if self.screen.x_width - x_cursor > 0:
                    self.screen.draw_text(x_cursor, y_cursor, " ", push=True)
                    x_cursor += 1
                    yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass

    def get_input_buff(self):
        """
        Return the input buffer

        Returns:
            list: List of input buffer
        """
        return list(self.input_queue.queue)
