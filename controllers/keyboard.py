import pygame
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    KEYUP,
    QUIT,
)
import pygame_widgets


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

            # Check for QUIT event.
            elif event.type == QUIT:
                system_queue.put("QUIT")

        pygame_widgets.update(events)
        yield
