from simulator import Panel
import pygame
import pygame_widgets
from pygame_widgets.button import Button
from pathlib import Path
from loguru import logger
from importlib import import_module, reload
from copy import deepcopy
from display.game_display import Display
from queue import Queue, Empty
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT,
)


class Simulator:
    def __init__(self, width, height, demo_dir="demos"):
        self.width = width
        self.height = height
        self.demo_dir = demo_dir
        pygame.init()
        self.clock = pygame.time.Clock()
        self.screen = pygame.display.set_mode((self.width, self.height))
        self.screen.fill((0, 0, 0))
        self.refresh = pygame.display.flip
        self.input_q = Queue(10)
        self.output_q = Queue(10)
        boards = [[Panel(i * 16 * 25, j * 30 * 6, self.screen) for i in range(3)] for j in range(4)]
        self.disp = Display(boards, 16 * 3, 12 * 4)
        self.disp.clear()
        self._generate_buttons()
        self.demos = {}
        self._reload_demos()
        self.repopulate()
        self._load_game()

    @staticmethod
    def _import_module(module):
        logger.info(f"Loading {module}")
        return import_module(module)

    @staticmethod
    def _reload_module(module):
        logger.info(f"Reloading {module}")
        return reload(module)

    def _reload_demos(self):
        logger.info("Loading demos...")
        demo_path = Path(self.demo_dir)

        # Only import directories
        demos = (d for d in demo_path.iterdir() if d.is_dir())

        # Make sure there is a main in the folder
        demos = (d for d in demos if (d / "main.py").exists())

        # Convert to module notation
        demos = [(d, str(d).replace("/", ".").replace("\\", ".") + ".main") for d in demos]
        self.demos = {str(name)[6:]: self._reload_module(self.demos[str(name)[6:]]) if str(name)[
                                                                                       6:] in self.demos else self._import_module(
            module)
                      for
                      name, module in demos}

    def _load_game(self, game_name="template"):
        self.game = getattr(self.demos[game_name], "_".join([word.capitalize() for word in game_name.split("_")]))(
            self.input_q,
            self.output_q,
            self.disp)
        self.game_runner = self.game.run()
        self.disp.clear()

    def repopulate(self):
        self._reload_demos()
        # for i in range(1, (self.height - 50) // 50):
        #     self.buttons[i].set("text", )
        for index, key in enumerate(self.demos.keys()):
            # print(index, str(key))
            self.buttons[index + 1] = Button(
                # Mandatory Parameters
                self.screen,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                (index + 1) * 51,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height

                # Optional Parameters
                text=str(key),  # Text to display
                fontSize=50,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(200, 50, 0),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda a: self._load_game(a),  # Function to call when clicked on
                onClickParams=[(key)]
            )

    def _generate_buttons(self):
        self.buttons = [Button(
            # Mandatory Parameters
            self.screen,  # Surface to place button on
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
            onClick=lambda: self.repopulate()  # Function to call when clicked on
        )]
        for i in range((self.height - 50) // 50):
            self.buttons.append(
                Button(self.screen, 25 * 48, i * 51 + 51, 150, 50, fontSize=50, margin=20, inactiveColour=(200, 50, 0),
                       # Colour of button when not being interacted with
                       hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                       pressedColour=(0, 200, 20),  # Colour of button when being clicked
                       radius=20, ))

    def start(self):
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
            next(self.game_runner)
            # Update the display
            # screen.blit(button_surface, (25 * 48, 0))
            pygame_widgets.update(events)

            self.refresh()
            self.clock.tick(self.game.frame_rate)


def main():
    sim = Simulator(25 * 48 + 150, 30 * 24)
    sim.start()


if __name__ == "__main__":
    main()
