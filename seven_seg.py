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

DEFAULT_BAUDRATE = 100000


class SevenSegment:
    def __init__(
        self,
        num_digits=8,
        num_per_segment=MAX7219_DIGITS,
        baudrate=DEFAULT_BAUDRATE,
        cs_num=0,
        brightness=7,
    ):
        """Constructor

        num_digits -- total number of digits in your display (default 8)
        num_per_segment -- total number of digits per MAX7219 segment (default 8)
        baudrate -- rate at which data is transfered (default 100kHz), excessive rate may result in instability
        cs_num -- which control select line is being used (default 0)
        """
        self.num_digits = num_digits
        self.num_segments = num_digits // num_per_segment
        self.num_per_segment = num_per_segment
        self.baudrate = baudrate
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
        self.clear()
        self.display = [[1,2],[3,4],[5,6],[7,8],[9,10],[11,12]]

    def _create_buf(self):
        self._display_bytes = bytearray(self.num_digits*2)
        for x in range(self.num_digits):
            self._display_bytes[x*2] = MAX7219_REG_DIGIT0+(x%self.num_per_segment)
            self._display_bytes[x*2+1] = 0
        return self._display_bytes

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
        self._spi.xfer2(bytes(data))

    def clear(self, flush=True):
        """Clears the buffer, and if specified, flushes the display"""
        self._buf = [0] * self.num_digits
        if flush:
            self.flush()

    def brightness(self, value):
        """Sets the brightness for all of the segments ranging from 0 - 15"""
        # check value is good
        if not isinstance(value, (int)) or (value > 16 or value < 0):
            raise ValueError("value is not a correct value")
        self.command(MAX7219_REG_INTENSITY, value)

    def flush(self):
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

    def _check_buf(self):
        indices = []
        for pos in range(len(self._buf)):
            if self._buf[pos] != self._display_buf[pos]:
                indices.append(pos)
        return indices

    def flush2(self):
        indices = self._check_buf()
        # Check if anything has changed
        if len(indices) == 0:
            return
        for pos in indices:
            self._display_bytes[pos*2+1] = self._buf[pos]
            self._display_buf[pos] = self._buf[pos]
        self._write(self._display_bytes)
        
        # end = [MAX7219_REG_NOOP, 0] * (indices[0] / self.num_per_segment)
        # middle = []
        # for pos in range(len(indices)):

        #     middle.append(MAX7219_REG_DIGIT0 + indices[pos] % 8)
        #     middle.append(self._buf[indices[pos]])


    def letter(self, position, char, dot=False, flush=False):
        """Outputs ascii letter as close as it can, working letters/symbols found in symbols.py"""
        value = get_char2(char) | (dot << 7)
        self._buf[position] = value
        if flush:
            self.flush()

    def text(self, txt, start_position=0, flush=False):
        """Output text on the display at the start position if possible"""
        # Check if txt is going to overflow buffer
        if start_position + len(txt.replace(".", "")) > self.num_digits:
            raise OverflowError("Message would overflow spi buffer")

        for pos, char in enumerate(txt):
            # Check if current char is a dot and append to previous letter
            if char == ".":
                self.letter(pos + start_position - 1, txt[pos - 1], dot=True)
            else:
                self.letter(start_position + pos, char)

        if flush:
            self.flush()

    def close(self, clear=True, shutdown=True):
        """Close the spi connection"""
        if clear:
            self.clear()
        if shutdown:
            self.command(MAX7219_REG_SHUTDOWN, 0)
        self._spi.close()


temp = SevenSegment(96, brightness=1)
print(temp._create_buf())
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

temp.close(True)
