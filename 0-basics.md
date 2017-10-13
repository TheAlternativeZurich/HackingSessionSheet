# Basics
This aims to train usage in basic commands.

### Terminals and Commands:

The Linux terminal is the standard command line interface we use to enter commands. It is found on every Linux distribution, and is the most versatile tool at your disposal. To run a command by, type its name in the console and then press `Enter`. 

Commands that are run like this are stored as executable files in the folder `/bin/`. If you want to run an executable file that is not located in this folder, you will have to specify the full path to the file.

Should you ever need to cancel a running command, you can use the keyboard combination `Ctrl+C` to interrupt it.

### man

`man` is a command you will need throughout all of the following exercises. 
It stands for `manual` and displays information about the specified command. It shows you what the given command can do, which options are available for it, what its input has to be and what will result when it finishes.

Many man pages are absolutely huge and may make you feel quite overwhelmed when you first open them. This is completely normal! The information you need for actually understanding how to run a program/command will in 90 percent of the cases be described in the first few lines of the page. The bulk of the manual usually describes special options that change how the command is executed, which are also called flags.

Almost all commands and programs provide a man page. They are written and updated by the developers themselves, so should a program be updated to include new options, you will likely find documentation here.

An alternative to using the man pages is to try and see if a command has a help option. This is usually displayed by appending the flag ` --help` after the name of the command (don't forget to put spaces between the name of the command and the option), which will often display much shorter and concise instructions on how to use a command.

Try it yourself! The `man` command for example has its own manpage. Type `man man` to access it, use the arrow keys to scroll, and press Q to exit.
It also has a --help option. Simply type `man --help`, and the command will dump the information directly in your terminal.

### Flags

Flags are options you can add to a command to change the way it is executed. : for example, if you want to list all files including hidden files, you will use the corresponding flag (that you will find in the manual of the program). Flags start with `-` or `--`. For example, `ls -r` lists all files in reverse order, `ls --reverse` does the same. `ls -rR` (yes, bash is case-sensitive) lists all files in reverse order and recursively and is equivalent to `ls -R -r` and to `ls --reverse --recursive`.
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

a) Make a file `hello` using `touch hello`. Now rename this file to `world`.
b) Move this file into a different directory. (e.g. your `Downloads` folder).

### Exercise 3: cd

`cd` stands for "change directory".

a) Change into the `/usr/bin` directory, then list all files in there.
b) Change into the `/root` directory.
c) Change back to your home directory.

### Exercise 4: cat

`cat` stands for con*cat*enate files and print to the standard output.

a) Look at the output of whatever file you desire.


### Exercise 5: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash. Any data that you remove with `rm` is gone forever.

a) Create a file `hello` by typing `touch hello`, then delete it.

### Exercise 6: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory"

a) Make a directory called `hello` in your home directory, and then remove it.
b) Can you remove your home directory with rmdir?

### Exercise 7: cp

`cp` stands for "copy".

a) Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the difference to copying a file?
c) Remove the `Backup/` directory you just created.

\pagebreak
