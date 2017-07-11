## ls
exercise 1: list all files (including hidden files) in your current directory
answer: `ls -a`
exercise 2: list all files in your /bin directory
answer: `ls /bin`
exercise 3 (advanced): How can you list only hidden files (hidden files start with `.`)? Only hidden directories?
answer: I don't know!! but is should be possible...

## mv
exercise 1: Make a file `hello` using `touch hello`. Now rename this file in `world`
answer: `mv hello world`
exercise 2: Move this file into a directory
answer: `mv world (directory)`

## cd
exercise 1: Change into the `/bin` directory, then list all files in there
answer: `cd /bin`; `ls`
exercise 2: Change into the `/root` directory
answer: `cd /root` gives `permission denied`, `sudo cd /root` works 
exercise 3: Change back to your home directory
answer: `cd` or `cd ~` or `cd /home/(User)`

## rm
exercise 1: Create a file `hello` by typing `touch hello`, then delete it. 
answer: `rm hello`

## mkdir and rmdir
exercise 1: Make a directory called `hello` in your `.cache` directory, and then remove it. 
answer: `mkdir .cache/hello`; `rmdir .cache/hello`. 
exercise 2: can you remove your home directory with rmdir?
answer: No, `rmdir` only removes empty directories. 

## cp
exercise 1: Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. How can you check with `ls` if it really is there? 
answer: `mkdir Backup`; `cp .bashrc Backup/`; `ls Backup/ -a`
exercise 2: Copy a directory into `Backup/`
answer: `cp -r (directory) Backup/`
exercise 3: Remove the `Backup/` directory you just created. 
answer: `rm Backup -r` 
