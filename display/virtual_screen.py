import pygame
from pygame.locals import QUIT

from .display import Display
from .virtual_seven_seg import VirtualSevenSegment


class VirtualScreen:
    def __init__(self):
        pygame.init()

        self.window = pygame.display.set_mode((25 * 48 + 150, 30 * 24 + 30))
        self.window.fill((0, 0, 0))

        boards = [
            [
                VirtualSevenSegment(i * 16 * 25, j * 30 * 6, self.window)
                for i in range(3)
            ]
            for j in range(4)
        ]

        self.display = Display(boards, 16 * 3, 12 * 4)
        self.display.clear()

    def create_tick(self, frame_rate):
        clock = pygame.time.Clock()

        while True:
            pygame.display.flip()
            clock.tick(frame_rate)
            yield

    def clear(self):
        self.display.clear()

    def refresh(self):
        self.display.clear()
