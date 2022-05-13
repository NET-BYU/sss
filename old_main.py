# Import the pygame module
import pygame
import pygame_widgets
from pygame_widgets.button import Button
from simulator import Panel
from display import game_display
# import demos.snake_ai.main as snake_ai
from queue import Queue, Empty
from loguru import logger
from importlib import import_module, reload
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
    print("here", module)
    logger.info(f"Loading {module}")
    return import_module(module)


def load_demos(demo_dir="demos"):
    logger.info("Loading demos...")
    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = ((d, str(d).replace("/", ".").replace("\\", ".") + ".main") for d in demos)
    return {str(name)[6:]: load_demo(module) for name, module in demos}


def reload_demos(prev_demos, demo_dir="demos"):
    demo_dict = {}
    logger.info("Loading demos...")
    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = [(d, str(d).replace("/", ".").replace("\\", ".") + ".main") for d in demos]
    return {str(name)[6:]: reload(prev_demos[str(name)[6:]]) if str(name)[6:] in prev_demos else load_demo(module) for
            name, module in demos}


demos_modules = reload_demos({}, "demos")

# Define constants for the screen width and height
SCREEN_WIDTH = 25 * 48 + 150
SCREEN_HEIGHT = 30 * 24

# Initialize pygame
pygame.init()
clock = pygame.time.Clock()

# Create the screen object
# The size is determined by the constant SCREEN_WIDTH and SCREEN_HEIGHT
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
screen.fill((0, 0, 0))
pygame.display.flip()

# Creates the button with optional parameters
button_surface = pygame.Surface((150, 30 * 24))
button = Button(
    # Mandatory Parameters
    screen,  # Surface to place button on
    25 * 48,  # X-coordinate of top left corner
    0,  # Y-coordinate of top left corner
    150,  # Width
    50,  # Height

    # Optional Parameters
    text='RELOAD',  # Text to display
    fontSize=50,  # Size of font
    margin=20,  # Minimum distance between text/image and edge of button
    inactiveColour=(200, 50, 0),  # Colour of button when not being interacted with
    hoverColour=(150, 0, 0),  # Colour of button when being hovered over
    pressedColour=(0, 200, 20),  # Colour of button when being clicked
    radius=20,  # Radius of border corners (leave empty for not curved)
    onClick=lambda: reload_demos(demos_modules, "demos")  # Function to call when clicked on
)
# screen.blit(button_surface, (25 * 48, 0))
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

game = getattr(demos_modules["snake_ai"], "_".join([word.capitalize() for word in "snake_ai".split("_")]))(input_q,
                                                                                                           output_q,
                                                                                                           disp)
# snek = globals()["snake_ai"](input_q,output_q,disp)
# snek = snake_ai.Snake_AI(input_q, output_q, disp)
game_runner = game.run()

# panel_0.raw2(2, 2, 91, True)

# Variable to keep the main loop running
running = True

# Main loop
while running:
    # for loop through the event queue
    events = pygame.event.get()
    for event in events:
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
    next(game_runner)
    # Update the display
    # screen.blit(button_surface, (25 * 48, 0))
    pygame_widgets.update(events)

    pygame.display.flip()
    clock.tick(game.frame_rate)
