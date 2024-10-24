from copy import deepcopy

import numpy as np


class snek_state:
    """A class to represent the state of the snake game"""

    def __init__(self, width, height):
        """
        Constructor

        Args:
            width (int): The width of the game board
            height (int): The height of the game board
        """
        self.width = width
        self.height = height
        self.data = np.zeros((int(height), int(width)))
        for i in range(3):
            self.data[i] = np.ones(width)
        self.snek_parts = []
        self.food_locs = []

    def add_snake_part2(self, cord):
        """
        Adds a snake part to the snake

        Args:
            cord (tuple): The coordinates of the snake part

        """
        self.snek_parts.append(cord)

    def del_snake_part2(self):
        """
        Deletes the last snake part

        Returns:
            tuple: The coordinates of the deleted snake part
        """
        return self.snek_parts.pop(0)

    def add_food2(self, cord):
        """
        Adds a food to the game board

        Args:
            cord (tuple): The coordinates of the food

        """
        self.food_locs = cord

    def add_snake_part(self, cord):
        """
        Adds a snake part to the snake

        Args:
            cord (tuple): The coordinates of the snake part

        """
        self.data[int(cord[1])][int(cord[0])] = 1

    def del_snake_part(self, cord):
        """
        Deletes a snake part from the snake

        Args:
            cord (tuple): The coordinates of the snake part

        """
        self.data[int(cord[1])][int(cord[0])] = 0

    def add_food(self, cord):
        """
        Adds a food to the game board

        Args:
            cord (tuple): The coordinates of the food

        """
        self.data[int(cord[1])][int(cord[0])] = 2

    def del_food(self, cord):
        """
        Deletes a food from the game board

        Args:
            cord (tuple): The coordinates of the food

        """
        self.data[int(cord[1])][int(cord[0])] = 1
        self.food_locs.append(cord)


class snek_Node:
    """A class to represent a node in the A* search"""

    def __init__(self, x, y, cost, prev, snake_parts, actual_cost):
        """
        Constructor

        Args:
            x (int): The x coordinate of the node
            y (int): The y coordinate of the node
            cost (int): The cost of the node
            prev (snek_Node): The previous node
            snake_parts (list): The snake parts
            actual_cost (int): The actual cost of the node

        """
        self.loc = (x, y)
        self.cost = cost
        self.prev = prev
        self.current_snake = snake_parts
        self.actual_cost = actual_cost

    def __copy__(self, newLoc):
        """
        Copies the node

        Args:
            newLoc (tuple): The new location of the node
        """
        self.loc = deepcopy(newLoc)

    def __eq__(self, other):
        """
        Equals operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the nodes are equal, False otherwise
        """
        return self.cost == other.cost

    def __ne__(self, other):
        """
        Not equals operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the nodes are not equal, False otherwise
        """
        return self.cost != other.cost

    def __lt__(self, other):
        """
        Less than operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the node is less than the other node, False otherwise
        """
        return self.cost < other.cost

    def __le__(self, other):
        """
        Less than or equal to operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the node is less than or equal to the other node, False otherwise
        """
        return self.cost <= other.cost

    def __gt__(self, other):
        """
        Greater than operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the node is greater than the other node, False otherwise
        """
        return self.cost > other.cost

    def __ge__(self, other):
        """
        Greater than or equal to operator

        Args:
            other (snek_Node): The other node to compare to

        Returns:
            bool: True if the node is greater than or equal to the other node, False otherwise
        """
        return self.cost >= other.cost
