from demos.utils import get_all_from_queue


# class MovingObjects:
#     def




class Run:
    """This game consists of running and jumping to avoid objects that will be shot at you. They will not vary in size but they will vary in speed and timing"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = None  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here
        self.score = 0 #starts out with no points
        self.lives = 3 #start with 3 lives

    def move(self):
        x = 25 
        head_y = 23
        body_y = 24

        for keypress in get_all_from_queue(self.input_queue):
            if keypress == "LEFT_P":
                self.screen.draw_pixel(x, head_y, 0x0, push=True)
                self.screen.draw_pixel(x, body_y, 0x0, push=True)
                self.screen.draw_pixel(x - 1, head_y, 0xF, push=True)
                self.screen.draw_pixel(x - 1, body_y, 0XE, push=True)
                x = x - 1
                pass
            if keypress == "RIGHT_P":
                self.screen.draw_pixel(x, head_y, 0x0, push=True)
                self.screen.draw_pixel(x, body_y, 0x0, push=True)
                self.screen.draw_pixel(x + 1, head_y, 0xF, push=True)
                self.screen.draw_pixel(x + 1, body_y, 0xE, push=True)
                x = x + 1
                pass
            if keypress == "UP_P":
                for up_height in range(head_y, head_y + 5):
                    self.screen.draw_pixel(x, up_height, 0x0, push=True)
                    self.screen.draw_pixel(x, up_height, 0x0, push=True)
                    self.screen.draw_pixel(x, head_y + up_height, 0xF, push=True)
                    self.screen.draw_pixel(x, body_y + up_height, 0xE, push=True)
                    yield
                for down_height in range(head_y + 4, head_y - 1, -1):
                    self.screen.draw_pixel(x, down_height, 0x0, push=True)
                    self.screen.draw_pixel(x, down_height, 0x0, push=True)
                    self.screen.draw_pixel(x, head_y + down_height, 0xF, push=True)
                    self.screen.draw_pixel(x, body_y + down_height, 0xE, push=True)
            


    def run(self):
        # Create generator here
        while True:
            #self.screen.draw_text(self.screen.x_width // 2 - 5, self.screen.y_height // 2 - 4, "PRESS TO START", push=True)
            self.screen.draw_pixel(25, 23, 0xF, push=True)
            self.screen.draw_pixel(25, 24, 0xE, push=True)
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass