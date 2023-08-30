from yaml import safe_load
from loguru import logger

HOST_INDEX = 0  # For online camera host URLs
STRM_INDEX = 1  # For online camera stream URLs


class Camera:
    """This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function needs to at least have the things shown below. Frame rate is in frames per second and demo time is in seconds. Demo time should be None if it is a game.
    The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen.
    The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game
    """

    demo_time = None  # Number of seconds or None if its game

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

        self.cameras = []
        self.current_camera_index = 0
        # Fill the array using the camera source info in the .yaml
        try:
            with open("demos/camera/camera.yaml") as f:
                camera_ips = safe_load(f)

            if type(camera_ips) == dict:
                for cam in camera_ips:
                    cam_src = (
                        camera_ips[cam]["host"],
                        camera_ips[cam]["stream"],
                    )  # host and stream tuple
                    self.cameras.append(cam_src)
                self.stream_url = self.cameras[self.current_camera_index][STRM_INDEX]

                self.can_run = True
            else:
                logger.error("No cameras available on the YAML file!")
                self.can_run = False
        except FileNotFoundError:
            logger.error("No camera.yaml file found!")
            self.can_run = False

    def run(self):
        # Create generator here
        while True:
            self.screen.draw_text(
                self.screen.x_width // 2 - 5,
                self.screen.y_height // 2 - 4,
                "HELLO THERE",
                push=True,
            )
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
