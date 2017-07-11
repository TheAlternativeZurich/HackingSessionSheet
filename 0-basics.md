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

## ls
`ls` stands for `list`.
exercise 1: list all files (including hidden files) in your current directory
exercise 2: list all files in your /bin directory
exercise 3 (advanced): How can you list only hidden files (hidden files start with `.`)? Only hidden directories?

## mv
`mv` stands for `move`. 
exercise 1: Make a file `hello` using `touch hello`. Now rename this file in `world`
exercise 2: Move this file into a directory

## cd
`cd` stands for `change directory`. 
exercise 1: Change into the `/bin` directory, then list all files in there
exercise 2: Change into the `/root` directory
exercise 3: Change back to your home directory

## rm
`rm` stands for `remove`. It removes files, it doesn't put them in the trash. 
exercise 1: Create a file `hello` by typing `touch hello`, then delete it. 

## mkdir and rmdir
`mkdir` stands for `make directory`, rmdir for `remove directory`. 
exercise 1: Make a directory called `hello` in your `.cache` directory, and then remove it. 
exercise 2: can you remove your home directory with rmdir?

## cp
`cp` stands for `copy`. 
exercise 1: Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. How can you check with `ls` if it really is there? 
exercise 2: Copy a directory into `Backup/`
exercise 3: Remove the `Backup/` directory you just created. 



