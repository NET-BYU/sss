import queue
from demos.utils import get_all_from_queue
import random

RUNNING_TIMER = 6
OBSTACLE_TIMER = 5
PTERODACTYL_FLAP_TIMER = 10
SCORE_TIMER = 10

class Cactus:

    def __init__(self, x, type, screen):
        self.x = x
        self.type = type
        self.screen = screen

    def draw(self, x, type, erase=False):
        """
        Draw the cactus on the screen

        Args:
            x (int): The x coordinate of the cactus
            type (int): The type of the cactus
        """

        if not erase:
            if type == 0:
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x03)
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x02)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x09)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 3, 0x0F)
            elif type == 1:
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x03)
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x02)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x09)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x0F)
            elif type == 2:
                self.screen.draw_pixel(x, self.screen.y_height // 2, 0x03)
                self.screen.draw_pixel(x, self.screen.y_height // 2 + 1, 0x02)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2 - 1, 0x09)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x0F)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x0F)
        else:
            if type == 0:
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x00)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 3, 0x00)
            elif type == 1:
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x00)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x00)
            elif type == 2:
                self.screen.draw_pixel(x, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x, self.screen.y_height // 2 + 1, 0x00)
                self.screen.draw_pixel(x + 2, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 + 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 1, 0x00)
                self.screen.draw_pixel(x + 1, self.screen.y_height // 2 - 2, 0x00)



class Pterodactyl:

    def __init__(self, x, y, screen):
        self.x = x
        self.y = y
        self.screen = screen

        self.flap_up = True
        self.pterodactyl_flap_timer = PTERODACTYL_FLAP_TIMER

    def draw(self, x, y, up=False, erase=False):
        """
        Draw the pterodactyl on the screen

        Args:
            x (int): The x coordinate of the pterodactyl
            y (int): The y coordinate of the pterodactyl
            up (bool): Whether the pterodactyl is going up or down
            erase (bool): Whether to erase the pterodactyl
        """

        if not erase:
            self.screen.draw_pixel(x, y, 0x0F)
            self.screen.draw_pixel(x + 1, y, 0x01)
            self.screen.draw_pixel(x + 2, y, 0x0F)
            if up:
                self.screen.draw_pixel(x + 2, y - 1, 0x0F)
            else:
                self.screen.draw_pixel(x + 2, y + 1, 0x0F)
            self.screen.draw_pixel(x + 3, y, 0x09)
        else:
            self.screen.draw_pixel(x, y, 0x00)
            self.screen.draw_pixel(x + 1, y, 0x00)
            self.screen.draw_pixel(x + 2, y, 0x00)
            self.screen.draw_pixel(x + 2, y - 1, 0x00)
            self.screen.draw_pixel(x + 2, y + 1, 0x00)
            self.screen.draw_pixel(x + 3, y, 0x00)


class Dino:
    """
    This is a demo that imitates the dino game from chrome
    """

    demo_time = None  # Number of seconds or None if its game

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue for user input
            output_queue (Queue): Queue for game output
            screen (Screen): Screen object
        """
        # System Vars
        self.frame_rate = 120
        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # Timers
        self.running_timer = RUNNING_TIMER
        self.obstacle_timer = OBSTACLE_TIMER
        self.score_timer = SCORE_TIMER

        # Game Vars
        self.gameover = False
        self.score = 0

        # Dino Vars
        self.right_leg = True
        self.is_jumping = False
        self.is_going_up = False
        self.dino_y_prev = self.screen.y_height // 2 - 3
        self.dino_y = self.screen.y_height // 2 - 3
        self.duck = False
        self.jump = False

        self.obstacles = [" " for i in range(48)]

        self.test_pterodactyl = Pterodactyl(10, self.screen.y_height // 2 - 3, self.screen)
        self.test_cactus = Cactus(10, 0, self.screen)

    def draw_score(self, score):
        """
        Draw the score on the screen

        Args:
            score (int): The score to be displayed
        """

        self.screen.draw_text(
            self.screen.x_width - 20, 2, f"HI 00000 SCORE {score:05}", push=True
        )

    def draw_dino(self, y, duck=False, right=False, jump=False, erase=False):
        """
        Draw the dino on the screen

        Args:
            y (int): The y coordinate of the dino
        """

        if not erase:
            if not duck:
                self.screen.draw_pixel(3, y, 0x0F)
                self.screen.draw_pixel(2, y + 1, 0x0F)
                self.screen.draw_pixel(3, y + 2, 0x04)
                self.screen.draw_pixel(2, y + 2, 0x0F)
                self.screen.draw_pixel(1, y + 2, 0x03)
                self.screen.draw_pixel(2, y + 3, 0x0A)

                if self.is_jumping:
                    self.screen.draw_pixel(2, y + 4, 0x0A)
                elif right:
                    self.screen.draw_pixel(2, y + 4, 0x08)
                else:
                    self.screen.draw_pixel(2, y + 4, 0x02)
            else:
                self.screen.draw_pixel(4, y + 2, 0x0F)
                self.screen.draw_pixel(3, y + 2, 0x0F)
                self.screen.draw_pixel(3, y + 2, 0x04)
                self.screen.draw_pixel(2, y + 2, 0x0F)
                self.screen.draw_pixel(1, y + 2, 0x03)
                self.screen.draw_pixel(2, y + 3, 0x0A)
                self.screen.draw_pixel(4, y + 3, 0x03)

                if self.is_jumping:
                    self.screen.draw_pixel(2, y + 4, 0x0A)
                elif right:
                    self.screen.draw_pixel(2, y + 4, 0x08)
                else:
                    self.screen.draw_pixel(2, y + 4, 0x02)
        else:
            for i in [1, 2, 3, 4]:
                for j in [0, 1, 2, 3, 4]:
                    self.screen.draw_pixel(i, j, 0x00)
                    self.screen.draw_pixel(i, y + j, 0x00)

    def draw_ground(self):
        """
        Draw the ground on the screen
        """

        self.screen.draw_hline(0, (self.screen.y_height // 2) + 2, self.screen.x_width)

    def init_screen(self, screen):
        """
        Initialize the screen

        Args:
            screen (Screen): The screen object
        """

        screen.clear()
        self.draw_score(0)
        self.draw_dino(screen.y_height // 2 - 3)

    def run(self):
        """Main loop for the demo"""
        # Create generator here

        self.score = 0
        j = self.screen.x_width // 2
        k = self.screen.x_width * 2 // 3

        # Waits for user ready
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 8, "DINO RUN"
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 4,
            "PRESS START",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 2, "TO BEGIN"
        )
        self.screen.push()

        # Don't start until user presses start
        while True:
            try:
                if self.input_queue.get(block=False) == "START_P":
                    break
            except queue.Empty:
                pass
            yield

        # Erase startup text and initialize screen
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 8, "        "
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 4,
            "           ",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 2, "        "
        )
        self.screen.push()
        self.init_screen(self.screen)

        while True:
            while not self.gameover:
                if not self.input_queue.empty():
                    # Check to see if there are any keypresses to read

                    for keypress in get_all_from_queue(self.input_queue):
                        # If there are directional buttons pressed
                        if keypress == "UP_P" or keypress == "PRI_P":
                            self.jump = True
                        if keypress == "UP_R" or keypress == "PRI_R":
                            self.jump = False
                        if keypress == "DOWN_P":
                            self.duck = True
                        if keypress == "DOWN_R":
                            self.duck = False

                if self.jump:
                    if self.dino_y == self.screen.y_height // 2 - 3:
                        self.is_jumping = True
                        self.is_going_up = True

                self.running_timer -= 1
                self.obstacle_timer -= 1
                self.test_pterodactyl.pterodactyl_flap_timer -= 1
                self.score_timer -= 1

                if not self.score_timer:
                    self.score += 1
                    self.score_timer = SCORE_TIMER
                    self.draw_score(self.score)

                # if not self.running_timer:
                if self.is_jumping:
                    self.dino_y_prev = self.dino_y
                    if self.is_going_up:
                        if self.dino_y > self.screen.y_height // 2 - 12:
                            self.dino_y -= 1
                        elif self.dino_y == self.screen.y_height // 2 - 12:
                            self.is_going_up = False
                    else:
                        if self.dino_y < self.screen.y_height // 2 - 3:
                            self.dino_y += 1
                        elif self.dino_y == self.screen.y_height // 2 - 3:
                            self.is_jumping = False


                    self.running_timer = RUNNING_TIMER
                    self.right_leg = not self.right_leg
                    self.draw_dino(
                        self.dino_y_prev,
                        right=self.right_leg,
                        erase=True,
                        duck=self.duck,
                    )
                    self.draw_dino(
                        self.dino_y, right=self.right_leg, duck=self.duck
                    )

                if not self.obstacle_timer:
                    self.obstacle_timer = OBSTACLE_TIMER
                    if len(self.obstacles) < 100:
                        next = random.choice([["p"], ["c"], [" ", " ", " ", " ", " ", " ", " ", " ", " "]]) if self.obstacles[-1] == " " else random.choice([[" ", " ", " ", " ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " ", " ", " ", " "], [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]])
                        self.obstacles += next
                    self.obstacles = self.obstacles[1:]
                    print(f"\r{self.obstacles[:48]} {len(self.obstacles)}", end="")

                    for col in range(len(self.obstacles)):
                        if self.obstacles[col] == "c":
                            if col + 1 <= 44:
                                self.test_cactus.draw(col + 1, 0, erase=True)
                            if col <= 44:
                                self.test_cactus.draw(col, 0, erase=False)

                        if self.obstacles[col] == "p":
                            if not self.test_pterodactyl.pterodactyl_flap_timer:
                                self.test_pterodactyl.pterodactyl_flap_timer = PTERODACTYL_FLAP_TIMER
                                self.test_pterodactyl.flap_up = not self.test_pterodactyl.flap_up

                            if col + 1 <= 44:
                                self.test_pterodactyl.draw(
                                    col + 1,
                                    self.screen.y_height // 2 - 4,
                                    up=self.test_pterodactyl.flap_up,
                                    erase=True,
                                )
                            if col <= 44:
                                self.test_pterodactyl.draw(
                                    col,
                                    self.screen.y_height // 2 - 4,
                                    up=self.test_pterodactyl.flap_up,
                                )

                self.draw_ground()
                self.screen.push()
                yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
