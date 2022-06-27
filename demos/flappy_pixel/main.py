import random

from demos.utils import get_all_from_queue


class Pipe:
    def __init__(self, x):
        self.gap_height = random.randint(15, 33)
        self.x = x
        self.velocity = 0.35

    def draw_locations(self):
        x = int(self.x)
        return (x - 4, self.gap_height - 5)

    def move(self):
        self.x -= self.velocity


class FlappyPixel:
    """This demo is supposed to mimic the mobile game Flappy bird. Press the enter key to jump"""

    demo_time = None

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
        self.height = 24
        self.velocity = 0
        self.acceleration = 0.15

        self.pipes = [Pipe(51)]

    def _draw_pixel(self, clear=False):
        height = int(self.height)
        if clear:
            self.screen.draw_pixel(18, height + 1, 0)
            self.screen.draw_pixel(19, height + 1, 0)
            self.screen.draw_pixel(18, height, 0, push=True)
        else:
            self.screen.draw_pixel(18, height + 1, 0xF)
            self.screen.draw_pixel(19, height + 1, 0x3)
            self.screen.draw_pixel(18, height, 13, push=True)

    def _update_pos(self):
        self.velocity += self.acceleration
        self.height += self.velocity

    def _process_input(self):
        # process the input looking for enter key to be pressed
        temp = get_all_from_queue(self.input_queue)

        if "START_P" in temp:
            self.velocity = -1.75

    def _check_boundaries(self):
        # check if the bird is still within the screen, else return False
        if 0 < self.height < 47:
            return True
        return False

    def _update_pipes(self):
        while len(self.pipes) < 6:
            self.pipes.append(Pipe(self.pipes[-1].x + 20))
        for pipe in self.pipes:
            pipe.move()

            (x, y) = pipe.draw_locations()
            if x < -5:
                self.pipes.pop(0)
                continue
            if x > 50:
                continue
            # clear the old pipe
            if -5.5 < x < 42.5:
                self.screen.draw_pixel(round(x) + 5, y, 0x0)
                self.screen.draw_pixel(round(x) + 5, y + 10, 0x0)
            if -1.5 < x < 46.5:
                self.screen.draw_pixel(round(x) + 1, y, 0x0)
                self.screen.draw_pixel(round(x) + 1, y + 10, 0x0)
            if -2.5 < x < 45.5:
                for i in range(y):
                    self.screen.draw_pixel(round(x) + 2, i, 0x0)
                for i in range(y + 11, self.screen.y_height):
                    self.screen.draw_pixel(round(x) + 2, i, 0x0)
            if -5.5 < x < 42.5:
                for i in range(y):
                    self.screen.draw_pixel(round(x) + 4, i, 0x0)
                for i in range(y + 11, self.screen.y_height):
                    self.screen.draw_pixel(round(x) + 4, i, 0x0)
                # self.screen.draw_pixel(round(x)+2,y-1,0x0)
                # self.screen.draw_pixel(round(x)+2,y+11,0x0)

            # if x -3 < 48:
            #     self.screen.draw_pixel(x-3)

            # draw the new Pipe
            if 0 <= x < 47.5:
                # top pipe
                self.screen.draw_hline(
                    round(x), y, 5 if x < 42.5 else self.screen.x_width - round(x)
                )
                self.screen.draw_hline(
                    round(x),
                    y,
                    5 if x < 42.5 else self.screen.x_width - round(x),
                    False,
                )
                self.screen.draw_pixel(round(x), y, 0x2)
                if x < 43.5:
                    self.screen.draw_pixel(round(x) + 4, y, 0x8)
                if x < 46.5:
                    self.screen.draw_vline(round(x) + 1, 0, y)
                if x < 43.5:
                    self.screen.draw_vline(round(x) + 3, 0, y, False)

                # bottom pipe
                self.screen.draw_hline(
                    round(x), y + 10, 5 if x < 42.5 else self.screen.x_width - round(x)
                )
                self.screen.draw_hline(
                    round(x),
                    y + 10,
                    5 if x < 42.5 else self.screen.x_width - round(x),
                    False,
                )
                self.screen.draw_pixel(round(x), y + 10, 0x2)
                if x < 43.5:
                    self.screen.draw_pixel(round(x) + 4, y + 10, 0x8)
                if x < 46.5:
                    self.screen.draw_vline(
                        round(x) + 1, y + 11, self.screen.y_height - (y + 11)
                    )
                if x < 43.5:
                    self.screen.draw_vline(
                        round(x) + 3, y + 11, self.screen.y_height - (y + 11), False
                    )
            if x < 0:
                # left side of the screen now
                if x > -4.5:
                    # top
                    self.screen.draw_hline(0, y, 5 + round(x))
                    self.screen.draw_hline(0, y, 5 + round(x), False)
                    self.screen.draw_pixel(round(x) + 4, y, 0x8)
                    # bottom
                    self.screen.draw_hline(0, y + 10, 5 + round(x))
                    self.screen.draw_hline(0, y + 10, 5 + round(x), False)
                    self.screen.draw_pixel(round(x) + 4, y + 10, 0x8)
                if x > -1.5:
                    # top
                    self.screen.draw_vline(round(x) + 1, 0, y)
                    # bottom
                    self.screen.draw_vline(
                        round(x) + 1, y + 11, self.screen.y_height - (y + 11)
                    )
                if x > -3.5:
                    # top
                    self.screen.draw_vline(round(x) + 3, 0, y)
                    # bottom
                    self.screen.draw_vline(
                        round(x) + 3, y + 11, self.screen.y_height - (y + 11), False
                    )

    def run(self):
        # Create generator here
        while True:
            x = -1
            y = 25

            self._draw_pixel(True)
            self._process_input()
            self._update_pos()
            if self._check_boundaries():
                self._update_pipes()
                self._draw_pixel()
                self.screen.push()
                yield
            else:
                self.height = 14
                self.velocity = 0
                self.screen.push()
                self._draw_pixel()

                yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
