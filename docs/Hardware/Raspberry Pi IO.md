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

For those who are interested to see how this works, please refer to the [official documentation](https://www.raspberrypi.com/documentation/computers/configuration.html#device-trees-overlays-and-parameters) from Raspberry Pi on how to create a valid device tree source (`dts`) file and compile it. [sss.dts](https://raw.githubusercontent.com/NET-BYU/sss/docs/dts/sss.dts) has been provided for those who wish to copy the same configuration as the original SSS or to use it as reference.

A brief summary of what is accomplished in the file, the reassigning of certain GPIO pins, is depicted in the table below and can be used as reference in creating altered `dts` files:

#### GPIO to CS for SPI Bus 0 Reassignment
<table>
  <tr>
    <th>GPIO Pin</th>
    <td>6</td>
    <td>13</td>
    <td>19</td>
    <td>26</td>
    <td>25</td>
    <td>1</td>
    <td>12</td>
    <td>16</td>
    <td>20</td>
    <td>21</td>
    <td>17</td>
    <td>27</td>
    <td>22</td>
  </tr>
  <tr>
    <th>CS No.</th>
    <td>2</td>
    <td>3</td>
    <td>4</td>
    <td>5</td>
    <td>6</td>
    <td>7</td>
    <td>8</td>
    <td>9</td>
    <td>10</td>
    <td>11</td>
    <td>12</td>
    <td>13</td>
    <td>14</td>
  </tr>
</table>

### Compiling the `dts` into a `dtbo`
After a correctly formatted `dts` is made, it needs to be compiled into a device tree blob overlay (`dtbo`). This is a binary file is referred to upon boot and makes the appropriate changes in pin definition.

To compile the `dts` file:
```bash
dtc -@ -I dts -O dtb -o sss.dtbo sss.dts
```

After the `dtbo` binary is created, it needs to be moved or copied into the directory where GPIO overlays for the Pis are held:

```bash
sudo cp sss.dtbo /boot/overlays
```

Finally we will edit the boot config file to let the Pi know that we want to apply the overlay we just created:

```bash
sudo nano /boot/config.txt
```

Add this line to the file, notice how the first field of the assigned value to `dtoverlay` is our desired `dtbo` file name and the rest of the `cs<num>_pin` correspond to the table in the previous section.

```
dtoverlay=sss,cs2_pin=6,cs3_pin=13,cs4_pin=19,cs5_pin=26,cs6_pin=25,cs7_pin=1,cs8_pin=12,cs9_pin=16,cs10_pin=20,cs11_pin=21,cs12_pin=17,cs13_pin=27,cs14_pin=22
```

Now reboot your device and the changes should take effect!

## Pi Wiring

In our build of the SSS we connected the GPIO of the Raspberry Pi to a breakout board which distributes the CS signal to its respective panel and the MOSI, SCLK, GND, and VCC signals to the rest.

![rpi-io](rpi-io.png)