## Solutions Jobs

### Exercise 1

For the first part of the exercise you should have no problem. The script can be run by typing in:
´´´
./infiniteLoop.sh
´´´
For the second part:

1. run:  ´´´./infiniteLoop.sh &´´´
2. run: ´´´fg´´´
3. for this best press Ctrl+Z to suspend the job and then type ´´´bg´´´ that will move it to the background

Note: running this script as a background job is pretty ugly because it still spams the console. In order to stop this you would need to redirect the output to somewhere else. However redirection is not the topic we are covering in the exercise and the output helps you to see if the programm is still runing or not.

4. the pid can be found it using htop, top works similar but is not recommended. In htop you can see the name of the running processes totally on the right and on the left you can see the PID of that process. Remember the PID
5. One way is to use ´´´kill -9 PID´´´

### Exercise 2

In order to find the pid we will use the ´´´ps´´´ command. Just type ´´´ ps -e ´´´ this will list every process in your system. Again find the the infiniteLoop.sh and remember it's pid. Since we used ´´´kill -9´´´ last time we will do something else this time. A very nice way to kill a process is using pkill. The nice thing about pkill is that you do not need the PID. Simpyl type in ´´´pkill -SIGKILL infinite´´´
Another thing you could use is xkill. However xkill will kill the entire terminal not just the one process. 
