## Software management

This exercise is about installing and managing software.

### Package manager

a) Refresh the sources of your package manager
b) Install updates for your system
c) If you are under Ubuntu, remove old software by using `autoremove` (otherwise skip this step)
d) Search for a package called  `youtube-dl`
e) Install the package you found in the previous step
f) Run `youtube-dl` to see if it works. It should display something like "Usage: ..."
g) Open the man page for `youtube-dl`
h) Remove `youtube-dl` from your system
i) Look at the disk usage of your system partition (hint: `df`). Then clean the cache of your package manager. Look at the disk usage again: some space should have been freed.

### Ubuntu only: Installing software from PPA

*Skip this exercise if your distribution is not Ubuntu-based.*

**TODO!**

### Installing a package manually

**TODO: dpkg -i etc.**

### Compile from source using git

Sometimes there is no package available for the software you are looking for. In this case, you need to go online and download a program manually. For Free and Open Source Software, you often get the sources and compile the program suitable for your OS and architecture.

In this exercise, we are going to download the source of a software called `f3` from Github, compile it into an executable program and install it. **Note that programs installed that way are not managed by your package manager.** You will need to update and uninstall them manually. Only use this option if you are sure that there is no package with your software for your distro. **Note:** When installing software this way, you will download and run code from a source that is not verified by your distro's community. **Only do this with software you trust.**

Before you start, you need to make sure your system has the required utilities to compile a program:

- Ubuntu-based: `apt-get install build-essential`
- OpenSUSE: `sudo zypper in --type pattern devel_basis`

a) In your browser, visit the GitHub page of `f3`: [https://github.com/AltraMayor/f3](https://github.com/AltraMayor/f3)
b) In the top right, there is a green button saying "Clone or Download". Copy the https URL to your clipboard.
c) In a terminal, go to your Downloads folder and type `git clone URL` where you *replace* `URL` by the URL you just copied in the previous step. This will create a new directory `f3` with the contents of the Github repository you just cloned.
d) Go into the `f3` directory and follow the instructions of the README to compile (make) and install the main software without the extras (you will type 2-3 commands).
e) Type `f3read` to verify that the program has been installed correctly. It should complain "f3read: The disk path was not specified"
f) We will now uninstall f3. Unfortunately, the developer has not included a script to uninstall f3, meaning that we must manually delete the files that were created by the install step. You probably get a feeling now why the package manager is always the preferrable option to install software. To locate the files we want to delete, we look at the output of the previously run install command. To help you, there are 4 files to be deleted:

    - 2 files in `/usr/local/bin/`
    - 2 files in `/usr/local/share/man/man1/`

### Installing from a self-containing install script

**TODO!**
