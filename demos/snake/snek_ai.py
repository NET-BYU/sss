from queue import PriorityQueue

from . import snek_state
from copy import deepcopy

PATH_COST = 1


def run_Search(x, y, dst, state, len):
    root = snek_state.snek_Node(x, y, heuristic((x, y), dst), None, state.snek_parts, 0.0)
    fringe = PriorityQueue()
    fringe.put((root.cost, root))
    if len < 200:
        goal = A_Star(state, fringe, dst)
    else:
        goal = A_Star_Reverse(state, fringe, dst)
    if goal:
        cur = goal
        path = []
        # Extract the path and print it out
        while cur is not None:
            path.append(cur.loc)
            cur = cur.prev

        # Reverse the path
        path.reverse()
        del path[0]
        # print("PATH FOUND! Cost = ", goal.actual_cost)

        return path
    else:
        print("NO PATH FOUND!")
        return []


def A_Star_Reverse(state, fringe, goal):
    # List to store the expanded states on this search
    expanded = []
    inFringe = {(-1, -1)}

    # Continue until the fringe is empty
    while not fringe.empty():
        test = fringe.get()
        curNode = test[1]
        inFringe.add(curNode.loc)

        if heuristic(curNode.loc, goal) < 10:
            fringe = PriorityQueue()
            fringe.put(
                (
                    curNode.cost,
                    snek_state.snek_Node(
                        curNode.loc[0],
                        curNode.loc[1],
                        0.0,
                        curNode.prev,
                        curNode.actual_cost,
                    ),
                )
            )
            return A_Star(state, fringe, goal)
        if curNode.loc == goal:
            return curNode

        expanded.append(curNode.loc)

        successors = getChildren2(curNode, state, goal)
        for i in successors:
            if i.loc in expanded or i.loc in inFringe:
                continue
            fringe.put((i.cost, i))

    # If no path found, return none
    return None


def getChildren2(node, state, goal):
    children = []
    x = int(node.loc[0])
    y = int(node.loc[1])

    if ((x + 1) < state.width) and state.data[y][x + 1] != 1:
        children.append(
            snek_state.snek_Node(
                (x + 1),
                y,
                -1 * (heuristic(((x + 1), y), goal) + node.actual_cost + 1),
                node,
                (node.actual_cost + 1),
            )
        )

    if (x - 1) >= 0 and state.data[y][x - 1] != 1:
        children.append(
            snek_state.snek_Node(
                (x - 1),
                y,
                -1 * (heuristic(((x - 1), y), goal) + node.actual_cost + 1),
                node,
                (node.actual_cost + 1),
            )
        )

    if (y + 1) < state.height and state.data[y + 1][x] != 1:
        children.append(
            snek_state.snek_Node(
                x,
                (y + 1),
                -1 * (heuristic(((x), y + 1), goal) + node.actual_cost + 1),
                node,
                node.actual_cost + 1,
            )
        )

    if (y - 1) >= 4 and state.data[y - 1][x] != 1:
        children.append(
            snek_state.snek_Node(
                (x),
                y - 1,
                -1 * (heuristic(((x), y - 1), goal) + node.actual_cost + 1),
                node,
                node.actual_cost + 1,
            )
        )

    return children


def run_Search2(x, y, dst, state, len):
    root = snek_state.snek_Node(x, y, heuristic((x, y), dst), None, state.snek_parts, 0.0)
    fringe = PriorityQueue()
    fringe.put((root.cost, root))
    if len < 200:
        goal = A_Star_Revised(state, fringe)
    else:
        print("gone long enough")
        return []
    if goal:
        cur = goal
        path = []
        # Extract the path and print it out
        while cur is not None:
            path.append(cur.loc)
            cur = cur.prev

        # Reverse the path
        path.reverse()
        del path[0]

        # print("PATH FOUND! Cost = ", goal.actual_cost)
        while not fringe.empty():
            junk = fringe.get()[1]
            del junk
        del fringe
        del goal

        return path
    else:
        print("NO PATH FOUND!")
        return []


