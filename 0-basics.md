## Basics
This aims to train usage in basic commands.

## flags

flags are options you can add to a command: for example, if you want to list all files including hidden files, you will use the corresponding flag (that you will find in the manual of the program). Flags start with `-` or `--`. For example, `ls -r` lists all files in reverse order, `ls --reverse` does the same. `ls -rR` (yes, bash is case-sensitive) lists all files in reverse order and recursively and is equivalent `ls -R -r` and `ls --reverse --recursive`. 

## man

man is the command that you will need all along this hacking session. It stands for 'manual' and displays the manual of a command, i. e. what the command does/can do, which options are possible or not, what input and output are etc. The output of man is also called a manpage.
Almost all commands (all that we will deal with today) have manpages that are provided together with the program. 

## wildcards

Wildcards are a very useful tool. They allow you to apply a command to all files that have a certain structure. There are many different wildcards, the most useful is `*`. `*` means: any set of characters. So for example `*.jpg` designs all files that end with `.jpg` (`a.jpg`, `abcd.png.jpg` and so on). 

## sudo

Any user cannot do anything on your computer, some users do not have read or write accedd to some files or directories. Only the superuser can to everything. To execute `command` as a superuser, type `sudo command`. The program then asks the user for his password (if he is in the sudo group) before executing the command. superusers have all rights, including the right to scrap the computer, so be careful if you execute something with sudo since your computer may warn you (sometimes) but he will not stop you from damaging the computer. 

## Exercise 1: ls

`ls` stands for "list".

a) List all files (including hidden files) in your current directory.
b) List all files in your `/bin` directory.
c) Find the size of your bash executable (`/usr/bin/bash` or `/bin/bash`).

## mv

`mv` stands for move.

a) Make a file `hello` using `touch hello`. Now rename this file in `world`.
b) Move this file into a directory. (e.g. your `Downloads` folder).

## cd
`cd` stands for "change directory".

a) Change into the `/usr/bin` directory, then list all files in there.
b) Change into the `/root` directory.
c) Change back to your home directory.

## rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash.

a) Create a file `hello` by typing `touch hello`, then delete it.

## mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory"

a) Make a directory called `hello` in your home directory, and then remove it.
b) Can you remove your home directory with rmdir?

## cp

`cp` stands for `copy`.

a) Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the differece to copying a file?
c) Remove the `Backup/` directory you just created.



