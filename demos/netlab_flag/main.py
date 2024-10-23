class NetlabFlag:
    """This demo puts a cool netlab logo along with some checker pattern on the screen"""

    demo_time = 30

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """Constructor
        
        Args:
            input_queue (Queue): Queue to receive user input
            output_queue (Queue): Queue to send game output
            screen (Screen): Screen object to draw on
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        """Main loop of the demo/game"""
        # Create generator here
        # draw the logo in the center of the screen
        self.screen.draw_pixel(23, 2, 0xF, combine=False)
        self.screen.draw_pixel(24, 2, 0xF, combine=False)

        self.screen.draw_pixel(23, 22, 0xF, combine=False)
        self.screen.draw_pixel(24, 22, 0xF, combine=False)

        self.screen.draw_pixel(21, 3, 0xF, combine=False)
        self.screen.draw_pixel(19, 4, 0xF, combine=False)
        self.screen.draw_pixel(17, 5, 0xF, combine=False)
        self.screen.draw_pixel(15, 6, 0xF, combine=False)

        self.screen.draw_pixel(26, 3, 0xF, combine=False)
        self.screen.draw_pixel(28, 4, 0xF, combine=False)
        self.screen.draw_pixel(30, 5, 0xF, combine=False)
        self.screen.draw_pixel(32, 6, 0xF, combine=False)

        self.screen.draw_pixel(21, 21, 0xF, combine=False)
        self.screen.draw_pixel(19, 20, 0xF, combine=False)
        self.screen.draw_pixel(17, 19, 0xF, combine=False)
        self.screen.draw_pixel(15, 18, 0xF, combine=False)

        self.screen.draw_pixel(26, 21, 0xF, combine=False)
        self.screen.draw_pixel(28, 20, 0xF, combine=False)
        self.screen.draw_pixel(30, 19, 0xF, combine=False)
        self.screen.draw_pixel(32, 18, 0xF, combine=False)

        for line in range(11):
            self.screen.draw_pixel(15, 6 + line, 0xF, combine=True)
            self.screen.draw_pixel(32, 6 + line, 0xF, combine=True)

        # Text

        for n in range(5):
            self.screen.draw_pixel(17, 7 + n, 0xF, combine=True)
            self.screen.draw_pixel(20, 7 + n, 0xF, combine=True)
        self.screen.draw_pixel(18, 8, 0xF, combine=True)
        self.screen.draw_pixel(19, 9, 0xF, combine=True)

        for e in range(5):
            self.screen.draw_pixel(22, 7 + e, 0xF, combine=True)

        for ee in range(3):
            self.screen.draw_pixel(23 + ee, 7, 0xF, combine=True)
            self.screen.draw_pixel(23 + ee, 9, 0xF, combine=True)
            self.screen.draw_pixel(23 + ee, 11, 0xF, combine=True)

        for t in range(4):
            self.screen.draw_pixel(27 + t, 7, 0xF, combine=True)
            self.screen.draw_pixel(28, 8 + t, 0xF, combine=True)

        for l in range(5):
            self.screen.draw_pixel(17, 13 + l, 0xF, combine=True)

        for ll in range(3):
            self.screen.draw_pixel(18 + ll, 17, 0xF, combine=True)

        for a in range(5):
            self.screen.draw_pixel(22, 13 + a, 0xF, combine=True)
            self.screen.draw_pixel(25, 13 + a, 0xF, combine=True)

        for aa in range(2):
            self.screen.draw_pixel(23 + aa, 13, 0xF, combine=True)
            self.screen.draw_pixel(23 + aa, 15, 0xF, combine=True)

        for b in range(5):
            self.screen.draw_pixel(27, 13 + b, 0xF, combine=True)

        for bb in range(3):
            self.screen.draw_pixel(28 + bb, 15, 0xF, combine=True)
            self.screen.draw_pixel(28 + bb, 17, 0xF, combine=True)

        for bbb in range(2):
            self.screen.draw_pixel(28 + bbb, 13, 0xF, combine=True)
        self.screen.draw_pixel(30, 16, 0xF)
        self.screen.draw_pixel(30, 14, 0xF)

        while True:
            for x in range(13):
                for y in range(self.screen.y_height):
                    if y % 2 == 0:
                        if x % 3:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 3 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)

            for x in range(35, self.screen.x_width):
                for y in range(self.screen.y_height):
                    if y % 2 == 0:
                        if x % 3:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 3 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
            self.screen.push()
            yield
            for x in range(13):
                for y in range(self.screen.y_height):
                    if y % 2:
                        if x % 3:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 3 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)

            for x in range(35, self.screen.x_width):
                for y in range(self.screen.y_height):
                    if y % 2:
                        if x % 3:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
                    else:
                        if x % 3 == 0:
                            self.screen.draw_pixel(x, y, 0xF, combine=False, push=False)
            self.screen.push()
            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
