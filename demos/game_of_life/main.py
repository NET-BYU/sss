import collections
import copy
import random


class Game_Of_Life:

    demo_time = 300

    def __init__(self, input_queue, output_queue, screen):
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.new_board_wait_frames = self.frame_rate

    def _create_board(self, width, height, density=0.25):
        return [
            [int(random.random() < density) for x in range(width)]
            for y in range(height)
        ]

    def _display_board(self, board):
        for x in range(self.screen.x_width):
            for y in range(self.screen.y_height):
                self.screen.draw_pixel(x, y, 0xF if board[y][x] else 0x0)
        self.screen.push()

    def _update_board(self, board):
        new_board = copy.deepcopy(board)
        for y in range(len(board)):
            for x in range(len(board[y])):
                alive = self._check_alive(x, y, board)
                new_board[y][x] = alive

        return new_board

    def _check_alive(self, x, y, board):
        alive = board[y][x]
        board_width = len(board[0])
        board_height = len(board)
        neighbors_alive = 0

        if x > 0:
            neighbors_alive += board[y][x - 1]
        if (x + 1) < board_width:
            neighbors_alive += board[y][x + 1]
        if y > 0:
            neighbors_alive += board[y - 1][x]
        if (y + 1) < board_height:
            neighbors_alive += board[y + 1][x]

        if x > 0 and y > 0:
            neighbors_alive += board[y - 1][x - 1]
        if x > 0 and (y + 1) < board_height:
            neighbors_alive += board[y + 1][x - 1]
        if (x + 1) < board_width and y > 0:
            neighbors_alive += board[y - 1][x + 1]
        if (x + 1) < board_width and (y + 1) < board_height:
            neighbors_alive += board[y + 1][x + 1]

        if alive:
            if neighbors_alive < 2 or neighbors_alive > 3:
                return 0
            else:
                return 1
        else:
            if neighbors_alive == 3:
                return 1
            else:
                return 0

    def run(self):
        old_boards = collections.deque(maxlen=5)

        while True:
            # Set up the initial state
            self.screen.clear()
            old_boards.clear()
            board = self._create_board(self.screen.x_width, self.screen.y_height)

            # Display the board
            self._display_board(board)
            yield

            # Update the board for each tick as long as the board is not be repeated
            while board not in old_boards:
                old_boards.append(board)
                board = self._update_board(board)

                self._display_board(board)
                yield

            # Wait a little longer to show the old board
            for _ in range(self.new_board_wait_frames):
                yield

    def stop(self):
        pass
