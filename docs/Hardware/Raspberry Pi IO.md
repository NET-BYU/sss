At the center of the SSS is the Raspberry Pi, a compact, inexpensive computer that has a very accessible hardware interface. The SSS takes advantage of this interface and connects to all of its [panels](Panel.md) through the Pi's GPIO. Checkout this [link](https://pinout.xyz) to get an interactive guide to the GPIO.

## SPI Interface
The communication protocol the SSS uses to draw to all of the panels is the Serial Peripheral Interface (or SPI for short). We won't go into the [exact details](https://www.circuitbasics.com/basics-of-the-spi-communication-protocol/) of how this protocol works, but suffice it to say there are several connections necessary to make this work:

- **MOSI (Master Out Slave In)**: The actual binary instruction which tell the panel what to draw to the screen.
- **CS (Chip Select)**: This wire has to be on (or high) in order to receive and apply instructions from MOSI. There is one of these for each panel in our project.
- **SCLK (Clock Signal)**: This wire has an oscillating high-low timing signal that helps all the CS wires and MOSI stay in sync with each other.

## Device Tree Overlay
As you start exploring the Raspberry Pi GPIO its SPI busses (or groups of pins meant to act as a SPI device) you'll notice they only have 1 or 2 CS pins max. This means that by default, a Raspberry Pi can talk to two separate devices (or in our case, panels) at a time. This becomes a problem considering that the SSS has 12 panels!

We can overcome this problem by reassigning some of the GPIO pins on the Pi to be CS pins for our SPI bus. To do this, we will need to create a device tree overlay, or a special configuration file which reminds the Raspberry Pi's operating system on startup to make these changes to the pin definitions.

### Creating the Device Tree Source file

For those who are interested to see how this works, please refer to the [official documentation](https://www.raspberrypi.com/documentation/computers/configuration.html#device-trees-overlays-and-parameters) from Raspberry Pi on how to create a valid device tree source (`dts`) file and compile it.  [sss.dtbo]()


### Compiling the `dts` into a `dtbo`

```bash
dtc -@ -I dts -O dtb -o hotfix_fix.dtbo hotfix.dts
sudo cp sss.dtbo /boot/overlays
sudo nano /boot/config.txt
```

```
dtoverlay=sss,cs2_pin=6,cs3_pin=13,cs4_pin=19,cs5_pin=26,cs6_pin=25,cs7_pin=1,cs8_pin=12,cs9_pin=16,cs10_pin=20,cs11_pin=21,cs12_pin=17,cs13_pin=27,cs14_pin=22
```


![rpi-io](rpi-io.png)