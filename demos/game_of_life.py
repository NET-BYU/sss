import collections
import copy
import random
from time import sleep


def create_board(width, height, density=0.5):
    return [
        [int(random.random() < density) for x in range(width)] for y in range(height)
    ]


def display_board(board, screen):
    for x in range(screen.x_width):
        for y in range(screen.y_height):
            screen.draw_pixel(x, y, 0xF if board[y][x] else 0x0)
    screen.push()


def print_board(board):
    for row in board:
        print(row)


def check_alive(x, y, board):
    alive = board[y][x]
    board_width = len(board[0])
    board_height = len(board)
    neighbors_alive = 0

    if x > 0:
        neighbors_alive += board[y][x - 1]
        # print("Left", board[y][x - 1], neighbors_alive)
    if (x + 1) < board_width:
        neighbors_alive += board[y][x + 1]
        # print("Right", board[y][x + 1], neighbors_alive)
    if y > 0:
        neighbors_alive += board[y - 1][x]
        # print("Top", board[y - 1][x], neighbors_alive)
    if (y + 1) < board_height:
        neighbors_alive += board[y + 1][x]
        # print("Bottom", board[y + 1][x], neighbors_alive)

    if x > 0 and y > 0:
        neighbors_alive += board[y - 1][x - 1]
        # print("Top-left", board[y - 1][x - 1], neighbors_alive)
    if x > 0 and (y + 1) < board_height:
        neighbors_alive += board[y + 1][x - 1]
        # print("Bottom-left", board[y + 1][x - 1], neighbors_alive)
    if (x + 1) < board_width and y > 0:
        neighbors_alive += board[y - 1][x + 1]
        # print("Top-right", board[y - 1][x + 1], neighbors_alive)
    if (x + 1) < board_width and (y + 1) < board_height:
        neighbors_alive += board[y + 1][x + 1]
        # print("Bottom-right", board[y + 1][x + 1], neighbors_alive)

    if alive:
        if neighbors_alive < 2 or neighbors_alive > 3:
            # print("Dead")
            return 0
        else:
            # print("Alive")
            return 1
    else:
        if neighbors_alive == 3:
            # print("Alive")
            return 1
        else:
            # print("Dead")
            return 0


def update_board(board):
    new_board = copy.deepcopy(board)
    for y in range(len(board)):
        for x in range(len(board[y])):
            alive = check_alive(x, y, board)
            new_board[y][x] = alive
            # input("-------------------")

    return new_board


def game_of_life(display, queue, refresh=100, density=0.25):

    board = create_board(display.x_width, display.y_height, density=density)
    # print_board(board)
    display_board(board, display)
    input_ = None
    old_boards = collections.deque(maxlen=5)

    while input_ != b"q":
        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = None

        sleep(1 / refresh)
        old_boards.append(board)
        board = update_board(board)
        display_board(board, display)

        if board in old_boards:
            # Start over
            display.clear()
            old_boards.clear()
            sleep(1)
            board = create_board(display.x_width, display.y_height, density=density)
            display_board(board, display)

    display.clear()
