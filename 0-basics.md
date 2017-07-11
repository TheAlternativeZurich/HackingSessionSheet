## Basics
This aims to train usage in basic commands.






## flags
flags are options you can add to a command: for example, if you want to list all files including hidden files, you will use the corresponding flag (that you will find in the manual of the program). Flags start with '-' or '--'. For example, 'ls -r' lists all files in reverse order, 'ls --reverse' does the same. 'ls -rR' lists all files in reverse order and recursively and is equivalent 'ls -R -r' and 'ls --reverse --recursive'. 

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

## rm
rm stands for 'remove'. It removes files, it doesn't put them in the trash. 
exercise (to be done at the end of the exercise session): Remove your / folder
answer: rm -rf --no-preserve-root

## sudo

## mkdir

## cp

