# Basics

This aims to train usage of basic commands.

## Explanation of Basic Concepts

Here you will find a short explanation of the main concepts to get you started.
If you're tired of reading or already know most of this from the Toolkit course, then skip down to the Exercises section to test your skills at some practical tasks.

### Terminals and Commands:

The Linux terminal is the standard command line interface we use to enter commands, also called console. It is found on every Linux distribution, and is the most versatile tool at your disposal. It lets you interact with the so-called `shell`, which is in simple terms a program that takes keyboard input from the user and passes it to the operating system to execute commands. To run a command, type its name in the console and then press `Enter`. Note that the terminal (by default) is case-sensitive, which means that the shell differs between upper- and lowercase letters.

Commands that are ran by simply typing their name are found as executable files in the folder `/bin/`. Should you want to run a program through the terminal whose executable is not located in this folder, you will have to specify the full path to the file.

Should you ever need to cancel a running command, you can use the keyboard combination `Ctrl+C` to interrupt it.

### man

`man` is a command you will need throughout all of the following exercises. 
It stands for `manual` and displays information about the specified command. It shows you what the given command can do, which options are available for it, what its input has to be and what will result when it finishes.

Many man pages are absolutely huge and may make you feel quite overwhelmed when you first open them. This is completely normal! The information you need for actually understanding how to run a program/command will in 90% of the cases be described in the first few lines of the page. The bulk of the manual usually describes special options that change how the command is executed, which are also called flags.

Almost all commands and programs provide a man page. They are written and updated by the developers themselves, so should a program be updated to include new options, you will likely find the documentation here.

An alternative to using the man pages is to try and see if a command has a help option. This is usually displayed by appending the flag ` --help` after the name of the command (don't forget to put spaces between the name of the command and the option), which will often display much shorter and concise instructions on how to use a command.

Try it yourself! The `man` command for example has its own manpage. Type `man man` to access it, use the arrow keys to scroll, and press Q to exit.
It also has a --help option. Simply type `man --help`, and the command will dump the information directly in your terminal.

### Flags

Flags are options you can add to a command to change the way it is executed. The option `-h` or `--help` describe above is one of them, and is a good example as it causes the command to display information about itself instead of performing its main function. There are many more flags like this, and their name and purpose usually differs between all programs and commands. Single character options are always preceeded by `-`, while those with multiple letters are preceeded by `--`. It is also possible to use multiple different flags together at once, and you can also string them together for quick execution. For example, for the command `ls` described below, you can type `ls -lah` instead of `ls -l -a -h`. And to see what these flags do, consult the man page! 

### Wildcards

Wildcards are essentially placeholder symbols that may be replaced when a command is read by the shell.
There are three different types of wild cards:
* The star wildcard `*` acts as a placeholder for any number of consecutive symbols. For example, writing `*.jpg` designates all files that end with the string `.jpg` (like `flower.jpg`, `asdfghjkl.jpg` or even `.jpeg`). Writing `S*.wav` addresses all files that start with a capital `S` and end with `.wav`, including `S.wav`, and so on. 
* The question mark wildcard `?` acts as a placeholder for a single symbol only. It is otherwise the same as the above wildcard.

* The bracket wildcard `[]` can be used as a placeholder for the specified symbols. [1-9] for example acts as a placeholder for the numbers 1-9 in a filename, and [ABC] as a placeholder for A, B or C.

### sudo

Similar to Windows or MacOS, in Linux we differ between user accounts that have different access permissions. Users usually do not have permission to simply install new packages or alter files outside of their home directory. The exception to this is root, who has permission to alter whatever he wants, install whatever he wants, and destroy whatever he wants. 

In order for a user to run single commands and programs as root, we make use the command `sudo`, which stands for `super user do`. 
Example: `sudo echo "Hello World"`

If the user who executes the command is in the sudoers group (grants permission to use `sudo`), the shell then asks the user for his password. Once it is entered, the command will run just as it normally would -- only that now, it is being ran by root instead of the user account. If you don't want to enter your password every time you want to use sudo, you can use the command `sudo su` to become root inside the current shell. Type `exit` if you want to return to the user account.

Note that most commands that require you to use `sudo` usually have the potential to cause serious damage to your system. Upon first entering `sudo`, you will be met with the quote `With great power comes great responsibility`. Take this to heart, as many commands that require sudo will not ask twice if you run them while you are root.

## Exercises

Here you will get to try things yourself!
We don't give you any step-by-step instructions here. You will have to find things out yourself! (or ask our helpers should you get stuck)
Try to solve the exercises in order, as they may build up on each other.

### Exercise 0: man

If you haven't done so before, you should definitely make yourself familiar with the `man` command, as you will need it for the following tasks. Type `man man` in the shell and hit enter. You don't have to read the whole thing, but skimming over it is definitely a good idea. Also, while the manual of `man` is open, you can hit `h` to make a window with keyboard shortcuts pop up. This is a good opportunity to take a look at them, because it is vital that you know how to search a manpage and how to move around within it quickly!

### Exercise 1: ls

`ls` stands for "list".

a) List all files (including hidden files) in your current directory.
b) List all files in your `/bin` directory.
c) List all files in your `/bin` directory whose names consist of two letters
d) Find the size of your bash executable (`/usr/bin/bash` or `/bin/bash`).

### Exercise 2: mv

`mv` stands for move.

a) Make a file `hello` using `touch hello`. Now rename this file to `world`.
b) Move this file into a different directory. (e.g. your `Downloads` folder).

### Exercise 3: cd

`cd` stands for "change directory".

a) From your home directory, change to `./Documents`. Then move back to the `home` directory.
b) Change into the `/root` directory
c) Change back to your home directory without writing out the full path.

### Exercise 4: cat

`cat` stands for "con*cat*enate files and print to the standard output".

a) Look at the output of whatever file you desire.

### Exercise 5: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory"

a) Make a directory called `hello` in your home directory, and then remove it.
b) Can you remove your home directory with rmdir?

### Exercise 6: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash. Any data that you remove with `rm` is gone forever.

a) Create a file called `world` by typing `touch world`, then delete it.
b) Create a directory called `foo`, then create 3 files with names of your choice inside this directory. Remove them all at once.

### Exercise 7: cp

`cp` stands for "copy".

a) Make a `Backup` directory and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the difference to copying a file?
c) Remove the `Backup/` directory you just created.

### Exercise 8:  clear

`clear` stands for “clear the terminal”

a) After you worked through the last few exercises, clear the terminal


