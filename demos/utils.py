def get_all_from_queue(queue):
    while not queue.empty():
        yield queue.get()
