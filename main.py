# Import the pygame module
import pygame

from display import game_display
import demos.snake_ai.main as snake_ai
from queue import Queue, Empty
import loguru as logger
from importlib import import_module
from pathlib import Path
# Import pygame.locals for easier access to key coordinates
# Updated to conform to flake8 and black standards
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT,
)


def load_demo(module):
    logger.debug(f"Loading {module}")
    return import_module(module)


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = ((d, str(d).replace("/", ".") + ".main") for d in demos)

    return {name: load_demo(module) for name, module in demos}


# Define constants for the screen width and height
SCREEN_WIDTH = 25 * 48
SCREEN_HEIGHT = 30 * 24

# Initialize pygame
pygame.init()
clock = pygame.time.Clock()

# Create the screen object
# The size is determined by the constant SCREEN_WIDTH and SCREEN_HEIGHT
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
screen.fill((0, 0, 0))
pygame.display.flip()


class Digit:
    def __init__(self, display, x, y):
        self.display = display
        self.x = x
        self.y = y
        self.draw_line = pygame.draw.line
        # Horizontal lines
        # self.draw_line(self.display, (255, 0, 0), (self.x, self.y), (self.x + 10, self.y), 2)
        # self.draw_line(self.display, (255, 0, 0), (self.x-2, self.y+10), (self.x-2 + 10, self.y+10), 2)
        # self.draw_line(self.display, (255, 0, 0), (self.x-4, self.y+20), (self.x-4 + 10, self.y+20), 2)
        #
        # # left vertical lines
        # self.draw_line(self.display, (255, 0, 0), (self.x-3, self.y+1), (self.x-5, self.y+10-1), 2)
        # self.draw_line(self.display, (255, 0, 0), (self.x-5, self.y+10+1), (self.x-6, self.y+20-1), 2)
        #
        # # right vertical lines
        # self.draw_line(self.display, (255, 0, 0), (self.x+10+2, self.y + 1), (self.x +10, self.y + 10 - 1), 2)
        # self.draw_line(self.display, (255, 0, 0), (self.x+10, self.y +10+ 1), (self.x +10-2, self.y + 20 - 1), 2)

        # decimal
        # self.draw_line(self.display,(255,0,0), (self.x+12,self.y+20),(self.x+13,self.y+20),2)

        # self.start_x_pos = [self.x + 6, self.x + 18, self.x + 16, self.x + 2, self.x + 1, self.x + 3, self.x + 4,
        #                     self.x + 18]
        # self.end_x_pos = [self.x + 16, self.x + 16, self.x + 14, self.x + 12, self.x + 0, self.x + 1, self.x + 14,
        #                   self.x + 19]
        # self.start_y_pos = [self.y, self.y + 1, self.y + 11, self.y + 20, self.y + 11, self.y + 1, self.y + 10,
        #                     self.y + 20]
        # self.end_y_pos = [self.y, self.y + 9, self.y + 19, self.y + 20, self.y + 19, self.y + 9, self.y + 10,
        #                   self.y + 20]

        self.start_x_pos = [self.x + 4, self.x + 3, self.x + 1, self.x + 2, self.x + 16, self.x + 18, self.x + 6,
                            self.x + 18]
        self.end_x_pos = [self.x + 14, self.x + 1, self.x + 0, self.x + 12, self.x + 14, self.x + 16, self.x + 16,
                          self.x + 19]
        self.start_y_pos = [self.y + 10, self.y + 1, self.y + 11, self.y + 20, self.y + 11, self.y + 1, self.y,
                            self.y + 20]
        self.end_y_pos = [self.y + 10, self.y + 9, self.y + 19, self.y + 20, self.y + 19, self.y + 9, self.y,
                          self.y + 20]
        for i in range(8):
            self.draw_line(self.display, (255, 0, 0), (self.start_x_pos[i], self.start_y_pos[i]),
                           (self.end_x_pos[i], self.end_y_pos[i]), 2)
        # pygame.display.flip()
        self.state = 255

    def update(self, value):
        # 7 Segment bit order: DP-G-F-E-D-C-B-A
        # 7 Segment bit order: DP-A-B-C-D-E-F-G
        diff = self.state ^ value
        for i in range(8):
            offset = 1 << i
            if diff & offset:
                self.draw_line(self.display, (255, 0, 0) if value & offset else (0, 0, 0),
                               (self.start_x_pos[i], self.start_y_pos[i]), (self.end_x_pos[i], self.end_y_pos[i]), 2)
        self.state = value


class Panel:
    def __init__(self, start_x, start_y, display):
        self.digits = [[Digit(display, start_x + j * 25, start_y + i * 30) for j in range(16)] for i in range(6)]
        self.x = start_x
        self.y = start_y

    @staticmethod
    def flush():
        pygame.display.flip()

    def clear(self):
        for row in self.digits:
            for dig in row:
                dig.update(0)

    def raw2(self, x, y, value, flush=False):
        self.digits[y][x].update(value)
        if flush:
            self.flush()


# panel_0 = Panel(0, 0, screen)
# panel_1 = Panel(1 * 16 * 25, 0, screen)
# panel_2 = Panel(2 * 16 * 25, 0, screen)
# panel_3 = Panel(0, 1 * 30 * 6, screen)
# panel_4 = Panel(1 * 16 * 25, 1 * 30 * 6, screen)
# panel_5 = Panel(2 * 16 * 25, 1 * 30 * 6, screen)
input_q = Queue()
output_q = Queue()
boards = [[Panel(i * 16 * 25, j * 30 * 6, screen) for i in range(3)] for j in range(4)]
disp = game_display.Display(boards, 16 * 3, 12 * 4)
disp.clear()
snek = snake_ai.Snake_AI(input_q, output_q, disp)

snek_runner = snek.run()

# panel_0.raw2(2, 2, 91, True)

# Variable to keep the main loop running
running = True

# Main loop
while running:
    # for loop through the event queue
    for event in pygame.event.get():
        # Check for KEYDOWN event
        if event.type == KEYDOWN:
            # If the Esc key is pressed, then exit the main loop
            if event.key == K_ESCAPE:
                running = False

        # Check for QUIT event. If QUIT, then set running to false.
        elif event.type == QUIT:
            running = False

    # Fill the screen with black
    # screen.fill((0, 0, 0))

    # Draw the player on the screen
    next(snek_runner)
    # Update the display
    pygame.display.flip()
    clock.tick(snek.frame_rate)
