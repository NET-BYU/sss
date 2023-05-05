"""
Properties
- Starting Timestamp

Methods
- update()

Every time it is updated, it will compare the current time against the creation timestamp.
The difference between those times will then be divided by the total time to get a "completion percentage".

It will then update the line on the display accordingly.
"""
import time


class LoadBar:
    """
    Class for drawing a "loading bar" describing elapsed time since creation as a percentage of a specified duration

    """

    def __init__(self, display, duration):
        """Parameters:
        display - the Seven Segment display object to render the line on
        duration - the duration, in integer seconds, the bar should describe progress on
        """
        self.display = display
        self.duration = duration
        self.creationTime = time.clock_gettime(time.CLOCK_REALTIME)

    def update(self):
        """
        Re-draws the loading bar based on the current time, creation time, and bar's total duration
        Returns "True" if bar's total duration has been exceeded
        """
        currentTime = time.clock_gettime(time.CLOCK_REALTIME)
        elapsedSeconds = currentTime - self.creationTime
        if elapsedSeconds > self.duration:
            return True

        percentCompletion = elapsedSeconds / self.duration

        self.display.draw_hline(
            0,  # x coordinate
            self.display.y_height - 1,  # y coordinate
            round(percentCompletion * self.display.x_width) - 2,  # length of line
            False,
            False,
            True,
        )

        return False
