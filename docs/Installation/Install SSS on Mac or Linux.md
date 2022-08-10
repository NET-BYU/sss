## Checking Dependencies

To install the SSS on your Mac or Linux device, you will need some certain dependencies. You can get them from your package manager by doing the following

>This project only uses `python3`. Check to see if you are using `python3` by:
```bash
python -V
```
If your system has multiple versions of `python` installed, you can force v3 by replacing all `python` and `pip` commands with `python3` and `pip3`.

### For Mac
Make sure that you have [homebrew](https://brew.sh/) installed and then run the following:
```bash
curl https://bootstrap.pypa.io/get-pip.py | python && brew install git virtualenv
```

### For Linux
If you are using [Ubuntu](https://ubuntu.com/) or any other [Debian](https://debian.org) based Linux distro with the `apt` package manager:
```bash
sudo apt install git python3-virtualenv
```
If you are using [RedHat](https://redhat.com/) or any of its variants that uses `dnf`:
```bash
sudo dnf install git python-virtualenv
```

## Setting up SSS
Once you have all the dependencies for your system installed, you can now move onto downloading and setting up the SSS on your system. The following steps should be system-agnostic.

First we'll get the code from GitHub by cloning the repository:

```bash
git clone git@github.com:NET-BYU/sss.git
```

Now we'll move into the folder and make sure our virtual environment is set up:

```bash
cd sss                      # Change to SSS project directory
virtualenv venv             # Create a python virtual environment called venv
source venv/bin/activate    # Activate the venv environment
```

>You should notice the prompt of your terminal change to indicate that you are now in your newly created python virtual environment. All of the following steps assume you are within this environment. If you are not, you will install all SSS dependencies system-wide which may conflict with some previous configurations.

Then you will need to install all the python requirements for the SSS:

```bash
python3 -m pip install -r requirements.txt
```

And that's it! Once this has successfully completed, you are ready to run the simulator and start developing for the SSS! For more information, go to [Get Started](../Overview/Get%20started.md).