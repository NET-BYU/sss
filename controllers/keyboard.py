import pygame
import pygame_widgets
from loguru import logger
from pygame.locals import (
    K_DOWN,
    K_ESCAPE,
    K_LEFT,
    K_RCTRL,
    K_RETURN,
    K_RIGHT,
    K_SPACE,
    K_UP,
    KEYDOWN,
    KEYUP,
    QUIT,
    K_n,
)


def check_if_sim():
    try:
        pygame.event.get()
        return True
    except pygame.error:
        logger.warning("Not running in simulator mode. The keyboard has been disabled.")
        return False


def start_processing_input(system_queue, demo_input_queue):
    while True:

        events = pygame.event.get()

        for event in events:
            # Check for KEYDOWN event and pass into input queue
            if event.type == KEYDOWN:
                # If the Esc key is pressed, then exit the main loop
                if event.key == K_ESCAPE:
                    system_queue.put("QUIT")
                elif event.key == K_LEFT:
                    demo_input_queue.put("LEFT_P")
                elif event.key == K_UP:
                    demo_input_queue.put("UP_P")
                elif event.key == K_RIGHT:
                    demo_input_queue.put("RIGHT_P")
                elif event.key == K_DOWN:
                    demo_input_queue.put("DOWN_P")
                elif event.key == K_RETURN:
                    demo_input_queue.put("START_P")
                elif event.key == K_SPACE:
                    demo_input_queue.put("PRI_P")
                elif event.key == K_n:
                    demo_input_queue.put("SEC_P")
                elif event.key == K_RCTRL:
                    demo_input_queue.put("SEL_P")

            # check for KEYUP event and pass into input queue
            elif event.type == KEYUP:
                if event.key == K_LEFT:
                    demo_input_queue.put("LEFT_R")
                elif event.key == K_UP:
                    demo_input_queue.put("UP_R")
                elif event.key == K_RIGHT:
                    demo_input_queue.put("RIGHT_R")
                elif event.key == K_DOWN:
                    demo_input_queue.put("DOWN_R")
                elif event.key == K_RETURN:
                    demo_input_queue.put("START_R")
                elif event.key == K_SPACE:
                    demo_input_queue.put("PRI_R")
                elif event.key == K_n:
                    demo_input_queue.put("SEC_R")
                elif event.key == K_RCTRL:
                    demo_input_queue.put("SEL_R")

            # Check for QUIT event.
            elif event.type == QUIT:
                system_queue.put("QUIT")

        pygame_widgets.update(events)
        yield
