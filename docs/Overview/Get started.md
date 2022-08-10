To get started with the SSS, you will first need to make sure that it is installed on your machine. There are guides for both [Mac and Linux](../Installation/Install%20SSS%20on%20Mac%20or%20Linux.md) and [Windows](../Installation/Install%20SSS%20on%20Windows.md). Once you have completed this step, you are ready to start tinkering!

## Configuring the Environment 
As was seen in the installation guides, most of the python libraries which the SSS depends on have been installed in a virtual environment. You will need to make sure that you have activated this environment before running the SSS or else you are bound to run into errors that claim you are missing dependencies/libraries.

First, make sure you are in the folder where the SSS code is at (in the terminal), and then:

### Mac or Linux
```bash
source venv/bin/activate
```

### Windows
```cmd
.\venv\Script\activate
```

## Modes
We realize most people will never run the SSS on its original hardware and most likely will be tinkering with a simulated version. However, the code supports both execution in the original physical environment and on the simulator. 

Whenever you want to run a command for the SSS that will be simulated, add a **`-s`** flag at the end, else the program will try to run on a physical screen and will most likely crash if you do not have one.

### Kiosk
Kiosk mode can be though of as screen-saver mode. The SSS will cycle through demos that have a `demo_time` other than `None` (i.e. everything but games). To run in this mode:

```bash
python main.py kiosk                    # Don't forget to add "-s" if simulating
```

This mode comes with an optional `--testing` flag to speed up `demo_time`s so that you can cycle through demos faster and catch errors more quickly.

### Demo
If you want to execute a specific demo instead of waiting for it in kiosk mode, you can use demo mode! Any demo (including games) are available in this mode and will try to use the keyboard as the default input device:

```bash
python main.py demo <demo name here>    # Don't forget to add "-s" if simulating
```

### Testing
Finally, if you simply want to make sure that all the demos in the SSS are running correctly (including yours), run:

```bash
python main.py testing
```

To execute each demo for a few cycles to make sure everything has initialized and run correctly.

## What Next?
Now that you have figured out how to run the SSS in its different modes, why not try making something? Take a look at our Tutorials section, especially [Creating a Demo](../Tutorials/Creating%20a%20demo.md) to see how you can make your own interactive demos.