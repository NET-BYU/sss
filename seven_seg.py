from warnings import filterwarnings
import spidev
import time
from symbols import get_char2

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

DEFAULT_BAUDRATE = 7000000


class SevenSegment:
    def __init__(
        self,
        num_digits=8,
        num_per_segment=MAX7219_DIGITS,
        baudrate=DEFAULT_BAUDRATE,
        cs_num=0,
        brightness=7,
        clear=True,
        segment_orientation_array=None,
    ):
        """Constructor

        num_digits -- total number of digits in your display (default 8)
        num_per_segment -- total number of digits per MAX7219 segment (default 8)
        baudrate -- rate at which data is transfered (default 7000kHz), excessive rate may result in instability
        cs_num -- which control select line is being used (default 0)
        brightness -- starting brightness of the leds (default 7)
        clear -- clear the screen on initialization (default True)
        segment_orientation_array -- a 2d array of where the MAX7219 segments are located, one indexed (default None)
            : example [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12]] (height is 6 and width is 16)
            : this needs to be populated to use coordinate grid style functions i.e. letter2
        """
        self.num_digits = num_digits
        self.num_segments = num_digits // num_per_segment
        self.num_per_segment = num_per_segment
        self.baudrate = baudrate if baudrate < 10000000 else 10000000
        self._buf = [0] * self.num_digits
        self._display_buf = [0] * self.num_digits
        self._spi = spidev.SpiDev()
        self._spi.open(0, cs_num)
        self._spi.max_speed_hz = self.baudrate

        # Setup the display
        self.command(MAX7219_REG_SHUTDOWN, 1)  # 1 enables the display
        self.command(
            MAX7219_REG_DECODEMODE, 0
        )  # 0x01, 0x0F, 0xFF for different Code B modes
        self.command(MAX7219_REG_SCANLIMIT, self.num_per_segment - 1)
        self.command(MAX7219_REG_DISPLAYTEST, 0)
        self.brightness(brightness)

        self.display = (
            None or segment_orientation_array
        )  # [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12]]
        self._display_y_len = len(self.display) if self.display is not None else None

        self._flush_index = []
        if clear:
            self.clear()

        # self._display_bytes = self._create_buf()

    # Broken
    # def _create_buf(self):
    #     self._display_bytes = bytearray(self.num_digits * 2)
    #     for x in range(self.num_digits):
    #         self._display_bytes[x * 2] = 0
    #         self._display_bytes[x * 2 + 1] = MAX7219_REG_DIGIT0 + (
    #             x % self.num_per_segment
    #         )
    #     return self._display_bytes

    def command(self, register_num, value):
        """Sets control registers for each segment in the display"""
        # check register_num is good
        if register_num not in [
            MAX7219_REG_DECODEMODE,
            MAX7219_REG_INTENSITY,
            MAX7219_REG_SCANLIMIT,
            MAX7219_REG_SHUTDOWN,
            MAX7219_REG_DISPLAYTEST,
        ]:
            raise ValueError("register_num is not a correct value")
        # check value is good
        if not isinstance(value, (int)) or (value > 16 or value < 0):
            raise ValueError("value is not a correct value")
        self._write([register_num, value] * self.num_segments)

    def _write(self, data):
        self._spi.writebytes(bytes(data))

    def clear(self, flush=True):
        """Clears the buffer, and if specified, flushes the display"""
        self._buf = [0] * self.num_digits
        if flush:
            self.flush_legacy()

    def brightness(self, value):
        """Sets the brightness for all of the segments ranging from 0 - 15"""
        # check value is good
        if not isinstance(value, (int)) or (value > 16 or value < 0):
            raise ValueError("value is not a correct value")
        self.command(MAX7219_REG_INTENSITY, value)

    # Original flush, about 2 times slower than the current flush function
    def flush_legacy(self):
        """Cascade the buffer onto the display"""
        for seg in range(self.num_segments):
            for pos in range(self.num_per_segment):
                self._write(
                    ([MAX7219_REG_NOOP, 0] * (self.num_segments - seg))
                    + [
                        pos + MAX7219_REG_DIGIT0,
                        self._buf[pos + (seg * self.num_per_segment)],
                    ]
                    + ([MAX7219_REG_NOOP, 0] * seg)
                )

    def flush(self):
        for pos in self._flush_index:
            self._write(
                [MAX7219_REG_NOOP, 0]
                * (self.num_segments - 1 - int(pos / self.num_per_segment))
                + [MAX7219_REG_DIGIT0 + pos % self.num_per_segment, self._buf[pos]]
                + [MAX7219_REG_NOOP, 0] * int(pos / self.num_per_segment)
            )
        self._flush_index.clear()

    def _check_buf(self):
        indices = []
        for pos in range(len(self._buf)):
            if self._buf[pos] != self._display_buf[pos]:
                indices.append(pos)
        return indices

    # Broken
    # def flush2(self):
    #     indices = self._check_buf()
    #     print(indices)
    #     # Check if anything has changed
    #     if len(indices) == 0:
    #         return
    #     for pos in indices:
    #         self._display_bytes[(pos * 2)] = self._buf[pos]
    #         self._display_buf[pos] = self._buf[pos]
    #     print(self._display_bytes[::-1])
    #     self._write(self._display_bytes[::-1])
    #     print(self._display_bytes[-10], self._display_bytes[-11])

    def letter(self, position, char, dot=False, flush=False):
        """Outputs ascii letter as close as it can, working letters/symbols found in symbols.py"""
        # Check if position is valid
        if (
            not isinstance(position, (int))
            or position < 0
            or position >= self.num_digits
        ):
            raise ValueError("position is not a valid number")
        value = get_char2(char) | (dot << 7)
        self._buf[position] = value
        self._flush_index.append(position)
        if flush:
            self.flush()

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

    def letter2(self, x, y, char, dot=False, flush=False):
        # Check to make sure segment array has been initialized
        if self.display is None:
            raise ValueError("segment_orientation_array has not been initialized")
        pos = self._get_pos(x, y)
        self.letter(pos, char, dot, flush)

    def text(self, txt, start_position=0, flush=False):
        """Output text on the display at the start position if possible"""
        # Check if txt is going to overflow buffer
        if start_position + len(txt.replace(".", "")) > self.num_digits:
            raise OverflowError("Message would overflow spi buffer")

        for pos, char in enumerate(txt):
            # Check if current char is a dot and append to previous letter
            if char == "." and pos != 0:
                self.letter(pos + start_position - 1, txt[pos - 1], dot=True)
            else:
                self.letter(start_position + pos, char)

        if flush:
            self.flush()

    def text2(self, x, y, txt, horizontal=True, flush=False):
        """Output text on the display at the given x, y - option to display horizontal or vertical text"""
        # No initial checks and will let underlying functions do the work
        if horizontal:
            self.text(txt, self._get_pos(x, y))
        else:
            for pos, char in enumerate(txt):
                # Check if current char is a dot and append to previous letter
                if char == "." and pos != 0:
                    self.letter2(x, y + pos - 1, txt[pos - 1], True)
                else:
                    self.letter2(x, y + pos, char)

    def close(self, clear=True, shutdown=True):
        """Close the spi connection"""
        if clear:
            self.clear()
        if shutdown:
            self.command(MAX7219_REG_SHUTDOWN, 0)
        self._spi.close()


temp = SevenSegment(
    1152,
    brightness=7,
    segment_orientation_array=[[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12]],
)

temp.clear()

cur = time.time()
temp.text2(6, 0, "THE")
temp.text2(4, 1, "NET LAB")
temp.text2(7, 2, "IS")
temp.text2(6, 3, "THE")
temp.text2(6, 4, "BEST", flush=True)
# temp.text2(5, 0, "ASHTON", horizontal=False, flush=True)
# temp.letter2(5, 0, "A")
# temp.letter2(5, 1, "S")
# temp.letter2(5, 2, "H")
# temp.letter2(5, 3, "T")
# temp.letter2(5, 4, "O")
# temp.letter2(5, 5, "N", flush=True)
print(time.time() - cur)


cur = time.time()
temp.flush()
print(time.time() - cur)
# temp.text("ASHTON PALACIOS", 16)
# temp.text("IS", 32)
# temp.text("THE", 48)
# temp.text("BEST", 64)
# temp.flush()
# for bright in range(15):
#     temp.brightness(bright + 1)
#     time.sleep(0.1)
# for bright in range(16):
#     temp.brightness(15 - bright)
#     time.sleep(0.1)

temp.close(False, False)
