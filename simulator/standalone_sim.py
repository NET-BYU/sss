from simulator import Panel
import sys

import sys
import os
  
# getting the name of the directory
# where the this file is present.
current = os.path.dirname(os.path.realpath(__file__))
  
# Getting the parent directory name
# where the current directory is present.
parent = os.path.dirname(current)
  
# adding the parent directory to 
# the sys.path.
sys.path.append(parent)
import pygame
import pygame_widgets
from pygame_widgets.button import Button
from pathlib import Path
from loguru import logger
from importlib import import_module, reload
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
        self.text_font = pygame.font.SysFont("arial", 32)
        self.lives_text = self.text_font.render("LIVES: ", False, (255, 165, 0), (0, 0, 0))
        self.score_text = self.text_font.render("SCORE: ", False, (255, 165, 0), (0, 0, 0))
        self.lives_prev = ""
        self.score_prev = ""
        # self.lives_text_rect = self.lives_text.get_rect()
        # self.lives_text_rect.center = (self.width // 2, self.height - 50)
        self.screen.blit(self.lives_text, (0, 720))
        self.screen.blit(self.score_text, (300, 720))
        boards = [[Panel(i * 16 * 25, j * 30 * 6, self.screen) for i in range(3)] for j in range(4)]
        self.disp = Display(boards, 16 * 3, 12 * 4)
        self.demo_lst = []
        self.demo_list_index = 0
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
        self._repopulate_demo_list()

    def _repopulate_demo_list(self):
        self.demo_lst.clear()
        # create lists to display demos better
        for index, key in enumerate(self.demos.keys()):
            if index % 13 == 0:
                self.demo_lst.append([])
            self.demo_lst[-1].append(key)
        self.demo_list_index = 0

    def _load_game(self, game_name="template"):
        self.lives_text = self.text_font.render("LIVES: " +
                                                self.lives_prev, False, (0, 0, 0), (0, 0, 0))
        self.screen.blit(self.lives_text, (0, 720))
        self.score_text = self.text_font.render("SCORE: " + self.score_prev, False, (0, 0, 0), (0, 0, 0))
        self.screen.blit(self.score_text, (300, 720))

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
                self.screen,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                (index + 1) * 51,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height

                # Optional Parameters
                text=str(text_str),  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(200, 50, 0),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda a: self._load_game(a),  # Function to call when clicked on
                onClickParams=[key])

    def _update_page_count(self):
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
                self.screen,  # Surface to place button on
                25 * 48,  # X-coordinate of top left corner
                (index + 1) * 51,  # Y-coordinate of top left corner
                150,  # Width
                50,  # Height

                # Optional Parameters
                text=str(text_str),  # Text to display
                fontSize=20,  # Size of font
                margin=20,  # Minimum distance between text/image and edge of button
                inactiveColour=(200, 50, 0),  # Colour of button when not being interacted with
                hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                pressedColour=(0, 200, 20),  # Colour of button when being clicked
                radius=20,  # Radius of border corners (leave empty for not curved)
                onClick=lambda a: self._load_game(a),  # Function to call when clicked on
                onClickParams=[key])

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
            fontSize=20,  # Size of font
            margin=20,  # Minimum distance between text/image and edge of button
            inactiveColour=(255, 165, 0),  # Colour of button when not being interacted with
            hoverColour=(150, 0, 0),  # Colour of button when being hovered over
            pressedColour=(0, 200, 20),  # Colour of button when being clicked
            radius=20,  # Radius of border corners (leave empty for not curved)
            onClick=lambda: self.repopulate()  # Function to call when clicked on
        )]
        for i in range(13):
            self.buttons.append(
                Button(self.screen, 25 * 48, i * 51 + 51, 150, 50, fontSize=50, margin=20, inactiveColour=(200, 50, 0),
                       # Colour of button when not being interacted with
                       hoverColour=(150, 0, 0),  # Colour of button when being hovered over
                       pressedColour=(0, 200, 20),  # Colour of button when being clicked
                       radius=20, ))
        self.buttons.append(Button(
            # Mandatory Parameters
            self.screen,  # Surface to place button on
            25 * 48,  # X-coordinate of top left corner
            51+13*51,  # Y-coordinate of top left corner
            150,  # Width
            35,  # Height

            # Optional Parameters
            text='MORE',  # Text to display
            fontSize=20,  # Size of font
            margin=20,  # Minimum distance between text/image and edge of button
            inactiveColour=(255, 165, 0),  # Colour of button when not being interacted with
            hoverColour=(150, 0, 0),  # Colour of button when being hovered over
            pressedColour=(0, 200, 20),  # Colour of button when being clicked
            radius=20,  # Radius of border corners (leave empty for not curved)
            onClick=lambda: self._update_page_count()  # Function to call when clicked on
        ))

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
                    if event.key == K_LEFT:
                        self.input_q.put("l")
                    if event.key == K_UP:
                        self.input_q.put("u")
                    if event.key == K_RIGHT:
                        self.input_q.put("r")
                    if event.key == K_DOWN:
                        self.input_q.put("d")

                # Check for QUIT event. If QUIT, then set running to false.
                elif event.type == QUIT:
                    running = False

            # Fill the screen with black
            # screen.fill((0, 0, 0))

            # Draw the player on the screen
            next(self.game_runner)
            self.input_q.queue.clear()
            while not self.output_q.empty():
                # parse the message
                msg = self.output_q.get()
                msg_type, msg_content = msg.split(" ", maxsplit=1)
                if msg_type == "LIVES":
                    self.lives_text = self.text_font.render("LIVES: " + self.lives_prev, False, (0, 0, 0), (0, 0, 0))
                    self.screen.blit(self.lives_text, (0, 720))
                    self.lives_text = self.text_font.render("LIVES: " + msg_content, False, (255, 165, 0), (0, 0, 0))
                    self.lives_prev = msg_content
                    self.screen.blit(self.lives_text, (0, 720))
                if msg_type == "SCORE":
                    self.score_text = self.text_font.render("SCORE: " + self.score_prev, False, (0, 0, 0), (0, 0, 0))
                    self.screen.blit(self.score_text, (300, 720))
                    self.score_text = self.text_font.render("SCORE: " + msg_content, False, (255, 165, 0), (0, 0, 0))
                    self.score_prev = msg_content
                    self.screen.blit(self.score_text, (300, 720))

            # Update the display
            # screen.blit(button_surface, (25 * 48, 0))
            pygame_widgets.update(events)

            self.refresh()
            self.clock.tick(self.game.frame_rate)


def main():
    sim = Simulator(25 * 48 + 150, 30 * 24 + 30,"demos")
    sim.start()


if __name__ == "__main__":
    main()
