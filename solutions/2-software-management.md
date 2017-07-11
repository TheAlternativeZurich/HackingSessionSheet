## Software management - SOLUTIONS

### Package manager - SOLUTIONS

**This section is specific to your distribution.** In the following we will present solutions for Ubuntu and OpenSUSE based distributions. If you're in trouble running another distro, please contact a helper.

#### Under Ubuntu based systems

a) `sudo apt update`
b) `sudo apt upgrade`, then press ENTER when asked `[Y/n]`. Note the capital Y: it means that if you simply press ENTER (without typing anything) this option will be chosen.
c) `sudo apt autoremove`, press ENTER when asked as above. This will uninstall old kernels from your system and free space.
d) `apt search youtube-dl`
e) `sudo apt install youtube-dl`
f) `youtube-dl` should display something like "Usage: ..."
g) `man youtube-dl`, quit with `q`
h) `sudo apt autoremove youtube-dl`
i)
    - `df` shows your current disk usage (use `df -h` for human-readable numbers). On the right hand side, you can see "Mounted on". Look for `/`, which stands for your system partition. The used and free space can be seen in the other columns.
    - To clean the package cache: `sudo apt clean`

#### Under OpenSUSE

a) `sudo zypper ref` (or `sudo zypper refresh`)
b) `sudo zypper up` (or `sudo zypper update`), then press ENTER when asked `[y/n/?] (y)`. Note the y in parentheses: it means that if you simply press ENTER (without typing anything) this option will be chosen.
c) (skip this under OpenSUSE)
d) `zypper se youtube-dl` (or `zypper search youtube-dl`)
e) `sudo zypper in youtube-dl` (or `sudo zypper install youtube-dl`)
f) `youtube-dl` should display something like "Usage: ..."
g) `man youtube-dl`, (if asked, press ENTER), finally quit with `q`
h) `sudo zypper rm youtube-dl` (or `sudo zypper remove youtube-dl`)
i)
    - `df` shows your current disk usage (use `df -h` for human-readable numbers). On the right hand side, you can see "Mounted on". Look for `/`, which stands for your system partition. The used and free space can be seen in the other columns.
    - To clean the package cache: `sudo zypper clean`

### Compile from source using git - SOLUTIONS

a) (no solution)
b) The desired URL is [https://github.com/AltraMayor/f3.git](https://github.com/AltraMayor/f3.git)
c) `git clone https://github.com/AltraMayor/f3.git`
d)
    - `cd f3`
    - (On Ubuntu, according to the section "Install Dependencies" in the README): `sudo apt-get install libudev1 libudev-dev libparted0-dev`
    - `make`
    - `sudo make install` (Without sudo, the command fails due to missing permissions, you are supposed to figure that out on your own)
e) `f3read` should complain "f3read: The disk path was not specified"
f) We will first look around, then delete the files:
    - `ls /usr/local/bin/f3*`
    ```txt
    /usr/local/bin/f3read
    /usr/local/bin/f3write
    ```
    - `ls /usr/local/share/man/man1/f3*`
    ```txt
    /usr/local/share/man/man1/f3read.1
    /usr/local/share/man/man1/f3write.1
    ```
    - `rm /usr/local/bin/f3*`
    - `rm /usr/local/share/man/man1/f3*`
