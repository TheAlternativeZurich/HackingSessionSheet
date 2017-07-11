## Basics
This aims to train usage in basic commands.

## flags
flags are options you can add to a command: for example, if you want to list all files including hidden files, you will use the corresponding flag (that you will find in the manual of the program). Flags start with '-' or '--'. For example, 'ls -r' lists all files in reverse order, 'ls --reverse' does the same. 'ls -rR' (yes, bash is case-sensitive) lists all files in reverse order and recursively and is equivalent 'ls -R -r' and 'ls --reverse --recursive'. 

## man
man is the command that you will need all along this hacking session. It stands for 'manual' and displays the manual of a command, i. e. what the command does/can do, which options are possible or not, what input and output are etc. The output of man is also called a manpage.
Almost all commands (all that we will deal with today) have manpages that are provided together with the program
exercise: If you don't want the default manpage for a program, how can you tell man to use another file?
answer: man -C file (just lookup the manpage of man)

## wildcards
Wildcards are a very useful tool. They allow you to apply a command to all files that have a certain structure. There are many different wildcards, the most useful is '*'. '*' means: any set of characters that doesn't contain '/'. So for example '*.jpg' designs all files that end with '.jpg' ('a.jpg', 'abcd.png.jpg' and so on). However, it will not match 'a/b.jpg', but '*/*.jpg' will match it.   

## sudo
Any user cannot do anything on your computer, some users do not have read or write accedd to some files or directories. Only the superuser can to everything. To execute 'command' as a superuser, type 'sudo command'. The program then asks the user for his password (if he is in the sudo group) before executing the command. superusers have all rights, including the right to scrap the computer, so be careful if you execute something with sudo since your computer may warn you (sometimes) but he will not stop you from damaging the computer. 

## ls
ls stands for 'list'.
exercise: list all files (including hidden files) in your current directory
answer: ls -a
exercise: list all files in your /bin directory
answer: ls /bin
exercise (advanced): How can you list only hidden files (hidden files start with '.')? Only hidden directories?
answer: I don't know!! but is should be possible...

## mv
mv stands for 'move'. 
exercise: Make a file 'hello' using 'touch hello'. Now rename this file in 'world'
answer: mv hello world
exercise: Move this file into a directory

## cd
cd stands for 'change directory'
exercise: Change into the /bin directory, then list all files in there
answer: cd /bin; ls
exercise: Change into the /root directory
answer: 'cd /root' gives 'permission denied', 'sudo cd /root' works 
exercise: Change back to your home directory
answer: 'cd' or 'cd ~' or 'cd /home/(User)'

## rm
rm stands for 'remove'. It removes files, it doesn't put them in the trash. 
exercise: Create a file 'hello' by typing 'touch hello', then delete it. 
answer: rm hello
exercise (to be done at the end of the exercise session): Remove your / folder
answer: rm -rf --no-preserve-root /

## mkdir and rmdir
mkdir stands for 'make directory', rmdir for 'remove directory'. 
exercise: Make a directory called 'hello' in your .cache directory, and then remove it. 
answer: mkdir .cache/hello; rmdir .cache/hello. 
exercise: can you remove your home directory with rmdir?
answer: No, rmdir only removes empty directories. 

## cp
cp stands for 'copy'. 
exercise: Make a 'Backup' directory with mkdir and copy your .bashrc (bash configuration file) there. How can you check with ls if it really is there? 
answer: mkdir Backup; cp .bashrc Backup/; ls Backup/ -a
exercise: Copy a directory into Backup/
answer: cp -r (directory) Backup/
exercise: Remove the Backup/ directory you just created. 
answer: rm Backup -r 



