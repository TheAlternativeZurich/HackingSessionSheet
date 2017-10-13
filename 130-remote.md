# Remote

In this section you will learn how to work on a machine to which you have no phyiscal access (i.e. you cannot connect a keyboard, mouse or screen). Examples for such machines: routers, headless Raspberry Pi, a computer that is 200km away, ETH's supercomputers. In particular, you will find out how to securely connect to those machines, run commands on them, how to find out who else is logged in on a machine and how to copy files back and forth.

### Exercise 1: ssh, scp

In this exercise you will learn how to access a compute cluster and do stuff on it and get results. For this please first find the C program called `supercoolNumercialSimulation.c`.  `ssh` and `scp` are the most important commands you will use within this exercise. `ssh` is used to connect to a machine remotely, while `scp` is used to copy files.  For this exercise, it's probably best if you don't lose yourself in trying to understand how `ssh`, resp. `scp` works exactly, because there is quite a bit of cryptography and complicated network stuff involved. To get a general idea of how it works: `ssh` stands for "Secure Shell" and `scp` stands for "Secure Copy". Both make use of the cryptographic library `openSSL` in order to be able to exchange your data securely. If you are interested, you may also use the utility `sftp` for transferring files. If you do this, you need to check online for documentation (or run `man sftp`) since the solution to this exercise shows the `scp` method.

a) Connect to pterodactyl.vsos.ethz.ch with the user "hacker" via ssh (the password is "hacker).
b) Make yourself familiar on the remote machine and make a directory with your name as the directory name.
c) Return to your local machine.
d) Copy the C program you found before to your directory on the remote machine.
e) Again access the machine and compile the program.
f) Run it.
g) Find it's output and copy it to your remoteExercise directory on your local machine.

### Exercise 2: tmux

This exercise is about using the terminal multiplexer tmux. Using it gives you several advantages, here are a few:

- If the connection gets lost, the process on the remote machine keeps running.
- You can turn off your local computer without interrupting the remote calculation. You may re-connect to the remote tmux session any time to check how your calculations are doing.
- Tmux allows you to tile your terminals and have several terminals open through the same ssh connection.
- You may collaborate with someone else and you both see the same content.

Consider looking up tmux keyboard shortcuts online.

a) Start tmux on your local machine.
b) Split your tmux horizontally (so that you have one terminal on top of the other).
c) Split the upper half vertically and try to navigate into each of the three parts.
d) Open up another terminal and connect to tmux (Caution: this is not the same thing as starting tmux).
e) Verify that whatever you do in one terminal is also reproduced in the other one.
f) Close both terminal windows, open up a terminal and attach. Verify that tmux kept running in the background and that it's still in the state in which you left it..
g) Close every bit of tmux until tmux is not running any more.
h) We have prepared a machine running that you may now connect to using SSH: URL: *__TODO!__* The user name is *__TODO!__* and the password *__TODO!__*.
i) Type the command `w` to see how many users are currently logged in.
j) Attach to tmux (if none is running, start it). Note that there might be an arbitrary number of people already logged in and all of you type in the same window. Have fun ;-)
k) Detach from tmux, but not by closing the terminal nor by exiting tmux. Check online for how to do this.
l) Log out from the remote server.


