# Adding Output Broadcasters

One of the central ideas of the SSS is that any demo can transmit any type of output and  as long as it is formatted correctly. Handling output from the SSS is not particularly difficult to do, but requires: 
1. The correct initialization of the output device/service in `__init__.py` in the `broadcasters` module
2. The actual driver file which contains the logic to handle demo output by reading it in from the correct system queue (this will be it's own separate python file in the `broadcasters` directory).

## `broadcasters` module
Much like the `demos` module which contains all of the games and demos the SSS runs, the `broadcasters` module is the central location where all of the output devices/services receive information from the demo's `output_queue` and relay that to the appropriate broadcasters. Just like a normal Python module, all of the initialization for this module takes place in the `__init__.py`. In the `broadcasters` module, the `__init__.py` is where all the broadcasting services are initialized, checked for exceptions, and process the information from the demos' `output_queue`.

### Initializing the output broadcaster
In the `__init__.py` file, there is only one function: `start_outputs(system_queue, demo_output_queue)` which initializes all broadcasters and attaches them to the `system_queue` and the `demo_output_queue`. The beginning of this function is where we create a queue that will feed into output device. This is where the output of the `demo_output_queue` will eventually go. We then initialize the runner for our output device/service by declaring a variable and assigning it to the return value of our output driver's `start_processing_output()` function. In some cases, the initialization status of a broadcaster may be provided by a different function. Make sure you wrap the runner declaration inside of a `try/execpt` statement so if it fails, the entire SSS won't crash. In the case that the initialization runs into an exception, be sure to assign the runner to `None`. 

```python
try:
    from . import example  # This imports the actual output driver

    example_q = Queue()
    
    example_runner = example.start_processing_output(system_queue, example_q)
except Exception as e:
    example_runner = None
```

### Polling from `demo_output_queue`
At the bottom of `start_outputs` is an infinite loop which extracts the current values on the `demo_output_queue` and passes them to available broadcaster runners. To ensure that your broadcaster receives its outputs from the output queue for every tick of the program, make sure `next()` is called on the runner:

```python

# Loops through every available output message in the output queue
for payload in utils.get_all_from_queue(demo_output_queue):

    # If broadcaster is successfully initialized, the output will go to the service/device's queue and into the driver
    if example_runner:
        example_q.put(payload)
        next(example_runner)
```

### The result
The following is a simplified result of what the `__init__.py` file should look like after having set up our `example` output. 
```python
from queue import Queue

from loguru import logger

from . import utils


def start_outputs(system_queue, demo_output_queue):
    try:
        logger.info("Loading example output...")
        from . import example

        example_q = Queue()

        example_runner = example.start_processing_output(system_queue, example_q)
        logger.info("...done")
    except Exception as e:
        example_runner = None
        logger.warning(e)
        logger.warning("Reason for broadcaster initialization failure will go here.")
        logger.warning("Program will continue to run without this output.")

    # More broadcasters are declared and initialized here

    while True:

        for payload in utils.get_all_from_queue(demo_output_queue):
            if example_runner:
                example_q.put(payload)
                next(example_runner)

            # More output runners are `ticked` through here

        yield
```

## Output Driver File
The contents of your output driver file varies widely based on the device or service's method of receiving input. The only requirement for each output driver file is a `start_processing_output(system_queue, driver_q)` function which should contain a generator that will read demo output values from the queue created for the driver before each `yield`. Depending on how your broadcasting service/device API works, you should return `None` from `start_processing_output`, throw an exception, or have a distinct function that checks initializability altogether in the case that it cannot start correctly.

### `example.py` Driver
Below is an arbitrary example skeleton file of what an output driver could look like. For a more concrete example, look at the the `mqtt` driver.

```python
# Example output driver file
from example_device import process_data

from . import utils

def start_processing_output(system_queue, example_q):
    
    while True:

        for item in utils.get_all_from_queue(example_q):
            process_data(item)
        yield

```

## Output Values
Unlike `demo_input_queue` values, there are no set of universally supported output types for the SSS. It is understood that each type of output that gets put on the `demo_output_queue` will vary widely depending on that demo's targeted broadcaster and purpose. However, it is recommended that info that is sent on the output queue be formatted in JSON.
