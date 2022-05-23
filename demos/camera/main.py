import cv2

PIXEL_ON = 0xF
PIXEL_OFF = 0x0


class Camera:
    """This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function needs to at least have the things shown below. Frame rate is in frames per second and demo time is in seconds. Demo time should be None if it is a game.
    The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen.
    The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = 300  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        cap = cv2.VideoCapture("http://octopi.local/webcam/?action=stream")

        while True:

            (ret, frame) = cap.read()

            grayFrame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

            (thresh, blackAndWhiteFrame) = cv2.threshold(
                grayFrame, 127, 255, cv2.THRESH_BINARY
            )

            bwsmall = cv2.resize(blackAndWhiteFrame, [48, 48])

            # cv2.imshow("video bw", bwsmall)
            # cv2.imshow("video original - simulator", frame)

            for i in range(48):
                for j in range(48):
                    if bwsmall[i][j] > 0:
                        self.screen.draw_pixel(j, i, PIXEL_ON)
                    else:
                        self.screen.draw_pixel(j, i, PIXEL_OFF)
            self.screen.push()
            if cv2.waitKey(1) == 27:
                break
            yield

        cap.release()
        cv2.destroyAllWindows()

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)
