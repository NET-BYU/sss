import time
from itertools import count


def frameRate(fps):
    period = 1.0 / fps
    nextTime = time.time() + period
    for i in count():
        now = time.time()
        toSleep = nextTime - now
        if toSleep > 0:
            time.sleep(toSleep)
            nextTime += period
        else:
            nextTime = now + period
        yield i, nextTime
