import queue
from demos.utils import get_all_from_queue


RUNNING_TIMER = 20
CACTUS_TIMER = 5
PTERODACTYL_TIMER = 5
PTERODACTYL_FLAP_TIMER = 20
SCORE_TIMER = 20


class Cactus:
    def __init__(self, x, y, type):
        self.x = x
        self.y = y
        self.type = type
        self.cactus_timer = CACTUS_TIMER

    def draw_cactus(self, x, type, erase=False):
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
    def __init__(self, x, y, up):
        self.x = x
        self.y = y
        self.up = up
        self.pterodactyl_timer = PTERODACTYL_TIMER
        self.pterodactyl_flap_timer = PTERODACTYL_FLAP_TIMER
        self.flap_up = True

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


class Dinosaur:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        # self.duck = duck
        # self.right = right
        # self.jump = jump
        self.running_timer = RUNNING_TIMER
        self.right_leg = True
        self.is_jumping = False

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

                if jump:
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

                if jump:
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
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 120

        # init demo/game specific variables here
        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        self.score_timer = SCORE_TIMER
        self.gameover = False
        self.score = 0
        self.player = Dinosaur(0, 0)

    def draw_score(self, score):
        """
        Draw the score on the screen

        Args:
            score (int): The score to be displayed
        """

        self.screen.draw_text(
            self.screen.x_width - 20, 2, f"HI 00000 SCORE {score:05}", push=True
        )

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
                    duck = False
                    jump = False

                    for keypress in get_all_from_queue(self.input_queue):
                        # If there are directional buttons pressed
                        if keypress == "UP_P" or keypress == "PRI_P":
                            jump = True
                        if keypress == "UP_R" or keypress == "PRI_R":
                            jump = False
                        if keypress == "DOWN_P":
                            duck = True
                        if keypress == "DOWN_R":
                            duck = False

                self.running_timer -= 1
                self.cactus_timer -= 1
                self.pterodactyl_timer -= 1
                self.pterodactyl_flap_timer -= 1
                self.score_timer -= 1

                if not self.score_timer:
                    self.score += 1
                    self.score_timer = SCORE_TIMER
                    self.draw_score(self.score)

                if not self.running_timer:
                    self.running_timer = RUNNING_TIMER
                    self.right_leg = not self.right_leg
                    self.draw_dino(
                        self.screen.y_height // 2 - 3,
                        right=self.right_leg,
                        erase=True,
                        duck=duck,
                    )
                    self.draw_dino(
                        self.screen.y_height // 2 - 3, right=self.right_leg, duck=duck
                    )

                # if not self.cactus_timer:
                #     j -= 1 if j > 0 else 0
                #     self.cactus_timer = CACTUS_TIMER
                #     self.draw_cactus(j + 1, 0, erase=True)
                #     self.draw_cactus(j, 0, erase=False)

                if not self.pterodactyl_timer:
                    k -= 1 if k > 0 else 0
                    self.pterodactyl_timer = PTERODACTYL_TIMER
                    if not self.pterodactyl_flap_timer:
                        self.pterodactyl_flap_timer = PTERODACTYL_FLAP_TIMER
                        self.flap_up = not self.flap_up
                    self.draw_pterodactyl(
                        k + 1,
                        self.screen.y_height // 2 - 3,
                        up=self.flap_up,
                        erase=True,
                    )
                    self.draw_pterodactyl(
                        k,
                        self.screen.y_height // 2 - 3,
                        up=self.flap_up,
                    )

                self.draw_ground()
                self.screen.push()
                yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
