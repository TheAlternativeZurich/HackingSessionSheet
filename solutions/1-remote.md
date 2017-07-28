## Remote

### Exercise 1

a) `ssh username@supercomputer`
b) `mkdir $yourName`
c) Hit `Ctrl+D`.
d) `scp supercoolNumericalSimulation.c username@supercomputer:$yourname/`
e) Run the ssh command again, compile it as you already know from other exercises.
f) Running you should also know how. Now you should see an output file.
g) `Ctrl+D`, navigate to your remoteExercise Directory  `scp username@supercomputer:$yourName/result.txt .`

### Exercise 2

a) `tmux`
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
