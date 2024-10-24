PIXEL_FULL = 0xF
PIXEL_BOTTOM = 0x1
PIXEL_LEFT = 0x2
PIXEL_TOP = 0x4
PIXEL_RIGHT = 0x8


class UnderConstruction:
    """This demo just displays an underconstruction sign"""

    demo_time = None

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Input queue
            output_queue (Queue): Output queue
            screen (Screen): Screen object

        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """Main loop of the demo"""
        # Create generator here
        xmax = self.screen.x_width
        ymax = self.screen.y_height
        line = self.screen.draw_shape_line
        dot = self.screen.draw_pixel

        while True:
            line(5, ymax // 2 - 10, 6, ymax // 2 - 10, PIXEL_TOP)
            line(5, ymax // 2 - 12, 6, ymax // 2 - 12, PIXEL_TOP)
            line(5, ymax // 2 - 8, 6, ymax // 2 - 8, PIXEL_BOTTOM)
            line(4, ymax // 2 - 8, 4, ymax // 2 - 10, PIXEL_RIGHT)
            line(7, ymax // 2 - 8, 7, ymax // 2 - 10, PIXEL_LEFT)
            dot(7, ymax // 2 - 12, PIXEL_RIGHT + PIXEL_TOP)
            dot(4, ymax // 2 - 12, PIXEL_LEFT + PIXEL_TOP)
            dot(8, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_LEFT)
            dot(3, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_RIGHT)
            dot(4, ymax // 2 - 6, PIXEL_TOP + PIXEL_LEFT)
            dot(3, ymax // 2 - 7, PIXEL_TOP + PIXEL_LEFT)
            dot(7, ymax // 2 - 6, PIXEL_TOP + PIXEL_RIGHT)
            dot(8, ymax // 2 - 7, PIXEL_TOP + PIXEL_RIGHT)
            line(2, ymax // 2 - 8, 2, ymax // 2 - 10, PIXEL_RIGHT)
            line(9, ymax // 2 - 8, 9, ymax // 2 - 10, PIXEL_LEFT)
            line(4, ymax // 2 - 5, 4, ymax // 2 + 5, PIXEL_RIGHT)
            line(7, ymax // 2 - 5, 7, ymax // 2 + 5, PIXEL_LEFT)
            dot(4, ymax // 2 + 6, PIXEL_TOP + PIXEL_LEFT)
            dot(3, ymax // 2 + 7, PIXEL_TOP + PIXEL_LEFT)
            dot(7, ymax // 2 + 6, PIXEL_TOP + PIXEL_RIGHT)
            dot(8, ymax // 2 + 7, PIXEL_TOP + PIXEL_RIGHT)
            line(2, ymax // 2 + 8, 2, ymax // 2 + 11, PIXEL_RIGHT)
            line(9, ymax // 2 + 8, 9, ymax // 2 + 11, PIXEL_LEFT)
            dot(3, ymax // 2 + 12, PIXEL_LEFT + PIXEL_BOTTOM)
            dot(8, ymax // 2 + 12, PIXEL_RIGHT + PIXEL_BOTTOM)
            dot(4, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
            dot(7, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
            line(4, ymax // 2 + 8, 4, ymax // 2 + 11, PIXEL_RIGHT)
            line(7, ymax // 2 + 8, 7, ymax // 2 + 11, PIXEL_LEFT)
            line(5, ymax // 2 + 7, 6, ymax // 2 + 7, PIXEL_BOTTOM)

            self.screen.draw_text(16, 12, "UNDER")
            self.screen.draw_text(16, 16, "CONSTRUCTION")
            self.screen.push()
            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
