## Basics
This aims to train usage in basic commands.

### Flags

flags are options you can add to a command: for example, if you want to list all files including hidden files, you will use the corresponding flag (that you will find in the manual of the program). Flags start with `-` or `--`. For example, `ls -r` lists all files in reverse order, `ls --reverse` does the same. `ls -rR` (yes, bash is case-sensitive) lists all files in reverse order and recursively and is equivalent to `ls -R -r` and to `ls --reverse --recursive`. 

### man

`man` is the command that you will need all along this hacking session. It stands for 'manual' and displays the manual of a command, i.e. what the command does/can do, which options are available or not, what its input and output are etc. The content that `man` displays is also called a manpage.
Almost all commands (all that we will deal with today) have manpages that are provided together with the program. 
The `man` command has its own manpage! To learn how the `man` command works, you can type `man man`.
For every command unknown to you, you should take a look at the manpage.

### Wildcards

Wildcards are a very useful tool. They allow you to apply a command to all files that have a certain structure. There are many different wildcards, the most useful one is `*`. `*` means: any set of characters. So for example `*.jpg` designates all files that end with `.jpg` (`a.jpg`, `abcd.png.jpg` and so on). 

### sudo

Not every user can do anything on your computer, some users do not have read or write access to some files or directories. Only the superuser can do everything. To execute `command` as a superuser, type `sudo command`. The program then asks the user for his password (if he is in the sudo group) before executing the command. Superusers have all rights, including the right to scrap the computer, so be careful if you execute something with sudo since your computer may warn you (sometimes) but he will not stop you from damaging the computer. 

### Exercise 0: man

Before you can start to learn anything, you should make yourself familiar with the `man` command. Type `man man` in the commandshell and hit enter. You don't have to read the whole thing, but skimming over it is definitely a good idea. Also, while the manual of `man` is open, you can hit `h` to make a window with keyboard shortcuts pop up. This is a good opportunity to take a look at them, because it is vital that you know how to search a manpage and how to move around within it quickly!

### Exercise 1: ls

`ls` stands for "list".

a) List all files (including hidden files) in your current directory.
b) List all files in your `/bin` directory.
c) Find the size of your bash executable (`/usr/bin/bash` or `/bin/bash`).

### Exercise 2: mv

`mv` stands for move.

a) Make a file `hello` using `touch hello`. Now rename this file into `world`.
b) Move this file into a different directory. (e.g. your `Downloads` folder).

### Exercise 3: cd

`cd` stands for "change directory".

a) Change into the `/usr/bin` directory, then list all files in there.
b) Change into the `/root` directory.
c) Change back to your home directory.

### Exercise 4: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash. Any data that you remove with `rm` is gone forever.

a) Create a file `hello` by typing `touch hello`, then delete it.

### Exercise 5: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory"

a) Make a directory called `hello` in your home directory, and then remove it.
b) Can you remove your home directory with rmdir?

### Exercise 6: cp

`cp` stands for "copy".

a) Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the differece to copying a file?
c) Remove the `Backup/` directory you just created.

### Exercise 7: cat

`cat` stands for con*cat*enate files and print to the standard output.

a) Look at the output of whatever file you desire.

