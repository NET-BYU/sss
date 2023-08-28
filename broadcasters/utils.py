def get_all_from_queue(queue):
    """
    Helper function that gets all items from a given queue.

    Args:
        queue (Queue): The queue to get all items from.
    """
    while not queue.empty():
        yield queue.get()
