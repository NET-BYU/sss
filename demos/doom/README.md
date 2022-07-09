# Doom for SSS

In order to play doom on the SSS, you'll need to make sure that the correct version of the game is installed. Running `setup.sh` should take care of everything **assuming that you have the dev version of SDL installed correctly**. 

On Raspbian, you can install those dependencies by:

```bash
sudo apt install libsdl2-dev libsdl2-mixer-dev libsdl2-net-dev
```

# Installation via Script

To run the installation script, make sure that you **run it from the SSS root directory**:

```bash
./setup.sh
```
If everything exited correctly with no errors and you can see `chocolate-doom` in the `doom` demo folder, that means everything ran correctly and you are good to go!

Because this script is still rough, it is possible that you may encounter errors. In this case, please copy the output of your attempt and [open an issue](https://github.com/NET-BYU/sss/issues/new) paste it into the issue so it can be addressed. Then move on to the manual installation and try to identify which step the script fails on.

# Manual Installation

1. First we will need to make sure that the correct version of doom is in the correct directory. From the root of the SSS project, go into the the `doom` demo folder:

```bash
cd demos/doom
```

2. Clone the `chocolate-doom-sss` repo from GitHub into the current directory using `git` and then go its root folder:

```bash
git clone git@github.com:christopolise/chocolate-doom-sss.git && cd chocolate-doom-sss
```

3. Now we will make sure that our system is capable of running doom. We do this by running `autogen.sh`. If you get any errors, it will most likely be due to not having a certain library installed.

```bash
./autogen.sh
```

4. Once you get `autogen` to finish correctly, then we make the binary of the project by:

```bash
./configure && make
```

5. Once the `make` process has finished, you will be able to go to move the desired executable out of the `src` and into the `doom` demo folder:

```bash
mv src/chocolate-doom ..
```

6. After having done this, you are good to remove the `chocolate-doom-sss` folder as the `doom` demo only requires the executable.

```bash
cd ..
rm -rf chocolate-doom-sss
```

**NOTE: The version of doom you have is static. To update `chocolate-doom-sss`, you will need to run `setup.sh` or perform the manual installation again.**