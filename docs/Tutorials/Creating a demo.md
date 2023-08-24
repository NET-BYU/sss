# Creating a demo

At its core, using the SSS is meant to be a learning experience. Anyone who wants to know more about computer engineering and the Internet of Things can go through the demos and learn quite a bit by experiencing the end result. However, the SSS is also designed to be an educational tool for designers. Anyone with the desire can make a demo themselves without needing to understand the entire system! In this article, we will discuss the template for making one of these demos by looking at the template’s basic structure and its required subcomponents.

## Template Format

All of the demos for the SSS are located in the `demos` folder in the `seven_segment_sign` repo that you clone from GitHub. If you take a look at the contents of `demos`, you’ll notice that each demo has its own folder with a `main.py` file inside of it:

```bash
demos
├── breakout
│   ├── high_score.txt
│   └── main.py
├── breakout_ai
│   └── main.py
├── checkerboard
│   └── main.py

.... 
```

Notice that all of the folder names are **lowercase** and that all of the programs are named **main.py**. If you don’t follow this convention, the system won’t see your demo and it will fail to load when you run the program. 

But what goes inside of your `main.py` is what really counts. The following format must be observed for your demo to run correctly. If you want to use this example as a boilerplate to get you started, you can always copy it from `demos/template/main.py`. 

```python
class Template:
    """This is a boilerplate class for creating new demos/games for the SSS platform. It needs to include definitions for the following functions: init, run, stop.
    The init function needs to at least have the things shown below. Frame rate is in frames per second and demo time is in seconds. Demo time should be None if it is a game.
    The run function yields a generator. This generator will be called a specified frame rate, this controls what is being pushed to the screen.
    The stop function is called when the demo/game is being exited by the upper SSS software. It should reset the state for the game"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = 300  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        while True:
            self.screen.draw_text(self.screen.x_width // 2 - 5, self.screen.y_height // 2 - 4, "HELLO THERE", push=True)
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
```

When creating your class object, name sure that the first letter of its name is capitalized. If you have a demo with two words (i.e. `breakout_ai`) make sure you capitalize the first letter of every word (i.e. `Breakout_Ai`). Failure to do this will cause your demo to not load or execute properly into the SSS system. You’ll also notice that apart from the normal Python `__init__()` method for a class, there is also a `run()` , `stop()` , and `get_input_buff()`. Implementing these functions is crucial to making sure that your demo will execute correctly at runtime. An explanation of what each one does is included below. 

## `__init__()`

This function allows you to set up some initial values for your demo. For example, if you were creating a game and wanted to include the initial amount of lives or the amount of ammo in a shooter, `__init__()` is the perfect place to set that up! Apart demo-specific variables that could be initialized, there are also a few SSS specific variables which must also be initialized which will affect how your demo runs and interacts with the rest of the system.

### frame_rate

This variable determines how fast your demo runs (i.e how many frames are rendered in a second). If your game is intended to have a buttery experience higher values will be more suited to your needs. 

***NOTE:** setting the `frame_rate` too high can result in too quick of a game on the simulator or undefined behavior on the actual SSS due to hardware limitations.* 

### demo_time

If you are creating a non-interactive demo (i.e. a shape bouncing around the screen or some other concept that does not require input), you will need to set a demo_time. This value will determine how long your demo will run for when the SSS is in kiosk/screensaver mode (i.e. cycling through demos when no one is actively using it). If you are planning on developing an interactive demo/game, set this value to `None`.

### input_queue

If you are creating a demo which requires active user input, you will need to keep track of the values are are coming in through the input queue. Regardless of what controller is connected to the SSS, the supported inputs are:

