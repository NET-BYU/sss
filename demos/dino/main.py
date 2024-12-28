import queue
from demos.utils import get_all_from_queue
import random

DINO_JUMP_TIMER = 7
DINO_RUNNING_TIMER = 15
OBSTACLE_TIMER = 10
PTERODACTYL_FLAP_TIMER = 5
SCORE_TIMER = 10


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
        self.running_timer = DINO_RUNNING_TIMER
        self.jump_timer = DINO_JUMP_TIMER
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

        self.obstacles = [{"type": " "} for i in range(48)]

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

    def draw_cactus(self, x, type, erase=False):
        """
        Draw the cactus on the screen

        Args:
            x (int): The x coordinate of the cactus
            type (int): The type of the cactus
        """

        if not erase:
            if type == 0:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x03)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x02)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x09)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x0F)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 3, 0x0F)
            elif type == 1:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x03)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x02)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x09)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x0F)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x0F)
            elif type == 2:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2, 0x03)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 + 1, 0x02)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2 - 1, 0x09)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x0F)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x0F)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x0F)
        else:
            if type == 0:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x00)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x00)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 3, 0x00)
            elif type == 1:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 - 2, 0x00)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x00)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x00)
            elif type == 2:
                if x <= 47 and x >= 0:
                    self.screen.draw_pixel(x, self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel(x, self.screen.y_height // 2 + 1, 0x00)
                if x + 2 <= 45 and x + 2 >= 0:
                    self.screen.draw_pixel(x + 2, self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 2, 0x00)
                if (x + 1) <= 46 and (x + 1) >= 0:
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 + 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 1, 0x00)
                    self.screen.draw_pixel((x + 1), self.screen.y_height // 2 - 2, 0x00)

    def draw_pterodactyl(self, x, y, up=False, erase=False):
        """
        Draw the pterodactyl on the screen

        Args:
            x (int): The x coordinate of the pterodactyl
            y (int): The y coordinate of the pterodactyl
            up (bool): Whether the pterodactyl is going up or down
            erase (bool): Whether to erase the pterodactyl
        """

        if not erase:
            if x <= 47 and x >= 0:
                self.screen.draw_pixel(x, y, 0x0F)
            if (x + 1) <= 46 and (x + 1) >= 0:
                self.screen.draw_pixel((x + 1), y, 0x01)
            if x + 2 <= 45 and x + 2 >= 0:
                self.screen.draw_pixel(x + 2, y, 0x0F)
                if up:
                    self.screen.draw_pixel(x + 2, y - 1, 0x0F)
                else:
                    self.screen.draw_pixel(x + 2, y + 1, 0x0F)
            if x + 3 <= 44 and x + 3 >= 0:
                self.screen.draw_pixel(x + 3, y, 0x09)
        else:
            if x <= 47 and x >= 0:
                self.screen.draw_pixel(x, y, 0x00)
            if (x + 1) <= 46 and (x + 1) >= 0:
                self.screen.draw_pixel((x + 1), y, 0x00)
            if x + 2 <= 45 and x + 2 >= 0:
                self.screen.draw_pixel(x + 2, y, 0x00)
                self.screen.draw_pixel(x + 2, y - 1, 0x00)
                self.screen.draw_pixel(x + 2, y + 1, 0x00)
            if x + 3 <= 44 and x + 3 >= 0:
                self.screen.draw_pixel(x + 3, y, 0x00)

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
        # self.draw_dino(screen.y_height // 2 - 3)

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
                            print("JUMP")
                            self.jump = True
                        if keypress == "UP_R" or keypress == "PRI_R":
                            self.jump = False
                        if keypress == "DOWN_P":
                            print("DUCK")
                            self.duck = True
                        if keypress == "DOWN_R":
                            self.duck = False

                if self.jump:
                    if self.dino_y == self.screen.y_height // 2 - 3:
                        self.is_jumping = True
                        self.is_going_up = True

                self.running_timer -= 1
                self.jump_timer -= 1
                self.obstacle_timer -= 1
                self.score_timer -= 1

                if not self.score_timer:
                    self.score += 1
                    self.score_timer = SCORE_TIMER
                    self.draw_score(self.score)

                if not self.jump_timer:
                    self.jump_timer = DINO_JUMP_TIMER
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

                    self.running_timer = DINO_RUNNING_TIMER
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
                        next = (
                            random.choice(
                                [
                                    [
                                        {
                                            "type": "p",
                                            "flap_up": True,
                                            "flap_timer": PTERODACTYL_FLAP_TIMER,
                                        }
                                    ],
                                    [{"type": "c", "style": random.choice([0, 1, 2])}],
                                    [
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                    ],
                                ]
                            )
                            if self.obstacles[-1]["type"] == " "
                            else random.choice(
                                [
                                    [
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                    ],
                                    [
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                    ],
                                    [
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                        {"type": " "},
                                    ],
                                ]
                            )
                        )
                        self.obstacles += next
                    self.obstacles = self.obstacles[1:]
                    # print(f"\r{self.obstacles[:48]} {len(self.obstacles)}", end="")

                    for col in range(len(self.obstacles[:48])):
                        if self.obstacles[col]["type"] == "c":
                            self.draw_cactus(
                                col - 3, self.obstacles[col]["style"], erase=True
                            )

                            self.draw_cactus(
                                col - 4, self.obstacles[col]["style"], erase=False
                            )

                        if self.obstacles[col]["type"] == "p":
                            self.obstacles[col]["flap_timer"] -= 1
                            if self.obstacles[col]["flap_timer"] <= 0:
                                self.obstacles[col][
                                    "flap_timer"
                                ] = PTERODACTYL_FLAP_TIMER
                                self.obstacles[col]["flap_up"] = not self.obstacles[
                                    col
                                ]["flap_up"]

                            self.draw_pterodactyl(
                                col - 3,
                                self.screen.y_height // 2 - 4,
                                up=self.obstacles[col]["flap_up"],
                                erase=True,
                            )

                            self.draw_pterodactyl(
                                col - 4,
                                self.screen.y_height // 2 - 4,
                                up=self.obstacles[col]["flap_up"],
                            )

                self.draw_ground()
                self.screen.push()
                yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
