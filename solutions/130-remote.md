## Remote

### Exercise 1

a) `ssh hacker@pterodactyl.vsos.ethz.ch`
b) `mkdir $yourName` (you do not need to type the $ simply use your nethz name)
c) Hit `Ctrl+D`.
d) `scp supercoolNumericalSimulation.c hacker@pterodactyl.vsos.ethz.ch:$yourname/`
e) Run the ssh command again, navigate to your directory, and compile with: `gcc supercoolNumericalSimulation.c` this gives you a file called a.out
f) Running: `./a.out`. In case you get an error saying th file is not executable make it executable with `chmod -x a.out`. Now you should see an output file.
g) `Ctrl+D`, navigate to your remoteExercise directory, `scp hacker@pterodactyl.vsos.ethz.ch:$yourName/result.txt .`

### Exercise 2

a) `tmux` (if it's not yet installed, do `sudo apt install tmux` on Ubuntu or `sudo zypper in tmux` on OpenSUSE)
b) `Ctrl+B`, `"` (this is the quotes symbol, typically `SHIFT+2`)
c) `Ctrl+B`, `%` (percent sign, typically `SHITFT+5`) to split and `Ctrl+B`, `Arrow-Key` to navigate.
d) `tmux a` to attach to tmux (note that there is no `-` before the `a`).
e) (no solution)
f) Typically, `Alt+F4` or click the close button on the windows of the terminals. To attach, do again `tmux a`.
g) Repeatedly type `exit` or press `Ctrl+D`.
h) *__TODO!__*
i) Simply type `w`.
j) `tmux a` to attach (if it says "no sessions", type `tmux`).
k) `Ctrl+B`, `d`
l) `exit` or `Ctrl+D`
