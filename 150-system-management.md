# System Management

In this section, you will learn how to turn off your computer from the console, how to check the available disk space and how to manage users and groups from the shell. Note that when you use the shell for modifying a user, the system settings panel will also reflect these changes.

### Exercise 1: Power on/off

You can use the shell to do various system management tasks from the command line. For example, you can use the command "poweroff" to shut down your computer immediately. This exercise explores some more examples: (you might need to use `sudo`)

a) Using your terminal, try to put your computer into suspend, and wake it back up. (*Hint:* Use the command `systemctl`)
b) Schedule your laptop to shut down in 10 minutes. Then cancel it.
c) Reboot your computer from the command line.

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


