# Jobs

### Exercise 1: fg, bg, &, top, htop, kill, pkill, killall

a) Install `htop` if you do not already have it.
b) Navigate to the `jobs` directory.
c) Run the `HackingSessionExercises/infiniteloop.sh`
d) Now your terminal is pretty unusable.
e) You can kill the running process by pressing Ctrl+C.

Now we want to learn how to kill processes running in the background. This is helpful when you have programs that have hung themselves up and have to be shut down. Collectively, the commands you will be using are known to provide "process control", that is, functionality similar to task managers known from Windows/OS X. So we will basically learn how to use Ctrl+Alt+Delete under Linux ;)

f) Run the script used in exercise c) again, but in a way such that it becomes a background job/
g) Make it to be a foreground job. Do you notice a difference?
h) Now move it back to be a background job. Can you still kill it with Ctrl+C?
i) Try and find out the pid (process id) of your started process (you might want to do this in a different terminal).
j) Use the kill command to get rid of the process.

### Exercise 2: ps, kill, killall, pkill

Do the same as above but this time without using top or htop and use a different method to kill it. You also do not need to do all that background foreground stuff again.

Can you find the parent of the process you started?

\pagebreak
