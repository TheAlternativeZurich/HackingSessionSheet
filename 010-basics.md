# Basics

This section aims to introduce you to, and train the usage of basic concepts and commands.

## Explanation of Basic Concepts

Here you will find a short explanation of the main concepts to get you started.
If you're tired of reading or already know most of this from the Toolkit course, then skip down to the `Exercises` section to test your skills at some practical tasks.

### Terminal and Commands

The Linux terminal, also called console, is the standard command line interface we use to enter commands. It is found on every Linux distribution, and is the most versatile tool at your disposal. It lets you use a so-called `shell`, which is in simple terms a program that takes commands written by the user and executes them. Don't worry much about the exact definitions of a shell and a terminal. Being able to differentiate the two is irrelevant for an every-day user.

To run a command, type its name in the console and then press `Enter`. Should you ever need to cancel a running command, you can use the keyboard combination `Ctrl+C` to interrupt it. Note that the shell (by default) is case-sensitive, so capitalization matters.

### man

`man` is a command you will need throughout all of the following exercises. 
It stands for "manual" and shows you what almost any given command can do and which options are available for it. 
Almost all commands provide such a "manpage", which is typically written by the developers themselves. They are hence reliable, and are the single most important tool to get comfortable with using your shell.

Some man pages are absolutely huge and may make you feel quite overwhelmed when you first open them. This is completely normal!
 The information you need for actually understanding how to run a program/command will in 90% of the cases be described in the first few lines of the page. 
The bulk of the manual usually describes special options (flags) that change how the command behaves when executed. 
Don't worry if you can't remember the details of a command or what its various options do. 
The most important thing to take away from a manual is a rough idea of *what* a command does: With that, you will know in which situations you can use it. The details can still be looked up in the manual and you will learn them by heart as time goes by.

Try it yourself! The `man` command itself has its own manpage. Type `man man` to access it, use the arrow keys to scroll, and press Q to exit.

An alternative to using the man pages is to try and see if a command has a help option. This is usually displayed by appending the option ` --help` after the name of the command (don't forget to put spaces between the name of the command and the option), which will often display much shorter and concise instructions on how to use a command. For example, the `man` command also has a `--help` option. Simply type `man --help`, and the command will display information directly in your terminal.


### Flags

Flags are options you can add to a command to change the way it behaves. The option `-h` or `--help` described above is one of them, and is a good example as it causes the command to display information about itself instead of performing its main function. There are many more flags like this, and their name and purpose usually differs between all programs and commands. Single character options are always preceded by `-`, while those with multiple letters are preceded by `--`. It is also possible to use multiple different flags together at once, and you can also string them together for quick execution. For example, for the command `ls` described below, you can type `ls -lah` instead of `ls -l -a -h`. (to see what these flags do, consult the man page by typing `man ls`!)

### Wildcards

Wildcards are placeholder symbols that are replaced when a command is read by the shell.
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
There are three different types of wild cards:

* The star wildcard `*` acts as a placeholder for any number of consecutive symbols. For example, writing `*.jpg` addresses all files and folders that end with `.jpg`. Writing `D*s` addresses all files and folders that start with a `D` and end with a `s`, and so on. 

* The question mark wildcard `?` acts as a placeholder for a single symbol only. For example: `???.png` will address all files that end with `.png` that have 3 letters. 

* The bracket wildcard `[...]` can be used as a placeholder for the symbols we specify inside. [1-9] for example acts as a placeholder for the numbers 1 to 9, and [ABC] acts as a placeholder for those 3 letters only.

Furthermore, there is also a concept called "Regular Expressions" which fulfills a similar purpose. We will not elaborate on this here however.

### sudo

Similar to Windows or MacOS, in Linux we differ between user accounts that have different access permissions. Users usually do not have permission to simply install new packages or alter files outside of their home directory. The exception to this is root, who has permission to alter whatever he wants, install whatever he wants, and destroy whatever he wants. 

In order for a user to run single commands and programs as root, we make use the command `sudo`. 
Example: `sudo echo "Hello World"`

If the user who executes the command is in the sudoers group (grants permission to use `sudo`), the shell then asks the user for his password. Once it is entered, the command will run just as it normally would -- only that now, it is being ran by root instead of the user account. If you don't want to enter your password every time you need to use sudo, you can use the command `sudo su` to become root inside the current shell. This will allow you to run all commands with no confirmation needed (We strongly advise against doing this for now however!). Type `exit` if you want to return to the user account.

Note that most commands that require you to use `sudo` usually have a good reason to do so, as they may have the potential to cause serious damage to your system. Upon first entering `sudo`, you will be met with the quote `With great power comes great responsibility.`. Take this to heart, as the majority of commands on Linux will not ask twice, even when you're about to do something foolish.

## Exercises

Here you will get to try things yourself!

We don't give you any step-by-step instructions however. You will have to find things out yourself! (or ask our helpers should you get stuck)

### Exercise 0: man

If you haven't done so before, you should definitely make yourself familiar with the `man` command, as you will need it for the following tasks. Type `man man` in the shell and hit enter. You don't have to read the whole thing, but skimming over it is definitely a good idea. Also, while the manual of `man` is open, you can hit `h` to make a window with keyboard shortcuts pop up. This is a good opportunity to take a look at them, because it is vital that you know how to search a manpage and how to move around within it quickly!

### Exercise 1: ls

`ls` stands for "list".

a) List all files (including hidden files) in your current directory.
b) List all files in your `/bin` directory.
c) List all files in your `/bin` directory whose names consist of only two letters.
d) Find the size of your bash executable (`/usr/bin/bash` or `/bin/bash`).

### Exercise 2: mv

`mv` stands for "move".

a) Make a file `hello` using `touch hello`. Now rename this file to `world`.
b) Move this file into a different directory. (e.g. your `Downloads` folder).

### Exercise 3: cd

`cd` stands for "change directory".

a) From your home directory, change to `./Documents`. Then change back to the `home` directory.
b) Change into the `/root` directory
c) Change back to your home directory without writing out the full path.

### Exercise 4: cat

`cat` stands for "con*cat*enate files and print to the standard output".

a) Look at the output of whatever file you desire.
b) Move the contents of one file into another, overwriting it. 
(Hint: Look up the redirection operator)

### Exercise 5: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory"

a) Make a directory called `hello` in your home directory, and then remove it.
b) Can you remove your home directory with rmdir?

### Exercise 6: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash. Any data that you remove with `rm` is gone forever.

a) Create a file called `world`, then delete it.
b) Create a directory called `foo`. Change to this directory, then create 3 files with names of your choice inside this directory. Remove them all at once.

### Exercise 7: cp

`cp` stands for "copy".

a) Make a `Backup` directory and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the difference to copying a file?
c) Remove the `Backup/` directory you just created.

### Exercise 8:  clear

`clear` stands for “clear the terminal”

a) After you worked through the previous exercises, clear the terminal


