from random import choice, getrandbits, randint, random, uniform

from loguru import logger

SCREEN_X = 48
ARENA_START = 14
ARENA_END = ARENA_START - 15
LEFT_KEY = 0x61
RIGHT_KEY = 0x64
QUIT_KEY = 0x71
LEFT_BRICK = 0x7
RIGHT_BRICK = 0xD
PIXEL_ON = 0xF
PIXEL_OFF = 0x0
BALL_SPEED = 0
SCORE_INC = 5


class BreakoutAi:
    """This is the breakout_ai demo. It plays the classic Atari game breakout"""

    demo_time = 120

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object

    def __init__(self, input_queue, output_queue, screen):
        """Constructor

        Args:
            input_queue (Queue): Input queue
            output_queue (Queue): Output queue
            screen (Screen): Screen object
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 25

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

        self.paddle = [24]
        self.ball = []
        self.bricks = {}
        self.level = 1
        self.line_left = 0
        self.line_right = 0
        self.rows = self.level + 2
        self.last_predicted_landing = 1000

    def run(self):
        """Runs the game loop"""
        screen = self.screen

        logger.info("BREAKOUT")

        is_left = True
        is_down = True
        # paddle_counter = 0
        gameover = False
        start = False
        repeat_right = False
        repeat_left = False
        score = 0
        # speed = BALL_SPEED
        spin = 1
        lives = 5

        self.level = 1

        self.init_screen(self.screen)

        has_overshot = False
        random_idle_move_chance = 0.05  # Chance of idle movement (5%)
        random_overshoot_factor = randint(1, 2)  # Add some variability to overshooting

        while True:
            while not gameover:
                if not self.input_queue.empty():
                    input_ = self.input_queue.get(block=False)
                else:
                    input_ = ""

                if self.ball[1] <= self.level + 2:
                    row = self.ball[1]
                    if row in self.bricks.keys():
                        if self.ball[0] in self.bricks[row]:
                            is_down = not is_down
                            score += SCORE_INC
                            self.output_queue.put("SCORE " + str(score))

                            self.bricks[row].remove(self.ball[0])
                            screen.draw_pixel(self.ball[0], row, PIXEL_OFF)
                            if not self.ball[0] % 2:
                                self.bricks[row].remove(self.ball[0] + 1)
                                screen.draw_pixel(self.ball[0] + 1, row, PIXEL_OFF)
                            else:
                                self.bricks[row].remove(self.ball[0] - 1)
                                screen.draw_pixel(self.ball[0] - 1, row, PIXEL_OFF)
                    if self.level_up():
                        score += SCORE_INC * 20
                        self.level += 1
                        if lives <= 4:
                            lives += 1
                            self.output_queue.put("LIVES " + str(lives))

                        self.init_screen(screen)

                screen.draw_pixel(self.ball[0], self.ball[1], PIXEL_OFF)

                # Bounds check for ball
                if self.ball[0] <= self.line_left + 1:
                    is_left = False
                if self.ball[0] >= self.line_right - 1:
                    is_left = True
                if self.ball[1] == 0:
                    is_down = True
                if self.ball[1] == screen.y_height - 2:
                    if self.ball[0] in self.paddle:
                        spin, is_left = self.get_angle(self.paddle)
                        self.frame_rate = self.frame_rate * spin // (1 + spin // 2)
                        is_down = False
                if self.ball[1] >= screen.y_height - 1:
                    is_down = True

                    screen.draw_pixel(
                        self.ball[0], self.ball[1], PIXEL_OFF, combine=False, push=True
                    )
                    if lives == 0:
                        gameover = True
                        break
                    self.ball[0] = screen.x_width // 2
                    self.ball[1] = screen.y_height // 2

                is_left, is_down = self.ball_travel(is_left, is_down, spin, screen)
                predicted_landing = self.predict_ball_landing(
                    is_left, is_down, spin, screen
                )

                # Add random chance for idle movement (move the paddle randomly even if it's aligned)
                if random() < random_idle_move_chance:
                    if choice([True, False]):
                        # Randomly move left or right by 1 pixel
                        if self.paddle[0] > self.line_left + 1:
                            for val in range(len(self.paddle)):
                                self.paddle[val] -= 1
                            screen.draw_pixel(
                                self.paddle[0],
                                screen.y_height - 1,
                                PIXEL_ON,
                                combine=False,
                            )
                            screen.draw_pixel(
                                self.paddle[-1] + 1,
                                screen.y_height - 1,
                                PIXEL_OFF,
                                combine=False,
                            )
                    else:
                        if self.paddle[-1] < self.line_right - 1:
                            for val in range(len(self.paddle)):
                                self.paddle[val] += 1
                            screen.draw_pixel(
                                self.paddle[0] - 1,
                                screen.y_height - 1,
                                PIXEL_OFF,
                                combine=False,
                            )
                            screen.draw_pixel(
                                self.paddle[-1],
                                screen.y_height - 1,
                                PIXEL_ON,
                                combine=False,
                            )
                    # Skip to the next frame after a random idle move
                    continue

                # If the paddle hasn't overshot yet, move toward the predicted landing spot
                if not has_overshot:
                    if predicted_landing > self.paddle[-1]:
                        if self.paddle[-1] < self.line_right - 1:
                            # Move paddle right
                            for val in range(len(self.paddle)):
                                self.paddle[val] += 1

                            # If paddle overshoots by 1-2 spots (with randomness), mark it
                            if (
                                self.paddle[-1]
                                > predicted_landing + random_overshoot_factor
                            ):
                                has_overshot = True

                            # Update the screen pixels for the paddle movement
                            screen.draw_pixel(
                                self.paddle[0] - 1,
                                screen.y_height - 1,
                                PIXEL_OFF,
                                combine=False,
                            )
                            screen.draw_pixel(
                                self.paddle[-1],
                                screen.y_height - 1,
                                PIXEL_ON,
                                combine=False,
                            )

                    elif predicted_landing < self.paddle[0]:
                        if self.paddle[0] > self.line_left + 1:
                            # Move paddle left
                            for val in range(len(self.paddle)):
                                self.paddle[val] -= 1

                            # If paddle overshoots by 1-2 spots (with randomness), mark it
                            if (
                                self.paddle[0]
                                < predicted_landing - random_overshoot_factor
                            ):
                                has_overshot = True

                            # Update the screen pixels for the paddle movement
                            screen.draw_pixel(
                                self.paddle[0],
                                screen.y_height - 1,
                                PIXEL_ON,
                                combine=False,
                            )
                            screen.draw_pixel(
                                self.paddle[-1] + 1,
                                screen.y_height - 1,
                                PIXEL_OFF,
                                combine=False,
                            )

                # If the paddle has overshot, move it back to the correct position
                else:
                    # Random chance to delay correction (add randomness to recovery)
                    if random() > 0.1:  # 90% chance to correct normally
                        if self.paddle[0] > predicted_landing:
                            if self.paddle[0] > self.line_left + 1:
                                # Move left if overshot to the right
                                for val in range(len(self.paddle)):
                                    self.paddle[val] -= 1

                                # If paddle aligns with the predicted landing spot, reset overshot flag
                                if self.paddle[0] == predicted_landing:
                                    has_overshot = False

                                # Update the screen pixels for the paddle movement
                                screen.draw_pixel(
                                    self.paddle[0],
                                    screen.y_height - 1,
                                    PIXEL_ON,
                                    combine=False,
                                )
                                screen.draw_pixel(
                                    self.paddle[-1] + 1,
                                    screen.y_height - 1,
                                    PIXEL_OFF,
                                    combine=False,
                                )

                        elif self.paddle[-1] < predicted_landing:
                            if self.paddle[-1] < self.line_right - 1:
                                # Move right if overshot to the left
                                for val in range(len(self.paddle)):
                                    self.paddle[val] += 1

                                # If paddle aligns with the predicted landing spot, reset overshot flag
                                if self.paddle[-1] == predicted_landing:
                                    has_overshot = False

                                # Update the screen pixels for the paddle movement
                                screen.draw_pixel(
                                    self.paddle[0] - 1,
                                    screen.y_height - 1,
                                    PIXEL_OFF,
                                    combine=False,
                                )
                                screen.draw_pixel(
                                    self.paddle[-1],
                                    screen.y_height - 1,
                                    PIXEL_ON,
                                    combine=False,
                                )

                # Handle the ball
                screen.draw_pixel(self.ball[0], self.ball[1], PIXEL_ON)

                screen.push()
                yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass

    def init_screen(self, screen):
        """Initialize the screen with the game elements

        Args:
            screen (Screen): The Screen object to draw on
        """
        self.paddle = [24]

        if self.level == 1:
            self.line_right = screen.x_width - ARENA_START
            self.line_left = ARENA_START - 1

        self.ball = [screen.x_width // 2, screen.y_height // 2]

        if self.level % 2 == 0:
            for pix in range(screen.y_height):
                screen.draw_pixel(self.line_left, pix, 0x0)
                screen.draw_pixel(self.line_right, pix, 0x0)
            self.line_left = 13 - self.level
            self.line_right = (screen.x_width - ARENA_START) + self.level
        else:
            self.rows = self.level + 2

        screen.draw_vline(self.line_left, 0, screen.y_height, left=False)
        screen.draw_vline(self.line_right, 0, screen.y_height)

        for row in range(self.rows):
            self.bricks[row] = []
            for brick in range(self.line_left + 1, self.line_right):
                self.bricks[row].append(brick)

        for row in self.bricks.keys():
            for brick in self.bricks[row]:
                if not brick % 2:
                    screen.draw_pixel(brick, row, LEFT_BRICK)
                else:
                    screen.draw_pixel(brick, row, RIGHT_BRICK)

        # Draw ball and paddle
        screen.draw_pixel(self.ball[0], self.ball[1], PIXEL_ON, combine=False)

        for block in range(1, (self.line_right - self.line_left) // 3):
            self.paddle.append(self.paddle[-1] + 1)

        for val in range(self.line_left + 1, self.line_right):
            screen.draw_pixel(val, screen.y_height - 1, PIXEL_OFF)

        for val in self.paddle:
            screen.draw_pixel(val, screen.y_height - 1, PIXEL_ON, combine=False)

        screen.push()

    def level_up(self):
        """Increase the level of the game"""
        for rows in self.bricks.values():
            if rows:
                return False
        return True

    def get_angle(self, paddle):
        """Get the angle of the ball based on the paddle position

        Args:
            paddle (list): The paddle position
        """
        if paddle.index(self.ball[0]) < (len(paddle) // 2):
            spin = paddle.index(self.ball[0]) % len(paddle) + 1
            is_left = True
        elif paddle.index(self.ball[0]) > (len(paddle) // 2):
            spin = (len(paddle) - 1) - paddle.index(self.ball[0]) % len(paddle) + 1
            is_left = False
        else:
            spin = paddle.index(self.ball[0]) // 2
            is_left = bool(getrandbits(1))

        return spin, is_left

    def ball_travel(self, is_left, is_down, spin, screen):
        """Move the ball based on the angle and direction

        Args:
            is_left (bool): The direction of the ball
            is_down (bool): The direction of the ball
            spin (int): The angle of the ball
            screen (Screen): The Screen object to draw on
        """
        horizbound = 0
        vertbound = 0

        if is_left:
            horizbound = self.ball[0] - 1
        else:
            horizbound = self.ball[0] + 1

        if is_down:
            vertbound = self.ball[1] + spin
        else:
            vertbound = self.ball[1] - spin

        collide_field = []
        if spin > 1:
            for y_val in range(
                min(self.ball[1], vertbound), max(self.ball[1], vertbound)
            ):
                collide_field.append([horizbound, y_val])

        if is_left:
            self.ball[0] -= 1
        else:
            self.ball[0] += 1

        if is_down:
            # A possible conflict with ball trying to jump paddle
            if (screen.y_height - 1) - (self.ball[1] + spin) <= 0 and spin > 1:
                for block in collide_field:
                    if block[0] in self.paddle:
                        self.ball[1] = screen.y_height - 2
                        is_down = False
                        if self.paddle.index(block[0]) > len(self.paddle) // 2:
                            is_left = False
                        return is_left, is_down
                    self.ball[1] += spin
            else:
                self.ball[1] += spin
        else:
            # A possible conflict with ball trying to jump bricks
            if (self.rows - 1) - (self.ball[1] - spin) >= 0 and spin > 1:
                for block in collide_field:
                    for row in range(self.rows - 1, 0 - 1, -1):
                        if block[0] in self.bricks[row]:
                            # isDown = True
                            self.ball[1] = row
                            return is_left, is_down
                        self.ball[1] -= spin
            else:
                self.ball[1] -= spin

        # Spin correct
        if self.ball[0] < self.line_left + 1:
            self.ball[0] = self.line_left + 1
        elif self.ball[0] > self.line_right - 1:
            self.ball[0] = self.line_right - 1

        if self.ball[1] < 0:
            self.ball[1] = 0
        elif self.ball[1] > screen.y_height - 1:
            self.ball[1] = screen.y_height - 1

        return is_left, is_down

    def predict_ball_landing(self, is_left, is_down, spin, screen):
        """Predict the x position where the ball will land

        Args:
            is_left (bool): The direction of the ball
            is_down (bool): The direction of the ball
            spin (int): The angle of the ball
            screen (Screen): The Screen object to draw on
        """
        # Start with the ball's current position
        ball_x = self.ball[0]
        ball_y = self.ball[1]

        while (
            ball_y < screen.y_height - 1
        ):  # Simulate until the ball reaches the bottom
            if is_left:
                ball_x -= 1
            else:
                ball_x += 1

            if (
                ball_x <= self.line_left + 1
            ):  # Ball hits the left wall, reverse direction
                is_left = False
            elif (
                ball_x >= self.line_right - 1
            ):  # Ball hits the right wall, reverse direction
                is_left = True

            ball_y += spin  # Ball moves down by its vertical speed (spin)

        # Return the predicted x position where the ball will land
        return ball_x
