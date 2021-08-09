from copy import deepcopy

import numpy as np


class snek_state:
    def __init__(self, width, height):
        self.width = width
        self.height = height
        self.data = np.zeros((int(height), int(width)))
        for i in range(3):
            self.data[i] = np.ones(width)
        self.snek_parts = []
        self.food_locs = []

    def add_snake_part2(self,cord):
        self.snek_parts.append(cord)
    def del_snake_part2(self):
        return self.snek_parts.pop(0)
    def add_food2(self,cord):
        self.food_locs = cord

    def add_snake_part(self, cord):
        self.data[int(cord[1])][int(cord[0])] = 1

    def del_snake_part(self, cord):
        self.data[int(cord[1])][int(cord[0])] = 0

    def add_food(self, cord):
        self.data[int(cord[1])][int(cord[0])] = 2

    def del_food(self, cord):
        self.data[int(cord[1])][int(cord[0])] = 1
        self.food_locs.append(cord)


class snek_Node:
    def __init__(self, x, y, cost, prev, snake_parts, actual_cost):
        self.loc = (x, y)
        self.cost = cost
        self.prev = prev
        self.current_snake = snake_parts
        self.actual_cost = actual_cost

    def __copy__(self, newLoc):
        self.loc = deepcopy(newLoc)

    def __eq__(self, other):
        return self.cost == other.cost

    def __ne__(self, other):
        return self.cost != other.cost

    def __lt__(self, other):
        return self.cost < other.cost

    def __le__(self, other):
        return self.cost <= other.cost

    def __gt__(self, other):
        return self.cost > other.cost

    def __ge__(self, other):
        return self.cost >= other.cost
