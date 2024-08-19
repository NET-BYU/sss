from demos.maze.make_maze_map import Maze_Maker
from demos.utils import get_all_from_queue
from loguru import logger
from sss_sounds import sss_sounds


class Maze:
    """This is the code for the maze module.

    This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function needs to at least have the things shown below. Frame rate is in frames per second and demo time is in seconds. Demo time should be None if it is a game.
    The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen.
    The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game
    """

    demo_time = None  # Number of seconds or None if its game

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

        self.wall = "w"
        self.cell = "c"
        self.unvisited = "u"
        self.coin = "$"
        self.start_point = "s"
        self.exit_point = "e"

        self.screen_wall = 0xF
        self.screen_player_top = 0x1
        self.screen_player_bottom = 0x4
        self.screen_empty = 0x0
        self.screen_coin_list = [
            [0x0, 0xC],
            [0x0, 0x9],
            [0x0, 0x3],
            [0x0, 0x6],
            [0x9, 0x0],
            [0xC, 0x0],
            [0x6, 0x0],
            [0x3, 0x0],
        ]

        self.player_blink_tick = 10
        self.coin_rotate_tick = 8
        self.exit_blink_tick = 18
        self.exit_open_tick = 4
        self.exit_num_ticks = 5

        self.height = int(self.screen.y_height / 2)
        self.width = int(self.screen.x_width)
        self.num_coins = 6

        # Set the logging level
        DEBUG = False

        if DEBUG:
            logger.level("INFO")
        else:
            logger.level("WARNING")

        # Create maze and draw it on board
        self.maze = Maze_Maker(
            width=self.width, height=self.height, num_coins=self.num_coins
        ).build_maze()

        # Put the player on the screen
        for col in range(len(self.maze[0])):
            if self.maze[0][col] == self.start_point:
                self.player_x = col
                self.player_y = 0
                break

        # Identify the exit
        for col in range(len(self.maze[0])):
            if self.maze[len(self.maze) - 1][col] == self.exit_point:
                self.exit_x = col
                self.exit_y = len(self.maze) - 1
                break

        if DEBUG:
            self.debug_board()

    def debug_board(self):
        logger.info(f"Maze demo: maze w*h is {len(self.maze[0])}*{len(self.maze)}")
        for row in range(len(self.maze)):
            for col in range(len(self.maze[0])):
                if self.maze[row][col] == self.coin:
                    logger.info(f"Coin at x = {col}, y = {row}")

    def draw_maze(self):
        # Every cycle, draw the maze on the screen
        for row in range(len(self.maze)):
            for col in range(len(self.maze[row])):
                if self.maze[row][col] == self.wall:
                    self.screen.draw_pixel(col, (row * 2), self.screen_wall)
                    self.screen.draw_pixel(col, (row * 2) + 1, self.screen_wall)
                elif self.maze[row][col] == self.coin:
                    self.screen.draw_pixel(col, (row * 2), self.screen_empty)
                    self.screen.draw_pixel(col, (row * 2) + 1, self.screen_empty)
                    self.screen.draw_pixel(
                        col,
                        (row * 2),
                        self.screen_coin_list[self.coin_rotate_counter][0],
                    )
                    self.screen.draw_pixel(
                        col,
                        (row * 2) + 1,
                        self.screen_coin_list[self.coin_rotate_counter][1],
                    )
                # There are a few cases for the exit point:
                #  1. All coins have been connected, we blink the exit point fast five times
                elif self.maze[row][col] == self.exit_point:
                    if self.all_coins_collected:
                        if self.exit_enable < self.exit_num_ticks * self.exit_open_tick:
                            if (self.exit_blink_counter % self.exit_open_tick) > (
                                self.exit_open_tick / 2
                            ):
                                self.screen.draw_pixel(col, (row * 2), self.screen_wall)
                                self.screen.draw_pixel(
                                    col, (row * 2) + 1, self.screen_wall
                                )
                            else:
                                self.screen.draw_pixel(
                                    col, (row * 2), self.screen_empty
                                )
                                self.screen.draw_pixel(
                                    col, (row * 2) + 1, self.screen_empty
                                )

                        # self.screen.draw_pixel(col, (row * 2), self.screen_empty)
                        # self.screen.draw_pixel(col, (row * 2) + 1, self.screen_empty)
                    else:
                        if self.exit_blink_counter > self.exit_blink_tick / 2:
                            self.screen.draw_pixel(col, (row * 2), self.screen_wall)
                            self.screen.draw_pixel(col, (row * 2) + 1, self.screen_wall)
                        else:
                            self.screen.draw_pixel(col, (row * 2), self.screen_empty)
                            self.screen.draw_pixel(
                                col, (row * 2) + 1, self.screen_empty
                            )

    def draw_player(self, erase=False):
        # If the player has not moved yet, we draw it as blinking
        if self.maze[self.player_y][self.player_x] == self.start_point:
            if self.player_blink_counter < self.player_blink_tick / 2:
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player_top
                )
                self.screen.draw_pixel(
                    self.player_x, (self.player_y * 2) + 1, self.screen_player_bottom
                )
            else:
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.screen.draw_pixel(
                    self.player_x, (self.player_y * 2) + 1, self.screen_empty
                )
        else:
            if erase:
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.screen.draw_pixel(
                    self.player_x, (self.player_y * 2) + 1, self.screen_empty
                )
            else:
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player_top
                )
                self.screen.draw_pixel(
                    self.player_x, (self.player_y * 2) + 1, self.screen_player_bottom
                )

    def move_player(self, direction):
        
        
        # Move the player in the maze
        if direction == "u":
            if (
                self.player_y > 0
                and self.maze[self.player_y - 1][self.player_x] != self.wall
            ):
                if self.maze[self.player_y - 1][self.player_x] == self.exit_point and not self.all_coins_collected:
                    self.output_queue.put("SOUND " + sss_sounds.BEEP_14)
                    return
                    
                self.draw_player(erase=True)
                self.player_y -= 1
        elif direction == "d":
            if (
                self.player_y < len(self.maze) - 1
                and self.maze[self.player_y + 1][self.player_x] != self.wall
            ):
                if self.maze[self.player_y + 1][self.player_x] == self.exit_point and not self.all_coins_collected:
                    self.output_queue.put("SOUND " + sss_sounds.BEEP_14)
                    return
                
                self.draw_player(erase=True)
                self.player_y += 1
        elif direction == "l":
            if (
                self.player_x > 0
                and self.maze[self.player_y][self.player_x - 1] != self.wall
            ):
                if self.maze[self.player_y][self.player_x - 1] == self.exit_point and not self.all_coins_collected:
                    self.output_queue.put("SOUND " + sss_sounds.BEEP_14)
                    return
                
                self.draw_player(erase=True)
                self.player_x -= 1
        elif direction == "r":
            if (
                self.player_x < len(self.maze[0]) - 1
                and self.maze[self.player_y][self.player_x + 1] != self.wall
            ):
                if self.maze[self.player_y][self.player_x + 1] == self.exit_point and not self.all_coins_collected:
                    self.output_queue.put("SOUND " + sss_sounds.BEEP_14)
                    return
                
                self.draw_player(erase=True)
                self.player_x += 1

        # Check to see if coin is collected
        if self.maze[self.player_y][self.player_x] == self.coin:
            logger.info(f"Coin collected at x = {self.player_x}, y = {self.player_y}")
            self.maze[self.player_y][self.player_x] = self.cell
            self.num_coins -= 1
            self.draw_player(erase=True)
            if self.num_coins == 0:
                self.all_coins_collected = True
                self.output_queue.put("SOUND " + sss_sounds.PICKUP_02)
            else:
                self.output_queue.put("SOUND " + sss_sounds.BEEP_12)

        # Check to see if player has reached the exit
        if self.player_y == self.exit_y and self.player_x == self.exit_x:
            if self.all_coins_collected:
                self.output_queue.put("SOUND " + sss_sounds.WIN_01)
                self.output_queue.put("WIN")
            self.stop()

    def run(self):
        # Create generator here
        self.player_blink_counter = 0
        self.coin_rotate_counter = 0
        self.exit_blink_counter = 0
        self.exit_enable = 0
        self.all_coins_collected = False

        while True:
            self.player_blink_counter = (
                self.player_blink_counter + 1
            ) % self.player_blink_tick
            self.coin_rotate_counter = (
                self.coin_rotate_counter + 1
            ) % self.coin_rotate_tick
            self.exit_blink_counter = (
                self.exit_blink_counter + 1
            ) % self.exit_blink_tick

            if self.all_coins_collected:
                self.exit_enable = self.exit_enable + 1

            temp = get_all_from_queue(self.input_queue)
            direction = None
            for command in temp:
                if command == "LEFT_P":
                    direction = "l"
                elif command == "RIGHT_P":
                    direction = "r"
                elif command == "UP_P":
                    direction = "u"
                elif command == "DOWN_P":
                    direction = "d"

            if direction is not None:
                self.move_player(direction)

            self.draw_maze()
            self.draw_player()

            self.screen.push()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
