# System Management

In this section, you will learn how to turn off your computer from the console, how to check the available disk space and how to manage users and groups from the shell. Note that when you use the shell for modifying a user, the system settings panel will also reflect these changes.

### Exercise 1: Power on/off

You can use the shell to do various system management tasks. To shut down, reboot, or put your computer in suspend mode, you can use `reboot`, `poweroff`, or `systemctl suspend` respectively. (You might need to use `sudo` on your system)

a) Try to put your computer into suspend, and wake it back up.
b) Reboot your computer from the command line.

### Exercise 2: Space Left on Disk

Useful commands: `df`, `du`

a) Find out what size (in MB) the exercise directory has.
b) Find out how much space is used by your root directory `/`.

### Exercise 3: User Management

Useful commands: `useradd`, `userdel`, `groupadd`, `groupdel`, `gpasswd`, `passwd`

a) Add a new user called `ExerciseUser`.
b) Add a new group called `ExerciseGroup`.
c) Add your new user to the new group.
d) Remove the user and the group again.

    *Hint:*
    If you are confused by `gpasswd` and `passwd`, consider the following:
    One of them is used to set the password for a user, the other is used to add a user to a group.


