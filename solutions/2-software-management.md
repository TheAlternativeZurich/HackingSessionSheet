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

*TODO!*
