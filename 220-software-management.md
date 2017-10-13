# Software management

This exercise is about installing and managing software.

### Exercise 1: Package manager

a) Refresh the sources of your package manager
b) Install updates for your system
c) If you are under Ubuntu, remove old software by using `autoremove` (otherwise skip this step)
d) Search for a package called  `youtube-dl`
e) Install the package you found in the previous step
f) Run `youtube-dl` to see if it works. It should display something like "Usage: ..."
g) Open the man page for `youtube-dl`
h) Remove `youtube-dl` from your system
i) Look at the disk usage of your system partition (Hint: `df`). Then clean the cache of your package manager. Look at the disk usage again: some space should have been freed.

### Exercise 2: Ubuntu only: Installing software from PPA

*Skip this exercise if your distribution is not Ubuntu-based.*

If a program is not in the official package sources, you might still be able to install it using your package manager. Under Ubuntu, a developer can create a Personal Package Archive (PPA), sort of a personal software channel which you can integrate into your sources list. After refreshing your sources, you may then install and upgrade software from the PPA as if it was an official source.

**Caution:** Anyone can own a PPA and distribute arbitrary software over it. Make sure you trust the developer!

In this exercise, we are going to install a video transcoder called Handbrake.

a) Google for "Handbrake PPA" and pick the Launchpad link
b) Use the command `add-apt-repository` to add the PPA to your sources as described on Launchpad
c) Update your software sources
d) Install `handbrake-gtk` using your package manager
e) In your start menu, search for "Handbrake" and open the program. Its logo shows a pineapple. The program should open.
f) Uninstall `handbrake-gtk`
g) We are now going to remove the PPA from the system. There is no command to do this. Edit the file `/etc/apt/sources.list` and remove the two lines that contain "stebbins".
h) Refresh your software sources again.
i) Attempt to install `handbrake-gtk`. There should be no such package.

### Exercise 3: Installing a package manually

Event if there is no package available in the software source and there is no PPA available, there might be a package available online that you can download manually and install. This means that you download the package file using your browser or the `wget` command and then tell your package manager to install it. This way, the package can be removed **but not upgraded automatically** by your package manager.

**Note:** In this method you need to trust the developer since the package manager only verifies the integrity of the package, not the security.

In this exercise we are going to install the software TeamViewer. Note that this is a proprietary (non-free) software.

a) In your browser, go to [https://www.teamviewer.com](https://www.teamviewer.com) and visit the Downloads page
b) Select the version suitable for your OS and architecture (32- vs. 64-bit) and download it
c) Open a terminal, navigate to your Downloads folder and check that the file exists
d) Tell your package manager to install the file (use Tab completion when typing the filename teamviewer...)
e) Start `teamviewer` to check that the program works
f) Use your package manager to remove the package.

### Exercise 4: Compile from source using git

Sometimes there is no package at all available for the software you are looking for. In this case, you need to go online and download a program manually. For Free and Open Source Software, you often get the sources and compile the program suitable for your OS and architecture.

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

*Note:* Every `sudo make install` is different and you need to figure out on your own how to undo its effects. Nice developers provide an option `sudo make uninstall`.

### Exercise 5: Installing from a self-containing install script

It is possible to build setups for Linux. This means that you download some file (typically the file name ends with `.run`) and blindly execute it. The file self-contains all the data it needs and installs the program on your computer. Just like under Windows, **you don't know and have no control over what's going to happen when running such a file**. Outdated software may destroy your computer and you need to trust the developer.

In this exercise, we will install PostgreSQL from a `.run` archive. PostgreSQL can be installed with the package manager on most distros, but for the sake of training, we'll do the `.run` Method here.

a) In your browser, visit [https://www.enterprisedb.com/downloads/postgres-postgresql-downloads#linux](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads#linux) and download the newest version of the installer for your distro and architecture.
b) Open a terminal and navigate to your Downloads folder
c) Use `chmod` to make the freshly downloaded file executable
d) Attempt to run the installer as an unprivileged user (using `./postgres<TAB>`) where TAB is autocompletion by pressing the Tabulator key on your keyboard
e) Do the same thing as root. **Note that now you are executing an unknown program with super user privileges. This is bad practice and should be done as your very last choice!**
f) Click yourself through the installer. Leave default values as they are. Type any password when asked. Do not run Stack Builder.
g) The software is now installed in your `/opt` directory. To run it, execute the program `postgresql` which you can find in `/opt/PostgreSQL/YOUR.VERSION/bin/`. It should complain that it does not know where to find the server configuration file.
h) It's cumbersome to have to type the full path every time we want to start up the program. We can either add PostgreSQL's bin folder to the $PATH variable (out of scope of this exercise) or create a symlink to it. For the sake of the exercise, create a symlink to the executable under `usr/bin/postgres`
i) Verify that the program can now be run without typing the entire path
j) PostgreSQL comes with an uninstaller. You can find it right above the `bin/` directory, it's called `uninstall-postgresql`. Run it as root.
k) The installer tells you that the data directory and service user account have not been removed. Remove `opt/PostgreSQL` manually.
l) Remove the user `postgres` that the installer created

*Note:* Every `.run` is different and you need to figure out on your own what needs to be done to undo it (if possible).
