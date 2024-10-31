import socket
import struct

from display import symbols as sy  # get_char2

MAX7219_DIGITS = 8

MAX7219_REG_NOOP = 0x0
MAX7219_REG_DIGIT0 = 0x1
MAX7219_REG_DIGIT1 = 0x02
MAX7219_REG_DIGIT2 = 0x3
MAX7219_REG_DIGIT3 = 0x4
MAX7219_REG_DIGIT4 = 0x5
MAX7219_REG_DIGIT5 = 0x6
MAX7219_REG_DIGIT6 = 0x7
MAX7219_REG_DIGIT7 = 0x8
MAX7219_REG_DECODEMODE = 0x9
MAX7219_REG_INTENSITY = 0xA
MAX7219_REG_SCANLIMIT = 0xB
MAX7219_REG_SHUTDOWN = 0xC
MAX7219_REG_DISPLAYTEST = 0xF


DEFAULT_BAUDRATE = 2000000


class SevenSegment:
    def __init__(
        self,
        baudrate=DEFAULT_BAUDRATE,
        ip_address="172.0.0.3",
        port=1883,
        brightness=7,
        clear=True,
    ):
        """Constructor

        Args:
            baudrate (int): rate at which data is transfered (default 9000kHz), excessive rate may result in instability
            ip_address (string): ip address of the panel
            port (int): port of the panel
            brightness (int): starting brightness of the leds
            clear (bool): clear the screen on initialization
        """
        self.num_digits = 96
        self.num_segments = 12
        self.num_per_segment = 8
        self.baudrate = baudrate if baudrate < 10000000 else 10000000
        # self._buf = [0] * self.num_digits
        self._command_buf = [0] * (2 + self.num_segments)
        self._buf = [0] * (2 + self.num_digits)
        self._buf[0] = 0  # data
        self._buf[1] = self.num_digits
        self._display_buf = [0] * self.num_digits
        self.addr = (ip_address, port)
        self.panel_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.commandSerializer = struct.Struct("B" * (self.num_segments + 2))
        self.dataSerialer = struct.Struct("B" * (self.num_digits + 2))

        # Setup the display
        self.command(MAX7219_REG_SHUTDOWN, 1)  # 1 enables the display
        self.command(
            MAX7219_REG_DECODEMODE, 0
        )  # 0x01, 0x0F, 0xFF for different Code B modes
        self.command(MAX7219_REG_SCANLIMIT, self.num_per_segment - 1)
        self.command(MAX7219_REG_DISPLAYTEST, 0)
        self.brightness(brightness)

        # Set up cascaded segemtn orientation stuff to enable 2 functions
        self.display = [
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ]  # [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12]]
        self._display_y_len = len(self.display) if self.display is not None else None

        self._flush_index = []
        if clear:
            self.clear()

    def command(self, register_num, value):
        """
        Sets control registers for each segment in the display

        Args:
            register_num (int): which register to set
            value (int or list(int)): value(s) to set the register to
        """
        # check register_num is good
        if register_num not in [
            MAX7219_REG_DECODEMODE,
            MAX7219_REG_INTENSITY,
            MAX7219_REG_SCANLIMIT,
            MAX7219_REG_SHUTDOWN,
            MAX7219_REG_DISPLAYTEST,
        ]:
            raise ValueError(f"register_num is not a correct value: {register_num}")
        # check value is good
        if not isinstance(value, (int, list)):
            raise ValueError(f"value is not a correct type: {type(value)}")
        if type(value) == int and not (0 <= value < 16):
            raise ValueError(f"value is not within bounds [1:15]: {value}")
        if type(value) == list and not (max(value) < 16 and min(value) >= 0):
            raise ValueError(f"values in list are not within bounds [1:15]: {value}")
        # generate command buffer
        self._command_buf[0] = register_num
        self._command_buf[1] = self.num_segments
        self._command_buf[2:] = (
            value if type(value) == list else [value] * self.num_segments
        )
        self._write_command()

    def close(self, clear=True, shutdown=True):
        """
        Close the spi connection

        Args:
            clear (bool): clear the display before closing
            shutdown (bool): shutdown the display before closing
        """
        if clear:
            self.clear()
        if shutdown:
            self.command(MAX7219_REG_SHUTDOWN, 0)
        # self._spi.close()
        self.panel_sock.close()

    def clear(self, flush=True):
        """
        Clears the buffer, and if specified, flushes the display

        Args:
            flush (bool): flush the display after clearing
        """
        self._buf[2:] = [0] * self.num_digits
        if flush:
            self.flush_legacy()

    def brightness(self, value):
        """
        Sets the brightness for all of the segments ranging from 0 - 15

        Args:
            value (int) or (list): brightness value to set
        """
        # check value is good
        if not isinstance(value, (int, list)):
            raise ValueError(f"value is not a correct type: {type(value)}")
        if type(value) == int and not (0 <= value < 16):
            raise ValueError(f"value is not within bounds [1:15]: {value}")
        if type(value) == list and not (max(value) < 16 and min(value) >= 0):
            raise ValueError(f"values in list are not within bounds [1:15]: {value}")
        self.command(MAX7219_REG_INTENSITY, value)

    # Original flush, about 2 times slower than the current flush function, used in clear
    def flush_legacy(self):
        """Cascade the buffer onto the display"""
        # for seg in range(self.num_segments):
        #     for pos in range(self.num_per_segment):
        #         self._write(
        #             ([MAX7219_REG_NOOP, 0] * (self.num_segments - seg))
        #             + [
        #                 pos + MAX7219_REG_DIGIT0,
        #                 self._buf[pos + (seg * self.num_per_segment)],
        #             ]
        #             + ([MAX7219_REG_NOOP, 0] * seg)
        #        )
        self.flush()

    def flush(self):
        """Flush all the current changes to the display"""
        # for pos in self._flush_index:
        #     self._write(
        #         [MAX7219_REG_NOOP, 0]
        #         * (self.num_segments - 1 - int(pos / self.num_per_segment))
        #         + [MAX7219_REG_DIGIT0 + pos % self.num_per_segment, self._buf[pos]]
        #         + [MAX7219_REG_NOOP, 0] * int(pos / self.num_per_segment)
        #     )
        # self._flush_index.clear()
        self._write_data()

    def raw(self, position, value, flush=False):
        """
        Given raw 0-255 value draw symbol at given postion

        Args:
            position (int): position to draw the symbol
            value (int): value to draw at the position
            flush (bool): flush the display after drawing
        """
        # Check if position is valid
        if (
            not isinstance(position, (int))
            or position < 0
            or position >= self.num_digits
        ):
            raise ValueError("position is not a valid number")
        # Check if char is int between 0 and 255
        if not isinstance(value, (int)) or value < 0 or value > 255:
            raise ValueError("value is either not an int or out of bounds (0-255)")
        self._buf[position + 2] = value
        # self._flush_index.append(position)

        if flush:
            self.flush()

    def raw2(self, x, y, value, flush=False):
        """
        Given raw 0-255 value draw symbol at given coordinate

        Args:
            x (int): x coordinate to draw the symbol
        """
        position = self._get_pos(x, y)
        self.raw(position, value, flush)

    def letter(self, position, char, dot=False, flush=False):
        """
        Outputs ascii letter as close as it can, working letters/symbols found in symbols.py

        Args:
            position (int): position to draw the symbol
            char (str): character to draw at the position
            dot (bool): whether or not to draw a dot after the character
            flush (bool): flush the display after drawing
        """
        # Check if position is valid
        if (
            not isinstance(position, (int))
            or position < 0
            or position >= self.num_digits
        ):
            raise ValueError("position is not a valid number")
        value = sy.get_char2(char) | (dot << 7)
        self._buf[position + 2] = value
        # self._flush_index.append(position)
        if flush:
            self.flush()

    def letter2(self, x, y, char, dot=False, flush=False):
        """
        Output letter on the display at the coordinates provided if possible

        Args:
            x (int): x coordinate to draw the symbol
            y (int): y coordinate to draw the symbol
            char (str): character to draw at the position
            dot (bool): whether or not to draw a dot after the character
            flush (bool): flush the display after drawing
        """
        # Check to make sure segment array has been initialized
        if self.display is None:
            raise ValueError("segment_orientation_array has not been initialized")
        pos = self._get_pos(x, y)
        self.letter(pos, char, dot, flush)

    def text(self, txt, start_position=0, flush=False):
        """
        Output text on the display at the start position if possible

        Args:
            txt (str): text to draw on the display
            start_position (int): position to start drawing the text
            flush (bool): flush the display after drawing
        """
        # Check if txt is going to overflow buffer
        if start_position + len(txt.replace(".", "")) > self.num_digits:
            raise OverflowError("Message would overflow spi buffer")

        for pos, char in enumerate(txt):
            # Check if current char is a dot and append to previous letter
            if char == "." and pos != 0:  # mutliple dots in a row cause an error
                self.letter(pos + start_position - 1, txt[pos - 1], dot=True)
            else:
                self.letter(start_position + pos, char)

        if flush:
            self.flush()

    def text2(self, x, y, txt, horizontal=True, flush=False):
        """
        Output text on the display at the given x, y - option to display horizontal or vertical text

        Args:
            x (int): x coordinate to draw the symbol
            y (int): y coordinate to draw the symbol
            txt (str): text to draw on the display
            horizontal (bool): whether or not to draw the text horizontally
            flush (bool): flush the display after drawing
        """
        # No initial checks and will let underlying functions do the work
        if horizontal:
            # self.text(txt, self._get_pos(x, y))
            for pos, char in enumerate(txt):
                # Check if current char is a dot and append to previous letter
                if char == "." and pos != 0:  # mutliple dots in a row cause an error
                    self.letter2(x + pos - 1, y, txt[pos - 1], True)
                else:
                    self.letter2(x + pos, y, char)
        else:
            for pos, char in enumerate(txt):
                # Check if current char is a dot and append to previous letter
                if char == "." and pos != 0:  # mutliple dots in a row cause an error
                    self.letter2(x, y + pos - 1, txt[pos - 1], True)
                else:
                    self.letter2(x, y + pos, char)
        if flush:
            self.flush()

    # Write data buffer to panel through socket
    def _write_data(self):
        self.panel_sock.sendto(self.dataSerialer.pack(*self._buf), self.addr)

    # Write command buffer to panel through socket
    def _write_command(self):
        self.panel_sock.sendto(
            self.commandSerializer.pack(*self._command_buf), self.addr
        )

    # Get position in the buffer for a given x,y coordinate
    def _get_pos(self, x, y):
        # Check y is within bounds
        if not isinstance(y, (int)) or y < 0 or y >= self._display_y_len:
            return ValueError("y value is not a valid number")

        # Check if x is an int
        if not isinstance(x, (int)):
            return ValueError("x value is not an integer")
        x_seg = int(x / self.num_per_segment)

        # check if x is within bounds of y row
        if x_seg >= len(self.display[y]):
            raise ValueError("x value is out of range")

        return (self.display[y][x_seg] - 1) * self.num_per_segment + (
            x % self.num_per_segment
        )

    # Not current in use
    def _check_buf(self):
        indices = []
        for pos in range(len(self._buf)):
            if self._buf[pos] != self._display_buf[pos]:
                indices.append(pos)
        return indices
