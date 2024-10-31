from loguru import logger

from demos.utils import get_all_from_queue


class Menu:
    """This demo displays a menu with all of the available demos"""

    demo_time = None
    max_demos_per_column = 15
    num_columns = 2

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(
        self, input_queue, output_queue, screen, system_input_queue=None, demos=None
    ):
        """
        Constructor

        Args:
            input_queue (Queue): The input queue
            output_queue (Queue): The output queue
            screen (Screen): The screen to draw on
            demos (list): List of all available demos

        """
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 20

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        self.system_input_queue = system_input_queue

        self.demos = demos or {}
        # Pull out the name of each demo
        self.demos = [demo for demo in self.demos.keys()]
        # Fix up names
        self.demo_names = [demo.replace("_", " ") for demo in self.demos]
        # Truncate list of demos
        self.demo_names = self.demo_names[
            : self.max_demos_per_column * self.num_columns
        ]

        self.flash_rate = 5

    def _draw_menu(self):
        # Draw the list of demos
        for i, demo in enumerate(self.demo_names):
            if i < self.max_demos_per_column:
                self.screen.draw_text(0, 4 + (i * 2), f"{i + 1:2}. {demo.upper()}")

            if i >= self.max_demos_per_column:
                self.screen.draw_text(
                    self.screen.x_width // 2,
                    4 + ((i - self.max_demos_per_column) * 2),
                    f"{i + 1:2}. {demo.upper()}",
                )

    def _update_menu(self, selected, show_text=True):
        if selected >= self.max_demos_per_column:
            selected_v_offset = selected - self.max_demos_per_column
            selected_h_offset = self.screen.x_width // 2
        else:
            selected_v_offset = selected
            selected_h_offset = 0

        if show_text:
            text = f"{selected + 1:2}. {self.demo_names[selected].upper()}"
        else:
            text = f"{selected + 1:2}. {' ' * len(self.demo_names[selected])}"

        self.screen.draw_text(selected_h_offset, 4 + (selected_v_offset * 2), text)

    def run(self):
        """Runs the simulation loop"""
        logger.info("Running the menu demo")

        selected = 0
        old_selected = 0
        show_text = True
        count = 0

        # Set up initial screen
        self.screen.draw_text(self.screen.x_width // 2, 0, "DEMOS")
        self.screen.draw_hline(0, 2, self.screen.x_width)
        self._draw_menu()
        self._update_menu(old_selected, selected)
        self.screen.push()

        while True:
            if not self.input_queue.empty():
                # Check to see if there are any keypresses to read
                for keypress in get_all_from_queue(self.input_queue):
                    # If there are directional buttons pressed
                    if keypress == "UP_P":
                        selected -= 1
                    elif keypress == "DOWN_P":
                        selected += 1
                    # If the user presses the select button
                    elif keypress == "SEL_P":
                        # Stop the menu demo
                        self.system_input_queue.put("QUIT")
                    elif keypress == "PRI_P":
                        # Start the selected demo
                        self.system_input_queue.put(self.demos[selected])

                # Roll around the selected demo
                selected %= len(self.demo_names)

            if selected != old_selected:
                # The selected item changed, so redraw the menu
                # self._update_menu(old_selected, selected)
                self._update_menu(old_selected, show_text=True)
                self._update_menu(selected, show_text=False)

            if count == self.flash_rate:
                self._update_menu(selected, show_text=show_text)
                show_text = not show_text
                count = 0

            self.screen.push()
            old_selected = selected
            count += 1

            yield

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
