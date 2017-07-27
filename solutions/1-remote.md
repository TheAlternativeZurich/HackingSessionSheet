## Solutions Remote

### Exercise 1

1. `ssh username@supercomputer`
2. `mkdir $yourName`
3. hit `Ctrl+D`
4. `scp supercoolNumericalSimulation.c username@supercomputer:$yourname/`
5. run the ssh command again, compile it as you already know from other exercises
6. runing you should also know how. Now you should see an output file
7. `Ctrl+D`, navigate to your remoteExercise Directory  `scp username@supercomputer:$yourName/result.txt .`

### Exercise 2

1. `tmux`
2. `Ctrl+B`, `"` (this is the quotes symbol, typically `SHIFT+2`)
3. `Btrl+B`, `%` (percent sign, typically `SHITFT+5`) to split and `Ctrl+B`, `Arrow-Key` to navigate
4. `tmux a` to attach to tmux (note that there is no `-` before the `a`)
5. (no solution)
6. Typically `Alt+F4` or click the close button on the windows of the terminals. To attach, do again `tmux a`
7. Repeatedly type `exit` or press `Ctrl+D`
8. *__TODO!__*
9. Simply type `w`
10. `tmux a` to attach (if it says "no sessions", type `tmux`)
11. `Ctrl+B`, `d`
12. `exit` or `Ctrl+D`
