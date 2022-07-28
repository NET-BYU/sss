# Adding Input Controllers

One of the central ideas of the SSS is that any demo can receive any type of input as long as it is formatted correctly. Adding an input to the SSS is not particularly difficult to do, but requires: 
1. The correct initialization of the input device/service in `__init__.py` in the `controllers` module
2. The actual driver file which contains the logic that forms the input and places it in the correct system queue (this will be it's own separate python file in the `controllers` directory).

## `controllers` module
Much like the `demos` module which contains all of the games and demos the SSS runs, the `controllers` module is the central location where all of the input devices/services pass information into the demo's `input_queue`. Just like a normal Python module, all of the initialization for this module takes place in the `__init__.py`. In the `controllers` module, the `__init__.py` is where all the controller services are initialized, checked for exceptions, and processed for the information to be put on the demos' `input_queue`.

### Initializing the input controller
In the `__init__.py` file, there is only one function: `start_inputs(system_queue, demo_input_queue)` which initializes all controllers and attaches them to the `system_queue` and the `demo_input_queue`. The beginning of this function is where we initialize the runner for our new input. We do this by declaring a variable and assigning it to the return value of our input driver's `start_processing_input()` function. In some cases, the initialization status of a controller will be provided from a different function (i.e. the keyboard driver for the simulator). Make sure you wrap the runner declaration inside of a `try/execpt` statement so if it fails, the entire SSS won't crash. In the case that the initialization runs into an exception, be sure to assign the runner to `None`. 

```python
try:
    from . import example  # This imports the actual input driver
    
    example_runner = example.start_processing_input(system_queue, demo_input_queue)
except Exception as e:
    example_runner = None
```

### Polling from the controllers
At the bottom of `start_inputs` is an infinite loop which will yields all of the inputs from each of the successfully initialized controllers into the appropriate system queues on every tick. To ensure that your controller has its inputs polled for every tick of the program, call `next()` on the generator declared:

```python
if example_runner:
    next(example_runner)
```

### The result
The following is a simplified result of what the `__init__.py` file should look like after having set up our `example` input. 
```python
from loguru import logger


def start_inputs(system_queue, demo_input_queue):
    try:
        logger.info("Loading my example input...")
        from . import example  # This imports the actual input driver

        example_runner = example.start_processing_input(system_queue, demo_input_queue)
        logger.info("...done")
    except Exception as e:
        example_runner = None
        logger.warning(e)
        logger.warning("Reason for input initialization failure will go here.")
        logger.warning("Program will continue to run without this input.")
    
    # More inputs are declared and initialized here

    while True:
        if example_runner:
            next(example_runner)

        # More input runners are `ticked` through here

        yield
```

## Input Driver File
The contents of your input driver file varies widely based on your method of generating input. The only requirement for each input driver file is a `start_processing_input(system_queue, demo_input_queue)` function which should contain a generator that will store input values in the correct queues before each `yield`. Depending on how your controlling service/device API works, you should return `None` from `start_processing_input`, throw an exception, or have a distinct function that checks initializability altogether in the case that it cannot start correctly.

### `example.py` Driver
Below is an arbitrary example skeleton file of what an input driver should contain. For more concrete examples, look at the the `mqtt` or `keyboard` drivers.

```python
# Example input driver file
from example_device import inputs

def start_processing_input(system_queue, demo_input_queue):
    while True:

        events = inputs.events.get()

        for event in inputs.events:
            # Check for KEYDOWN event and pass into input queue
            if event.type == inputs.KEYDOWN:

                if event.key == ESCAPE:
                    system_queue.put("QUIT")
                elif event.key == LEFT:
                    demo_input_queue.put("LEFT_P")
                
                # Continues for all key presses...

            # check for KEYUP event and pass into input queue
            elif event.type == inputs.KEYUP:
                if event.key == LEFT:
                    demo_input_queue.put("LEFT_R")
                elif event.key == UP:
                    demo_input_queue.put("UP_R")

                # Continues for all key releases...

            # Check for QUIT event.
            elif event.type == QUIT:
                system_queue.put("QUIT")

        inputs.update(events)

        yield

```

## Input Values

### Generally supported input values
For an input controller to be compatible with all of the demos in the SSS system, the following input messages need to be handled:

| Value | Description |
|-------|--------|
| LEFT_P | Left arrow pressed |
| LEFT_R | Left arrow released |
| RIGHT_P | Right arrow pressed |
| RIGHT_P | Right arrow released |
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

### Demo specific input values

As of the current version of the SSS, there is no system-wide mechanism for handling demo-specific input. However, the assumption could be made that if only the specific controller and demo could understand the type of messages sent on the `demo_input_queue` and therefore this would not affect normal operation. Yet, this is untested behavior and is done at the risk of that specific input driver's authors/users.