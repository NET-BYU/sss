# Much of this code is sources from the online repository
# https://github.com/OrWestSide/python-scripts/blob/master/maze.py
# Hash:
# 0a7e50aeeafaf9a26f8f1af897b5e6dad768c1e7

# Maze generator -- Randomized Prim Algorithm

## Imports
import random
import time


class Maze_Maker:

    def __init__(self, width=48, height=24, num_coins=6):
        self.wall = "w"
        self.cell = "c"
        self.unvisited = "u"
        self.coin = "$"
        self.start_point = "s"
        self.exit_point = "e"
        self.height = height
        self.width = width
        self.num_coins = num_coins
        self.maze = []

        # Denote all cells as unvisited
        for i in range(0, height):
            line = []
            for j in range(0, width):
                line.append(self.unvisited)
            self.maze.append(line)

    # Find number of surrounding cells
    def surroundingCells(self, rand_wall):
        s_cells = 0
        if self.maze[rand_wall[0] - 1][rand_wall[1]] == "c":
            s_cells += 1
        if self.maze[rand_wall[0] + 1][rand_wall[1]] == "c":
            s_cells += 1
        if self.maze[rand_wall[0]][rand_wall[1] - 1] == "c":
            s_cells += 1
        if self.maze[rand_wall[0]][rand_wall[1] + 1] == "c":
            s_cells += 1

        return s_cells

    def build_maze(self):
        # Randomize starting point and set it a cell
        starting_height = int(random.random() * self.height)
        starting_width = int(random.random() * self.width)
        if starting_height == 0:
            starting_height += 1
        if starting_height == self.height - 1:
            starting_height -= 1
        if starting_width == 0:
            starting_width += 1
        if starting_width == self.width - 1:
            starting_width -= 1

        # Mark it as cell and add surrounding walls to the list
        self.maze[starting_height][starting_width] = self.cell
        walls = []
        walls.append([starting_height - 1, starting_width])
        walls.append([starting_height, starting_width - 1])
        walls.append([starting_height, starting_width + 1])
        walls.append([starting_height + 1, starting_width])

        # Denote walls in self.maze
        self.maze[starting_height - 1][starting_width] = "w"
        self.maze[starting_height][starting_width - 1] = "w"
        self.maze[starting_height][starting_width + 1] = "w"
        self.maze[starting_height + 1][starting_width] = "w"

        while walls:
            # Pick a random wall
            rand_wall = walls[int(random.random() * len(walls)) - 1]

            # Check if it is a left wall
            if rand_wall[1] != 0:
                if (
                    self.maze[rand_wall[0]][rand_wall[1] - 1] == "u"
                    and self.maze[rand_wall[0]][rand_wall[1] + 1] == "c"
                ):
                    # Find the number of surrounding cells
                    s_cells = self.surroundingCells(rand_wall)

                    if s_cells < 2:
                        # Denote the new path
                        self.maze[rand_wall[0]][rand_wall[1]] = "c"

                        # Mark the new walls
                        # Upper cell
                        if rand_wall[0] != 0:
                            if self.maze[rand_wall[0] - 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] - 1][rand_wall[1]] = "w"
                            if [rand_wall[0] - 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] - 1, rand_wall[1]])

                        # Bottom cell
                        if rand_wall[0] != self.height - 1:
                            if self.maze[rand_wall[0] + 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] + 1][rand_wall[1]] = "w"
                            if [rand_wall[0] + 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] + 1, rand_wall[1]])

                        # Leftmost cell
                        if rand_wall[1] != 0:
                            if self.maze[rand_wall[0]][rand_wall[1] - 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] - 1] = "w"
                            if [rand_wall[0], rand_wall[1] - 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] - 1])

                    # Delete wall
                    for wall in walls:
                        if wall[0] == rand_wall[0] and wall[1] == rand_wall[1]:
                            walls.remove(wall)

                    continue

            # Check if it is an upper wall
            if rand_wall[0] != 0:
                if (
                    self.maze[rand_wall[0] - 1][rand_wall[1]] == "u"
                    and self.maze[rand_wall[0] + 1][rand_wall[1]] == "c"
                ):

                    s_cells = self.surroundingCells(rand_wall)
                    if s_cells < 2:
                        # Denote the new path
                        self.maze[rand_wall[0]][rand_wall[1]] = "c"

                        # Mark the new walls
                        # Upper cell
                        if rand_wall[0] != 0:
                            if self.maze[rand_wall[0] - 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] - 1][rand_wall[1]] = "w"
                            if [rand_wall[0] - 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] - 1, rand_wall[1]])

                        # Leftmost cell
                        if rand_wall[1] != 0:
                            if self.maze[rand_wall[0]][rand_wall[1] - 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] - 1] = "w"
                            if [rand_wall[0], rand_wall[1] - 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] - 1])

                        # Rightmost cell
                        if rand_wall[1] != self.width - 1:
                            if self.maze[rand_wall[0]][rand_wall[1] + 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] + 1] = "w"
                            if [rand_wall[0], rand_wall[1] + 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] + 1])

                    # Delete wall
                    for wall in walls:
                        if wall[0] == rand_wall[0] and wall[1] == rand_wall[1]:
                            walls.remove(wall)

                    continue

            # Check the bottom wall
            if rand_wall[0] != self.height - 1:
                if (
                    self.maze[rand_wall[0] + 1][rand_wall[1]] == "u"
                    and self.maze[rand_wall[0] - 1][rand_wall[1]] == "c"
                ):

                    s_cells = self.surroundingCells(rand_wall)
                    if s_cells < 2:
                        # Denote the new path
                        self.maze[rand_wall[0]][rand_wall[1]] = "c"

                        # Mark the new walls
                        if rand_wall[0] != self.height - 1:
                            if self.maze[rand_wall[0] + 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] + 1][rand_wall[1]] = "w"
                            if [rand_wall[0] + 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] + 1, rand_wall[1]])
                        if rand_wall[1] != 0:
                            if self.maze[rand_wall[0]][rand_wall[1] - 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] - 1] = "w"
                            if [rand_wall[0], rand_wall[1] - 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] - 1])
                        if rand_wall[1] != self.width - 1:
                            if self.maze[rand_wall[0]][rand_wall[1] + 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] + 1] = "w"
                            if [rand_wall[0], rand_wall[1] + 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] + 1])

                    # Delete wall
                    for wall in walls:
                        if wall[0] == rand_wall[0] and wall[1] == rand_wall[1]:
                            walls.remove(wall)

                    continue

            # Check the right wall
            if rand_wall[1] != self.width - 1:
                if (
                    self.maze[rand_wall[0]][rand_wall[1] + 1] == "u"
                    and self.maze[rand_wall[0]][rand_wall[1] - 1] == "c"
                ):

                    s_cells = self.surroundingCells(rand_wall)
                    if s_cells < 2:
                        # Denote the new path
                        self.maze[rand_wall[0]][rand_wall[1]] = "c"

                        # Mark the new walls
                        if rand_wall[1] != self.width - 1:
                            if self.maze[rand_wall[0]][rand_wall[1] + 1] != "c":
                                self.maze[rand_wall[0]][rand_wall[1] + 1] = "w"
                            if [rand_wall[0], rand_wall[1] + 1] not in walls:
                                walls.append([rand_wall[0], rand_wall[1] + 1])
                        if rand_wall[0] != self.height - 1:
                            if self.maze[rand_wall[0] + 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] + 1][rand_wall[1]] = "w"
                            if [rand_wall[0] + 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] + 1, rand_wall[1]])
                        if rand_wall[0] != 0:
                            if self.maze[rand_wall[0] - 1][rand_wall[1]] != "c":
                                self.maze[rand_wall[0] - 1][rand_wall[1]] = "w"
                            if [rand_wall[0] - 1, rand_wall[1]] not in walls:
                                walls.append([rand_wall[0] - 1, rand_wall[1]])

                    # Delete wall
                    for wall in walls:
                        if wall[0] == rand_wall[0] and wall[1] == rand_wall[1]:
                            walls.remove(wall)

                    continue

            # Delete the wall from the list anyway
            for wall in walls:
                if wall[0] == rand_wall[0] and wall[1] == rand_wall[1]:
                    walls.remove(wall)

        # Mark the remaining unvisited cells as walls
        for i in range(0, self.height):
            for j in range(0, self.width):
                if self.maze[i][j] == "u":
                    self.maze[i][j] = "w"

        # Set entrance and exit
        while True:
            x = int(random.random() * self.width)
            if self.maze[1][x] == "c":
                self.maze[0][x] = self.start_point
                break

        while True:
            x = int(random.random() * self.width)
            if self.maze[self.height - 2][x] == "c":
                self.maze[self.height - 1][x] = self.exit_point
                break

        # Set coins
        for i in range(0, self.num_coins):
            x = int(random.random() * self.width)
            y = int(random.random() * self.height)
            while self.maze[y][x] != "c":
                x = int(random.random() * self.width)
                y = int(random.random() * self.height)
            self.maze[y][x] = self.coin

        return self.maze
