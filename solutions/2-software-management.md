## Software management

### Exercise 1: Package manager

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
i) `df` shows your current disk usage (use `df -h` for human-readable numbers). On the right hand side, you can see "Mounted on". Look for `/`, which stands for your system partition. The used and free space can be seen in the other columns.
    To clean the package cache: `sudo apt clean`

#### Under OpenSUSE

a) `sudo zypper ref` (or `sudo zypper refresh`)
b) `sudo zypper up` (or `sudo zypper update`), then press ENTER when asked `[y/n/?] (y)`. Note the y in parentheses: it means that if you simply press ENTER (without typing anything) this option will be chosen.
c) (skip this under OpenSUSE)
d) `zypper se youtube-dl` (or `zypper search youtube-dl`)
e) `sudo zypper in youtube-dl` (or `sudo zypper install youtube-dl`)
f) `youtube-dl` should display something like "Usage: ..."
g) `man youtube-dl`, (if asked, press ENTER), finally quit with `q`
h) `sudo zypper rm youtube-dl` (or `sudo zypper remove youtube-dl`)
i) `df` shows your current disk usage (use `df -h` for human-readable numbers). On the right hand side, you can see "Mounted on". Look for `/`, which stands for your system partition. The used and free space can be seen in the other columns.
    To clean the package cache: `sudo zypper clean`

### Exercise 2: Ubuntu only: Installing software from PPA

a) The page we're looking for is [https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases](https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases)
b) `sudo add-apt-repository ppa:stebbins/handbrake-releases`
c) `sudo apt update`
d) `sudo apt install handbrake-gtk`
e) (no solution)
f) `sudo apt autoremove handbrake-gtk`
g) Open up your favourite text editor (e.g. `nano /etc/apt/sources.list`), remove the two lines described below and save:
```
    deb http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu YOUR_UBUNTU_VERSION_HERE main
    deb-src http://ppa.launchpad.net/stebbins/handbrake-releases/ubuntu YOUR_UBUNTU_VERSION_HERE main
```
h) `sudo apt update`
i) `sudo apt install handbrake-gtk` or `apt search handbrake`

### Exercise 3: Installing a package manually

a) (no solution)
b) (individual)
c) `cd Downloads; ls`
d) Depends on your distro, at `<TAB>` press the tabulator key for autocompletion:
- Ubuntu: `sudo apt install teamviewer<TAB>`, will complete with ...deb
- OpenSUSE: `sudo zypper in teamviewer<TAB>`, will complete with ...rpm
e) (no solution)
f) Depends on your distro:
- Ubuntu: `sudo apt autoremove teamviewer`
- OpenSUSE: `sudo zypper rm teamviewer`

### Exercise 4: Compile from source using git

a) (no solution)
b) The desired URL is [https://github.com/AltraMayor/f3.git](https://github.com/AltraMayor/f3.git)
c) Execute:
```
    cd Downloads
    git clone https://github.com/AltraMayor/f3.git
```
d) Execute:
```
    cd f3
```
    (On Ubuntu, according to the section "Install Dependencies" in the README): `sudo apt-get install libudev1 libudev-dev libparted0-dev`
```
    make
```
    `sudo make install` (Without sudo, the command fails due to missing permissions, you are supposed to figure that out on your own)
e) `f3read` should complain "f3read: The disk path was not specified".
f) We will first look around, then delete the files:
```
    ls /usr/local/bin/f3*
```
```txt
    /usr/local/bin/f3read
    /usr/local/bin/f3write
```
```
    ls /usr/local/share/man/man1/f3*
```
```txt
    /usr/local/share/man/man1/f3read.1
    /usr/local/share/man/man1/f3write.1
```
```
    rm /usr/local/bin/f3*
    rm /usr/local/share/man/man1/f3*
```

### Exercise 5: Installing from a self-containing install script

a) (no solution)
b) `cd Downloads`
c) `chmod a+x postgresql<TAB>` where TAB is autocompletion by pressing the Tabulator key on your keyboard.
d) `./postresql<TAB>`
e) `sudo ./postresql<TAB>`
f) (no solution)
g) `/opt/PostgreSQL/YOUR.VERSION/bin/postgres` should complain that it does not know where to find the server configuration file.
h) `sudo ln /opt/PostgreSQL/YOUR.VERSION/bin/postgres /usr/bin/`
i) `postgres` should now print the error message about the missing config file.
j) Execute:
```
    cd /opt/PostgreSQL/YOUR.VERSION
    sudo ./uninstall-postgresql
```
    Press "Yes"
k) `cd` (Leave the `/opt/PostgreSQL` directory since you are going to delete it)
```
    sudo rm -rf /opt/PostgreSQL
```
l) `sudo userdel postgres`
