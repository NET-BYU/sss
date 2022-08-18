## General SSS FAQ

<details>
  <summary>Errors stating that there isn't a specific Python module installed when it is</summary>
  <br>
  After the initial installation and running of the program, users may find that upon returning to run the program again, they are met with errors that state they do not have the right Python Modules installed. There are several reasons that could cause this:

  <br>
  <h3>Not using the venv for SSS</h3>
  Make sure that you are running the SSS inside the virtual environment by running:

  ```bash
  which python
  ```

  If the response string does not indicate that the python interpreter is coming from a virtual environment, for example:

  ```
  /usr/bin/python
  ```

  Then make sure to activate the virtual environment created for the SSS:

  ```bash
  source ~/sss/venv/bin/activate        # Make sure this is the path to your venv
  ```

  Then check the python interpreter being used again. It should look something like the following:
  
  ```bash
  which python

  ./venv/bin/python
  ```

  <h3>Installed python modules in wrong environment</h3>
  During the setup process of the SSS, it is possible that you may not have entered into the virtual environment made for the project before installing the dependencies found in requirements.txt. To see if these modules exist in your virtual environment:

  First activate the created environment:
  ```bash
  source ~/sss/venv/bin/activate        # Make sure this is the path to your venv
  ``` 

  Check the list of installed modules in the venv:
  ```bash
  pip freeze                            # Shows list of python modules installed in venv
  ```

  If the list of packages printed includes the dependencies found in requirements.txt, then you should be good and a further issue should be opened on the repository.
  <br><br>

</details>

## Physical SSS FAQ

<details>
  <summary>There is no drawing on the screen even though there is terminal output</summary>
  
<br>
  If there is no drawing on the screen but the terminal output from the program indicates no errors, this indicates that there is something wrong with the hardware itself. There are several things you can check to rule out serious damage first:

  <ol>
    <li>Make sure the screen is plugged in. Often times this is the most overlooked problem</li>
    <li>Restart the SSS hardware. Unplug everything from the wall. Plug in the Raspberry Pi. Log into the Pi's OS. Plug in the screen hardware. Doing the preceding in this order allows the SSS program to detect the ICs in the screen in a determined (uninitialized) state. </li>
    <li>Check the continuity of the traces between joints in any of the circuits that carry power. </li>
  </ol>
  <br><br>
</details>


<details>
  <summary>I plugged in the screen but it is flashing red, random patterns. What do I do?</summary>
  
<br>
  Normally if the screen is flashing red sporadically, this is indicative of the ICs on the screen being in an uncertain state. The best thing to do is the following:

  <ol>
    <li>Unplug everything from the wall.</li>
    <li>Plug in the Raspberry Pi. </li>
    <li>Log into the Pi's OS. </li>
    <li>Plug in the screen hardware.</li>
  </ol>

   Doing the preceding in this order allows the ICs to be reset from their undetermined state. 
  <br><br>
</details>

<details>
  <summary>Why are there random artifacts left on the screen as a demo is running?</summary>
  <br>
  If a demo is executing normally, but then random digits on the SSS start to display unexpected patterns, this is most likely due to the refresh rate of the ICs being too high. Because the traces and wires on the SSS are somewhat long, this means that the signal is more susceptible to delay and noise. The faster the ICs try to refresh at, the more likely it is for the data to miss the SCLK rising window.
<br>
  To mititgate this issue, we will need to modify the seven_seg.py file in the display directory. To edit the file use your favorite text editor and open up the sss/display/seven_seg.py file. Then we will need to modify the following line:
<br>
  ```python
  DEFAULT_BAUDRATE = 3000000            # Refresh rate of the ICs is currently set to 3MHz
  ```
  Dropping the DEFAULT_BAUDRATE value is a quick way to clear up artifacts. However, this also comes with the unfortunate side effect of slowing the execution of the SSS down. A more sure-fire way to fix this problem would be to redesign the panels of the screen to minimize the length of the traces and also make the width thicker. Furthermore, a more concerted effort to reduce noise in the overall design would more effectivly mitigate signal corruption.
  <br><br>
</details>

## Simulator SSS FAQ
<details>
  <summary>None of my outputs seem to work with the simulator.</summary>
  <br>
  As of this revision of the SSS, no output handling has been implemented for the simulator, although it is definitely a TODO.
  <br><br>
</details>

If there are any other questions that you have concerning the use of the SSS project, please feel free to go to the [support](Support.md) page and follow the links to open an issue.