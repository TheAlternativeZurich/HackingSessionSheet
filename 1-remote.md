## Remote

### Exercise 1 (ssh, scp)

In this exercise you will learn how to access a compute cluster and do stuff on it and get results. For this please first find the c programm called supercoolNumercialSimulation.c

1. connect to $Supercomputer via ssh
2. orient yourself on the remote machine and make a directory with with your name as the directory name
3. return to your local machine
4. copy the c program you found before to your directory on the remote machine
5. again access the machine and compile the programm
6. run it
7. find it's output and copy it to your remoteExercise directory on your local machine

### Exercise 2 (tmux)

This exercise is about using the terminal multiplexer tmux. Using it gives you several advantages, here are a few:

- If the connection gets lost, the process on the remote machine keeps running.
- You can turn off your local computer without interrupting the remote calculation. You may re-connect to the remote tmux session any time to check how your calculations are doing.
- Tmux allows you to tile your terminals and have several terminals open through the same ssh connection.
- You may collaborate with someone else and you both see the same content.

Consider looking up tmux keyboard shortcuts online.

1. Start tmux on your local machine
2. Split your tmux horizontally (so that you have one terminal on top of the other)
3. Split the upper half vertically and try to navigate into each of the three parts
4. Open up another terminal and connect to tmux (Caution: this is not the same thing as starting tmux)
5. Verify that whatever you do in one terminal is also reproduced in the other one
6. Close both terminal windows, open up a terminal and attach. Verify that tmux kept running in the background and that it's still in the state in which you left it.
7. Close every bit of tmux until tmux is not running any more.
8. We have prepared a machine running that you may now connect to using SSH: URL: *__TODO!__* The user name is *__TODO!__* and the password *__TODO!__*
9. Type the command `w` to see how many users are currently logged in.
10. Attach to tmux (if none is running, start it). Note that there might be an arbitrary number of people already logged in and all of you type in the same window. Have fun ;-)
11. Detach from tmux, but not by closing the terminal nor by exiting tmux. Check online for how to do this.
12. Log out from the remote server.
