def get_all_from_queue(queue):
    """Helper function that gets all items from a given queue."""
    while not queue.empty():
        yield queue.get()