| Value | Description |
|-------|--------|
| LEFT_P | Left arrow pressed |
| LEFT_R | Left arrow released |
| RIGHT_P | Right arrow pressed |
| RIGHT_R | Right arrow released |
| UP_P | Up arrow pressed |
| UP_R | Up arrow released |
| DOWN_P | Down arrow pressed |
| DOWN_R | Down arrow released |
| START_P | Start button pressed |
| START_R | Start button released |
| SEL_P | Select button pressed |
| SEL_R | Select button released |
| PRI_P | Primary action button pressed |
| PRI_R | Primary action button released |
| SEC_P | Secondary action button pressed |
| SEC_R | Secondary action button released |

By setting `self.input_queue = input_queue` you link the input_queue for your demo to the system’s input buffer. All input information can be retrieved directly through this object or by using the `get_input_buff()` function as explained below. 

***NOTE:** This object is a Python Queue object. Any functions found [here](https://docs.python.org/3/library/queue.html) can be used on this object.*

### output_queue

If your demo needs to communicate information that will not be seen on the screen back to the user (i.e. a score or number of lives), this can be accomplished by using the output_queue. You can link your demo’s output_queue to the system output_queue by using `self.output_queue = output_queue`. At the current moment there are a limited amount of topics that you can send output through:

| Value | Description |
|-------|--------|
| SCORE | Sets the score of a game. |
| LIVES | Keeps track of the amount lives of a player |

To send data through one of these channels, you will `put` the name of the topic and the value you wish to send:

```python
self.output_queue.put("SCORE " + str(self.score))
```

***NOTE:** This object is a Python Queue object. Any functions found [here](https://docs.python.org/3/library/queue.html) can be used on this object.*

### screen

This object controls what will be drawn on the screen. Any functions as described in this [API doc](Game%20Display%20(Graphics%20functions).md) will work on this screen object. The demo screen is connected to the SSS system screen as follows:

```python
self.screen = screen
```

## `run()`

This function is what causes your actual program to run. Everything inside of this demo will be executed at runtime. Notice that in our boilerplate we surround the contents of this function with a `while True` loop ending with a `yield`. This special organization will cause whatever is inside the loop to be repeated until the system indicates that it is time for your demo to stop. By placing a `yield` keyword at the end of the loop, this converts the function from a **blocking** function to a **non-blocking** function (for the purposes of the system). If `yield` is not provided at the end of a frame rendering, the program will have no way to release control back to the SSS to actually draw anything or process any inputs and outputs that the demo. For a simple example of how a demo works with this non-blocking functionality, take a look at the `template` demo. For more complex examples, demos such as `game_of_life` , `snake`, or `breakout` which include multiple `yield`s for multiple cases.

## `stop()`

Code in this function will be exited right as soon as your demo is ended by the SSS or user. If you need to reset state or do any sort of cleanup, that code belongs here. If there is nothing fancy like that in your demo, no worries! Just leave a `pass` and be on your merry way.

## Handling Input in Your Demo

Most games on the SSS are pretty simple and are only meant to handle one keypress at a time. However, if you are feeling ambitious and want to keep track of multiple keypresses at a time (i.e. holding up and left to jump diagonally), this function will help you catch that by returning all keypresses waiting in the queue as a list. Below is a snippet from `breakout` which illustrates this functionality:

```python
# Include this at the top of your demo
from demos.utils import get_all_from_queue

# Put this part in your while True loop 
for keypress in get_all_from_queue(self.input_queue):

    if keypress == "LEFT_P":
        # Some action
        pass
    if keypress == "LEFT_R":
        # Some action
        pass
    if keypress == "RIGHT_P":
        # Some action
        pass
    if keypress == "RIGHT_R":
        # Some action
        pass 
```

## Conclusion

By following the `template` format, you learn about and are accountable for most of the key components of a demo! If you are still feeling overwhelmed and don’t know where to start in your demo creation journey, take a look at some of the existing ones and try to modify them bit by bit, taking note of what changes you caused. If there are any clarifications that need to be made, please feel free to reach out by [opening an issue on the GitHub repo](https://github.com/NET-BYU/seven_segment_sign/issues/new) or taking a look at how to get [support](../Troubleshooting/Support.md) so we can help you and also update our docs. We’re excited to see what you create!
