import threading

import cv2
import urllib3
from loguru import logger
from yaml import safe_load

PIXEL_ON = 0xF
PIXEL_OFF = 0x0

NUM_COLS = 48
NOM_ROWS = 48

NUM_SHADES = 5


class Camera_Source:
    def __init__(self, host, stream):
        self.host_url = host
        self.stream_url = stream

    def get_host(self):
        return self.host_url

    def get_stream(self):
        return self.stream_url


class Camera:
    """This is a class to take the live feed from a web camera and display it on the sss."""

    demo_time = 120

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

        # self.shades = {0: 0x0, 1: 0x4, 2: 0xC, 3: 0xE, 4: 0xF}

        # init demo/game specific variables here
        self.num_to_pixel = {
            0: 0x0,
            1: 0x0,
            2: 0x0,
            3: 0x0,
            4: 0x0,
            5: 0x2,
            6: 0x2,
            7: 0xA,
            8: 0xA,
            9: 0xE,
            10: 0xE,
            11: 0xF,
            12: 0xF,
        }
        self.screen_min = 0
        self.screen_max = 0

        self.arr = []
        for i in range(NUM_COLS):
            self.arr.append([])
            for j in range(NUM_COLS):
                self.arr[i].append(0)

        self.connection = False
        self.http = urllib3.PoolManager()
        self.url_rets = {"url_ret": 0, "ret": False}
        self.cap_rets = {"cap_ret": 0, "ret": False, "frame": 0}

        self.cameras = []
        self.current_camera_index = 0

        try:
            with open("demos/camera/camera.yaml") as f:
                camera_ips = safe_load(f)

            if type(camera_ips) == dict:
                for cam in camera_ips:
                    cam_src = Camera_Source(
                        camera_ips[cam]["host"], camera_ips[cam]["stream"]
                    )
                    self.cameras.append(cam_src)
                self.stream_url = self.cameras[self.current_camera_index].get_stream()

                self.can_run = True
            else:
                logger.error("No cameras available on the YAML file!")
                self.can_run = False
        except FileNotFoundError:
            logger.error("No camera.yaml file found!")
            self.can_run = False

    def check_url(self):
        # If we don't have any cameras in our yaml, just print so
        if len(self.cameras) == 0:
            self.url_rets["url_ret"] = 1
            self.url_rets["ret"] = False
            return

        # Otherwise, find the corresponding camera
        host_url = self.cameras[self.current_camera_index].get_host()
        self.check_keys()

        try:
            # Use a quick search, no retries and a timeout of 1 second so we aren't
            #  wasting time. We will come back to this if we need to.
            r = self.http.request(
                "GET",
                host_url,
                timeout=urllib3.util.Timeout(1),
                retries=False,
            )
            if r.status == 200 or r.status == 302:
                self.url_rets["url_ret"] = 1
                self.url_rets["ret"] = True
                return
            else:
                self.url_rets["url_ret"] = 1
                self.url_rets["ret"] = False
                logger.error(
                    "No connection to be made. Http return status: " + str(r.status)
                )
                return
        except:
            self.url_rets["url_ret"] = 1
            self.url_rets["ret"] = False
            return

    def capture(self):
        self.cap_rets["ret"], self.cap_rets["frame"] = self.cap.read()
        self.cap_rets["cap_ret"] = 1
        return

    def check_keys(self):
        for keypress in self.get_input_buff():
            self.input_queue.get(False)
            num_stream_options = len(self.cameras)
            if keypress == "LEFT_P":
                logger.debug("Left press!")
                self.current_camera_index = (
                    self.current_camera_index - 1 + num_stream_options
                ) % num_stream_options
            elif keypress == "RIGHT_P":
                logger.debug("Right press!")
                self.current_camera_index = (
                    self.current_camera_index + 1
                ) % num_stream_options
            else:
                continue
            self.connection = False
            self.stream_url = self.cameras[self.current_camera_index].get_stream()

    def run(self):
        # Create generator here

        self.first = True

        while True:
            if not self.can_run:
                if self.first:
                    logger.debug("Printing on screen")
                    self.screen.clear()
                    self.screen.draw_text(
                        (self.screen.x_width // 2) - 4,
                        (self.screen.y_height // 2) - 6,
                        "NO CAMERA",
                    )
                    self.screen.push()

                    self.first = False
                yield
                continue
            self.check_keys()

            # We may need to check the camera
            if not self.connection:
                #############################################################
                # Start with creating the thread and running it
                #   In this thread, we essentailly have a pinger that
                #    looks for the url. This last a second, so we have
                #    it in a thread so that we can exit the demo during
                #    the search.
                url_thread = threading.Thread(target=self.check_url, daemon=True)
                url_thread.start()
                while not self.url_rets["url_ret"]:
                    yield
                self.url_rets["url_ret"] = 0
                url_thread.join()
                # Thread is exiting, we have our answer as to whether or
                #  not the webpage exists. Proceed accordingly
                #############################################################

                if self.url_rets["ret"]:  # Found the url
                    self.screen.draw_text(
                        (self.screen.x_width // 2) - 4,
                        (self.screen.y_height // 2) - 6,
                        "         ",
                    )
                    self.screen.push()
                    logger.info("Found the camera!")
                    self.connection = True
                    self.first = True
                else:  # Did not find the url
                    logger.error("Web site does not exist")

                    # This block tells us if we need to print to the sss;
                    #  we only want to do this once, so based on variable
                    #  'first'
                    if self.first:
                        logger.debug("Printing on screen")
                        self.screen.clear()
                        self.screen.draw_text(
                            (self.screen.x_width // 2) - 4,
                            (self.screen.y_height // 2) - 6,
                            "NO CAMERA",
                        )
                        self.screen.push()

                        self.first = False

                yield
                # Take us back to the top of the while loop; if we found
                #  a connection, we will skip this 'if' block, otherwise
                #  we will come back to it.
                continue

            # Okay, we found the camera, now let's use it
            try:

                self.cap = cv2.VideoCapture(self.stream_url)
                ret, frame = self.cap.read()

                if not ret:
                    logger.error("Got to ret failure")
                    self.connection = False
                    yield
                    continue
                grayFrame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            except:
                yield
                continue

            graySmall = cv2.resize(grayFrame, [48, 48])

            self.screen_max = graySmall.max()
            self.screen_min = graySmall.min()

            if self.screen_max < 12:
                self.screen_max = 12

            for i in range(48):
                for j in range(48):
                    pixel = int(
                        (graySmall[i][j] - self.screen_min) / (self.screen_max / 12)
                    )
                    if pixel > 12:
                        logger.debug(f"\nself.screen_min = {self.screen_min}")
                        logger.debug(f"pixel = {pixel}")
                        logger.debug(f"graySmall[{i}][{j}] = {graySmall[i][j]}")
                        logger.debug(f"self.screen_max = {self.screen_max}")
                        pixel = 12

                    if self.arr[i][j] != self.num_to_pixel[pixel]:
                        self.screen.draw_pixel(j, i, self.num_to_pixel[pixel])
                        self.arr[i][j] = self.num_to_pixel[pixel]

            self.screen.push()
            self.cap.release()

            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        try:
            self.cap.release()
        except:
            logger.error("Ran into an issue on exit")
            pass
        pass

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)
