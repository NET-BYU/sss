import sys
from importlib import import_module, reload
from pathlib import Path
from queue import Queue

import pygame
from loguru import logger
from pygame_widgets.button import Button

import controllers
from display.virtual_screen import VirtualScreen
from runners import utils


class Simulator:
    """This is the simulator class that runs the demos."""

    def __init__(self, width, height, demo_dir="demos"):
        """Constructor

        Args:
            width (int): Width of the screen.
            height (int): Height of the screen.
            demo_dir (str): Directory where the demos are located.
        """
        self.width = width
        self.height = height
        self.demo_dir = demo_dir

        self.screen = VirtualScreen()

        # input and output queues
        self.system_q = Queue(10)
        self.input_q = Queue(10)
        self.output_q = Queue(10)

        # drawing of the output queue
        self.text_font = pygame.font.SysFont("arial", 32)
        self.lives_text = self.text_font.render(
            "LIVES: ", False, (255, 165, 0), (0, 0, 0)
        )
        self.score_text = self.text_font.render(
            "SCORE: ", False, (255, 165, 0), (0, 0, 0)
        )
        self.lives_prev = ""
        self.score_prev = ""
        self.screen.window.blit(self.lives_text, (0, 720))
        self.screen.window.blit(self.score_text, (300, 720))

        # variables for hot loadable demos
        self.demo_lst = []
        self.demo_list_index = 0
        self.demos = {}

        # set up the start display
        self.screen.clear()
        self._generate_buttons()
        self._reload_demos()
        self.game = utils.get_demo_cls(self.demos["template"])(
            self.input_q, self.output_q, self.screen.display
        )
        self.repopulate()
        self._load_game()

    @staticmethod
    def _import_module(module):
        """Import the module for the first time.

        Args:
            module (str): Name of the module to import.

        Returns:
            module: The imported module.
        """
        # First time loading of the demo module
        logger.info(f"Loading {module}")
        return import_module(module)

    @staticmethod
    def _reload_module(module):
        """Reload the module.

        Args:
            module (module): The module to reload.

        Returns:
            module: The reloaded module.
        """
        # Hot reload the demo module
        logger.info(f"Reloading {module}")
        return reload(module)

    def _reload_demos(self):
        """Reload all the demos in the demo folder."""
        # Hot load all the demos in the demo folder
        logger.info("Loading demos...")
        demos = utils.get_demos(self.demo_dir)

        self.demos = {
            name: (
                self._reload_module(self.demos[name])
                if name in self.demos
                else self._import_module(module)
            )
            for name, module in demos
        }
        self._repopulate_demo_list()

    def _repopulate_demo_list(self):
        """Repopulate the demo list."""
        # if there are more than 13 demos break them up into different pages
        self.demo_lst.clear()
        # create lists to display demos better
        for index, key in enumerate(self.demos.keys()):
            if index % 13 == 0:
                self.demo_lst.append([])
            self.demo_lst[-1].append(key)
        self.demo_list_index = 0

    def _load_game(self, game_name="template"):
        """Load the game.

        Args:
            game_name (str): Name of the game to load.
        """
        self.lives_text = self.text_font.render(
            "LIVES: " + self.lives_prev, False, (0, 0, 0), (0, 0, 0)
        )
        self.screen.window.blit(self.lives_text, (0, 720))
        self.score_text = self.text_font.render(
            "SCORE: " + self.score_prev, False, (0, 0, 0), (0, 0, 0)
        )
        self.screen.window.blit(self.score_text, (300, 720))

        # stop the current game
        self.game.stop()

        self.game = utils.get_demo_cls(self.demos[game_name])(
            self.input_q, self.output_q, self.screen.display
        )
        self.game_runner = self.game.run()
        self.screen.clear()

    def repopulate(self):
        """Repopulate the screen."""
        # Hot load demos and populate selection buttons on the screen
        self._reload_demos()
        # for i in range(1, (self.height - 50) // 50):
        #     self.buttons[i].set("text", )
        # for index, key in enumerate(self.demos.keys()):
        #     # print(index, str(key))
        #     self.buttons[index + 1] = Button(
        #         # Mandatory Parameters
        #         self.screen,  # Surface to place button on
        #         25 * 48,  # X-coordinate of top left corner
        #         (index + 1) * 51,  # Y-coordinate of top left corner
        #         150,  # Width
        #         50,  # Height

        #         # Optional Parameters
        #         text=str(key),  # Text to display
        #         fontSize=20,  # Size of font
        #         margin=20,  # Minimum distance between text/image and edge of button
        #         inactiveColour=(200, 50, 0),  # Colour of button when not being interacted with
        #         hoverColour=(150, 0, 0),  # Colour of button when being hovered over
        #         pressedColour=(0, 200, 20),  # Colour of button when being clicked
        #         radius=20,  # Radius of border corners (leave empty for not curved)
        #         onClick=lambda a: self._load_game(a),  # Function to call when clicked on
        #         onClickParams=[key]
        #     )

        for index in range(13):
            if index >= len(self.demo_lst[self.demo_list_index]):
                text_str = ""
                key = "template"
            else:
                text_str = self.demo_lst[self.demo_list_index][index]
                key = text_str
            self.buttons[index + 1] = Button(
                # Mandatory Parameters
                self.screen.window,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                (index + 1) * 51,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height
                # Optional Parameters
                text=str(text_str),  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(
                    200,
                    50,
                    0,
                ),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda a: self._load_game(
                    a
                ),  # Function to call when clicked on
                onClickParams=[key],
            )

    def _update_page_count(self):
        """Update the page count."""
        # update which demo buttons are displayed
        self.demo_list_index += 1
        if self.demo_list_index >= len(self.demo_lst):
            self.demo_list_index = 0
        for index in range(13):
            if index >= len(self.demo_lst[self.demo_list_index]):
                text_str = ""
                key = "template"
            else:
                text_str = self.demo_lst[self.demo_list_index][index]
                key = text_str
            self.buttons[index + 1] = Button(
                # Mandatory Parameters
                self.screen.window,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                (index + 1) * 51,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height
                # Optional Parameters
                text=str(text_str),  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(
                    200,
                    50,
                    0,
                ),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda a: self._load_game(
                    a
                ),  # Function to call when clicked on
                onClickParams=[key],
            )

    def _generate_buttons(self):
        """Generate the buttons for the screen."""
        self.buttons = [
            Button(
                # Mandatory Parameters
                self.screen.window,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                0,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height
                # Optional Parameters
                text="RELOAD",  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(
                    255,
                    165,
                    0,
                ),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda: self.repopulate(),  # Function to call when clicked on
            )
        ]
        for i in range(13):
            self.buttons.append(
                Button(
                    self.screen.window,
                    25 * 48,
                    i * 51 + 51,
                    150,
                    50,
                    fontSize=50,
                    margin=20,
                    inactiveColour=(200, 50, 0),
                    # Colour of button when not being interacted with
                    hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                    pressedColour=(0, 200, 20),  # Colour of button when being clicked
                    radius=20,
                )
            )
        self.buttons.append(
            Button(
                # Mandatory Parameters
                self.screen.window,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                51 + 13 * 51,  # Y-coordinate of top left corner
                150,  # Width
                35,  # Height
                # Optional Parameters
                text="MORE",  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(
                    255,
                    165,
                    0,
                ),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda: self._update_page_count(),  # Function to call when clicked on
            )
        )

    def start(self):
        """Start the main loop."""
        handle_input = controllers.start_inputs(self.system_q, self.input_q)
        tick = self.screen.create_tick(self.game.frame_rate)

        try:
            # Main loop
            while True:
                # Read input from different input devices
                next(handle_input)

                while not self.system_q.empty():
                    system_event = self.system_q.get()
                    if system_event == "QUIT":
                        pygame.quit()
                        sys.exit(0)

                # Tick the selected game function
                next(self.game_runner)
                self.input_q.queue.clear()  # keep the input queue cleared up

                # Process the output queue completely
                while not self.output_q.empty():
                    # parse the message
                    msg = self.output_q.get()
                    msg_type, msg_content = msg.split(" ", maxsplit=1)
                    if msg_type == "LIVES":
                        self.lives_text = self.text_font.render(
                            "LIVES: " + self.lives_prev, False, (0, 0, 0), (0, 0, 0)
                        )
                        self.screen.window.blit(self.lives_text, (0, 720))
                        self.lives_text = self.text_font.render(
                            "LIVES: " + msg_content, False, (255, 165, 0), (0, 0, 0)
                        )
                        self.lives_prev = msg_content
                        self.screen.window.blit(self.lives_text, (0, 720))
                    if msg_type == "SCORE":
                        self.score_text = self.text_font.render(
                            "SCORE: " + self.score_prev, False, (0, 0, 0), (0, 0, 0)
                        )
                        self.screen.window.blit(self.score_text, (300, 720))
                        self.score_text = self.text_font.render(
                            "SCORE: " + msg_content, False, (255, 165, 0), (0, 0, 0)
                        )
                        self.score_prev = msg_content
                        self.screen.window.blit(self.score_text, (300, 720))

                next(tick)
        except KeyboardInterrupt:
            logger.debug("Handling keyboard interrupt")
            logger.info("Stopping current demo")
            self.game.stop()
            self.screen.clear()


def run():
    """Run the simulator."""
    sim = Simulator(25 * 48 + 150, 30 * 24 + 30, "demos")
    sim.start()


if __name__ == "__main__":
    run()
