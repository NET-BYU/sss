from demos.maze.make_maze_map import Maze_Maker


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

        self.height = int(self.screen.y_height / 2)
        self.width = int(self.screen.x_width)
        self.num_coins = 6

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
                elif self.maze[row][col] == self.exit_point:
                    if self.all_coins_collected:
                        self.screen.draw_pixel(col, (row * 2), self.screen_empty)
                        self.screen.draw_pixel(col, (row * 2) + 1, self.screen_empty)
                    else:
                        self.screen.draw_pixel(col, (row * 2), self.screen_wall)
                        self.screen.draw_pixel(col, (row * 2) + 1, self.screen_wall)

    def draw_player(self, blink_off):
        # Draw the player on the screen
        if not blink_off:
            self.screen.draw_pixel(
                self.player_x, self.player_y * 2, self.screen_player_top
            )
            self.screen.draw_pixel(
                self.player_x, (self.player_y * 2) + 1, self.screen_player_bottom
            )
        else:
            self.screen.draw_pixel(self.player_x, self.player_y * 2, self.screen_empty)
            self.screen.draw_pixel(
                self.player_x, (self.player_y * 2) + 1, self.screen_empty
            )

    def move_player(self, direction):
        # Move the player in the maze
        if direction == "up":
            if (
                self.player_y > 0
                and self.maze[self.player_y - 1][self.player_x] != self.wall
            ):
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.player_y -= 2
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player
                )
        elif direction == "down":
            if (
                self.player_y < len(self.maze) - 1
                and self.maze[self.player_y + 1][self.player_x] != self.wall
            ):
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.player_y += 2
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player
                )
        elif direction == "left":
            if (
                self.player_x > 0
                and self.maze[self.player_y][self.player_x - 1] != self.wall
            ):
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.player_x -= 1
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player
                )
        elif direction == "right":
            if (
                self.player_x < len(self.maze[0]) - 1
                and self.maze[self.player_y][self.player_x + 1] != self.wall
            ):
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_empty
                )
                self.player_x += 1
                self.screen.draw_pixel(
                    self.player_x, self.player_y * 2, self.screen_player
                )

    def run(self):
        # Create generator here
        self.player_blink_counter = 0
        self.coin_rotate_counter = 0
        self.all_coins_collected = False

        while True:
            self.player_blink_counter = (self.player_blink_counter + 1) % 10
            self.coin_rotate_counter = (self.coin_rotate_counter + 1) % 8

            self.draw_player(self.player_blink_counter > 5)

            self.draw_maze()

            self.screen.push()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
