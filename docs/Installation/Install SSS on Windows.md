## Checking Dependencies

To install the SSS on your Windows device, you will need some certain dependencies. You can get them from your package manager by doing the following

You will need to install [Python 3](https://www.python.org/downloads/release/python-3106/) on your computer if you don't have it installed already.

You will also need a `git` on your machine and some way to interface with it. We recommend [Git Bash](https://gitforwindows.org/).

Once that is succesfully set up, you will need to make sure that `pip` is installed on your machine as well. Enter the following in your cmd:

```cmd
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
```

With `pip` installed we can now install `virtualenv`:
```cmd
python3 -m pip install --user virtualenv
```

## Setting up SSS
Once you have all the dependencies for your system installed, you can now move onto downloading and setting up the SSS on your system. 

First we'll get the code from GitHub by cloning the repository. Open up your Git Bash program and make sure that you are in your desired folder for downloading. Then clone the repo:

```bash
git clone git@github.com:NET-BYU/sss.git
```

Now with cmd, go to the folder where you cloned the repo.

```cmd
cd <path\ to\ repo>\sss     :: Change to SSS project directory
```

Then we will make sure that we create a virtual environment for all the python dependencies

```cmd
python -m venv venv         :: Create a python virtual environment called venv
.\venv\Scripts\activate     :: Activate the venv environment
```

>You should notice the prompt of your terminal change to indicate that you are now in your newly created python virtual environment. All of the following steps assume you are within this environment. If you are not, you will install all SSS dependencies system-wide which may conflict with some previous configurations.

Then you will need to install all the python requirements for the SSS:

```bash
pip install -r requirements.txt
```

And that's it! Once this has successfully completed, you are ready to run the simulator and start developing for the SSS! For more information, go to [Get Started](../Overview/Get%20started.md).

## Running on Windows
It its current state, the SSS cannot autoload all of the demos in kiosk, testing, and simulator mode. This may be fixed in a future release.