def A_Star_Revised(state, fringe):
    # print("Goal:", state.food_locs)
    # List to store the expanded states on this search
    infringe = []
    first = fringe.get()
    infringe.append(first[1].loc)
    fringe.put(first)
    added = 0
    mem_added = 0

    # Continue until the fringe is empty
    while not fringe.empty():
        test = fringe.get()
        curNode = test[1]
        # infringe.remove(curNode.loc)
        # print(test[0], curNode.loc)

        if curNode.loc == state.food_locs:
            del infringe
            return curNode
        if added > 400 or mem_added > 50000:
            print("running to long")
            del infringe
            return curNode

        curNode.current_snake.pop(0)
        curNode.current_snake.append(curNode.loc)
        successors = getChildren3(curNode, state, state.food_locs)
        snake_size = len(curNode.current_snake)
        for i in successors:
            if i.loc in infringe:
                continue
            fringe.put((i.cost, i))
            infringe.append(i.loc)
            added += 1
            mem_added += snake_size

    # If no path found, return none
    return None


def getChildren3(node, state, goal):
    children = []
    x = int(node.loc[0])
    y = int(node.loc[1])

    if ((x + 1) < state.width) and (x + 1, y) not in node.current_snake:
        children.append(
            snek_state.snek_Node(
                (x + 1),
                y,
                heuristic(((x + 1), y), goal) + node.actual_cost + 1,
                node,
                deepcopy(node.current_snake),
                node.actual_cost + 1,
            )
        )

    if (x - 1) >= 0 and (x - 1, y) not in node.current_snake:
        children.append(
            snek_state.snek_Node(
                (x - 1),
                y,
                heuristic(((x - 1), y), goal) + node.actual_cost + 1,
                node,
                deepcopy(node.current_snake),
                node.actual_cost + 1,
            )
        )

    if (y + 1) < state.height and (x, y + 1) not in node.current_snake:
        children.append(
            snek_state.snek_Node(
                x,
                (y + 1),
                heuristic((x, y + 1), goal) + node.actual_cost + 1,
                node,
                deepcopy(node.current_snake),
                node.actual_cost + 1,
            )
        )

    if (y - 1) >= 4 and (x, y - 1) not in node.current_snake:
        children.append(
            snek_state.snek_Node(
                x,
                y - 1,
                heuristic((x, y - 1), goal) + node.actual_cost + 1,
                node,
                deepcopy(node.current_snake),
                node.actual_cost + 1,
            )
        )
    return children


def A_Star(state, fringe, goal):
    # print("Goal:", goal)
    # List to store the expanded states on this search
    expanded = []

    # Continue until the fringe is empty
    while not fringe.empty():
        test = fringe.get()
        curNode = test[1]
        # print(test[0], curNode.loc)

        if curNode.loc == goal:
            return curNode

        expanded.append(curNode.loc)

        successors = getChildren(curNode, state, goal)
        for i in successors:
            if i.loc in expanded:
                continue
            fringe.put((i.cost, i))

    # If no path found, return none
    return None


def heuristic(start_loc, goal_loc):
    cost = abs(start_loc[0] - goal_loc[0]) + abs(start_loc[1] - goal_loc[1])
    return cost


def cost(previous):
    return previous + 1


def getChildren(node, state, goal):
    children = []
    x = int(node.loc[0])
    y = int(node.loc[1])

    if ((x + 1) < state.width) and (state.data[y][x + 1] != 1):
        children.append(
            snek_state.snek_Node(
                (x + 1),
                y,
                heuristic(((x + 1), y), goal),
                node,
                node.actual_cost + 1,
            )
        )

    if (x - 1) >= 0 and (state.data[y][x - 1] != 1):
        children.append(
            snek_state.snek_Node(
                (x - 1),
                y,
                heuristic(((x - 1), y), goal),
                node,
                node.actual_cost + 1,
            )
        )

    if (y + 1) < state.height and (state.data[y + 1][x] != 1):
        children.append(
            snek_state.snek_Node(
                x,
                (y + 1),
                heuristic((x, y + 1), goal),
                node,
                node.actual_cost + 1,
            )
        )

    if (y - 1) >= 4 and (state.data[y - 1][x] != 1):
        children.append(
            snek_state.snek_Node(
                x,
                y - 1,
                heuristic((x, y - 1), goal),
                node,
                node.actual_cost + 1,
            )
        )

    return children
