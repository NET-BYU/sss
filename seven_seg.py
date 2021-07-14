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
        self.brightness(7)
        self.clear()

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
                    [
                        pos + MAX7219_REG_DIGIT0,
                        self._buf[pos + (seg * self.num_per_segment)],
                    ]
                    + ([MAX7219_REG_NOOP, 0] * seg)
                )

    def letter(self, position, char, dot=False, flush=True):
        """Outputs ascii letter has close as it can, working letters found in symbols.py"""
        value = get_char2(char) | (dot << 7)
        self._buf[position] = value
        if flush:
            self.flush()

    def close(self):
        """Close the spi connection"""
        self.command(MAX7219_REG_SHUTDOWN, 0)
        self._spi.close()


temp = SevenSegment(96)
# print(list(bytes([MAX7219_REG_DIGIT7, 0x37] + [MAX7219_REG_NOOP, 0] * 11)))
# temp._write(bytes([MAX7219_REG_DIGIT7, 0x00] + [MAX7219_REG_NOOP, 0] * 11))

temp.letter(0, "A", flush=False)
temp.letter(1, "S", flush=False)
temp.letter(2, "H", flush=False)
temp.letter(3, "T", flush=False)
temp.letter(4, "O", flush=False)
temp.letter(5, "N", flush=False)
temp.letter(16, "P", flush=False)
temp.letter(17, "A", flush=False)
temp.letter(18, "L", flush=False)
temp.letter(19, "A", flush=False)
temp.letter(20, "C", flush=False)
temp.letter(21, "I", flush=False)
temp.letter(22, "O", flush=False)
temp.letter(23, "S", flush=True)
# temp._write(bytes([MAX7219_REG_DIGIT1, 0x7F, MAX7219_REG_DIGIT2, 0x37]))
# temp._write(bytes([MAX7219_REG_DIGIT2, 0x37, MAX7219_REG_NOOP, 0]))
time.sleep(6)
# temp.clear()
temp.close()
# temp.command(10, 1)

# spi = spidev.SpiDev()
# spi.open(0, 0)
# # print(spi.mode)
# spi.max_speed_hz = 100000

# spi.writebytes(bytes([MAX7219_REG_SHUTDOWN, 1]))
# (spi.writebytes2(bytes([MAX7219_REG_SCANLIMIT, 7])))
# (spi.writebytes2(bytes([MAX7219_REG_DECODEMODE, 0])))
# (spi.writebytes2(bytes([MAX7219_REG_DISPLAYTEST, 0])))
# (spi.writebytes2(bytes([MAX7219_REG_INTENSITY, 7])))
# # (spi.writebytes2(bytes([MAX7219_REG_DIGIT0, 0xFF] * 12)))
# # spi.xfer(bytes([MAX7219_REG_DISPLAYTEST,1]))
# spi.writebytes2(
#     bytes(
#         [
#             MAX7219_REG_DIGIT0,
#             0x37,
#             MAX7219_REG_DIGIT1,
#             0x4F,
#             MAX7219_REG_DIGIT2,
#             0x0E,
#             MAX7219_REG_DIGIT3,
#             0x0E,
#             MAX7219_REG_DIGIT4,
#             0x7E,
#         ]
#         * 12
#     )
# )
# for x in range(MAX7219_DIGITS):
#     spi.writebytes(bytes([x + 1, 0x37]))


# time.sleep(5)
# spi.writebytes(bytes([MAX7219_REG_SHUTDOWN, 0] * 12))
# spi.close()
