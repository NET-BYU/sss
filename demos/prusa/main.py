import os
import yaml
import requests

class Prusa:
    """
    This is not a game, but a demo that shows the status of a Prusa printer
    using the PrusaLink API. It is designed for an 'SSSMini' which is a 1x1 screen.
    To use this demo, you need to have a Prusa printer with PrusaLink enabled
    and the API key set up in the config.yaml file.
    Example config.yaml:
        prusalink_ip: "<PRUSA_LINK_IP>"
        api_key: "<API_KEY>"
    You can also add the service file to your systemd services to run it automatically.
    Ensure that your system is connected to the same network as the Prusa printer,
    and you have a connection to the screen.
    """

    demo_time = None  # Number of seconds or None if its game

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue for user input
            output_queue (Queue): Queue for game output
            screen (Screen): Screen object
        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 0.5

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        config_path = os.path.join(os.path.dirname(__file__), 'config.yaml')
        with open(config_path, 'r') as f:
            config = yaml.safe_load(f)
        self.prusalink_ip = config.get('prusalink_ip')
        self.api_key = config.get('api_key')
        self.URL = f"http://{self.prusalink_ip}/api/v1/job"
        self.HEADERS = {
            "X-Api-Key": self.api_key,
        }
        self.response = None
        self.data = None
        self.state = "N/A"
        self.filename = "N/A"
        self.progress = 0
        self.time_elapsed = "N/A"
        self.time_left = "N/A"
        self.minutes_left = "N/A"
        self.display_filename = "N/A"
        self.display_status = "N/A"
        self.display_time_elapsed = "0"
        self.display_time_left = "0"
        self.display_progress = 0


    def get_stats(self):
        """
        Returns static information.
        """
        try:
            self.response = requests.get(self.URL, headers=self.HEADERS, timeout=5)
            self.response.raise_for_status()

            # Check if response has content before parsing JSON
            if not self.response.text.strip():
                # print("Empty response received")
                return self._get_default_stats()

            # Check content type
            content_type = self.response.headers.get('content-type', '')
            if 'application/json' not in content_type:
                print(f"Unexpected content type: {content_type}")
                print(f"Response body: {self.response.text[:200]}")  # First 200 chars
                return self._get_default_stats()

            self.data = self.response.json()

            self.state = self.data.get("state", "N/A")
            self.filename = self.data.get("file", {}).get("display_name", "N/A")
            self.progress = self.data.get("progress", 0)
            self.time_elapsed = self.data.get("time_printing", "N/A")
            self.time_left = self.data.get("time_remaining", "N/A")
            self.minutes_left = self.time_left // 60 if isinstance(self.time_left, int) else "N/A"

        except requests.RequestException as e:
            # print(f"Request failed: {e}")
            return self._get_default_stats()
        except ValueError as e:
            # print(f"JSON parsing failed: {e}")
            # print(f"Response status: {self.response.status_code}")
            # print(f"Response headers: {dict(self.response.headers)}")
            # print(f"Response body: {self.response.text[:200]}")  # First 200 chars
            return self._get_default_stats()

        return {
            "state": self.state,
            "filename": self.filename,
            "progress": self.progress,
            "time_elapsed": self.time_elapsed,
            "time_left": self.time_left,
            "minutes_left": self.minutes_left,
        }

    def _get_default_stats(self):
        """Return default stats when API call fails"""
        return {
            "state": "IDLE",
            "filename": "N/A",
            "progress": 0,
            "time_elapsed": "0",
            "time_left": "0",
            "minutes_left": "0",
        }

    def run(self):
        """Main loop for the demo"""
        # Create generator here
        while True:
            self.stats = self.get_stats()
            
            # print("=== Printer Status ===")
            # print(f"time left: {self.stats['time_left']}")
            # print(f"Stats: {self.stats}")
            # draw the filename
            self.display_status = self.stats['state']
            # print(f"Status: {self.display_status}")
            if self.stats['state'] == "IDLE" and int(self.display_time_elapsed[0:8].strip()) > 0:
                self.display_progress = 0
                self.display_time_elapsed = "0"
                self.display_time_left = "0"
                self.display_filename = "N/A"
                self.screen.clear()
                print("hit")
                

            self.screen.draw_text(
                self.screen.x_width // 2 - 8,
                self.screen.y_height // 2 - 6,
                self.display_status,
                push=True,
            )
            
            if self.stats['state'] == "IDLE":
                yield
                continue

            self.display_filename = self.stats['filename'][:16].upper()
            # print(f"Filename: {self.display_filename}")
            self.screen.draw_text(
                self.screen.x_width // 2 - 8,
                self.screen.y_height // 2 - 4,
                self.display_filename,
                push=True,
            )


            # print(f"Time left: {self.stats['minutes_left']} minutes")
            self.display_time_elapsed = f"{str(self.stats['time_elapsed']):>5}   ELAPSED"
            self.screen.draw_text(
                self.screen.x_width // 2 - 8,
                self.screen.y_height // 2 - 2,
                self.display_time_elapsed,
                push=True,
            )

            # print(f"Time left: {self.stats['minutes_left']} minutes")
            self.display_time_left = f"{str(self.stats['time_left']):>5}   LEFT{self.stats['minutes_left']/60:>4.1f}"
            self.screen.draw_text(
                self.screen.x_width // 2 - 8,
                self.screen.y_height // 2,
                self.display_time_left,
                push=True,
            )

            # Map progress (0-100) to a value between 0 and 16
            percentage_complete = int((self.stats['progress'] / 100) * 16)
            percentage_complete = max(0, min(percentage_complete, 16))
            # print(f"Progress: {self.stats['progress']}%, (mapped to {percentage_complete})")
            self.display_progress = f"{int(self.stats['progress']):>5}   PROGRESS"
            self.screen.draw_text(
                self.screen.x_width // 2 - 8,
                self.screen.y_height // 2 + 2,
                self.display_progress,
                push=True,
            )
            for i in range(percentage_complete):
                self.screen.draw_pixel(
                    self.screen.x_width // 2 - 8 + i,
                    self.screen.y_height // 2 + 5,
                    15,
                    combine=False,
                    push=True,
                )
            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
