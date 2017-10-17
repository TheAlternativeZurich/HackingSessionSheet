# Basics

### Exercise 1: ls

`ls` stands for "list".

a) List all files (including hidden files) in your current directory.
```
    ls -a
```

b) List all files in your `/bin` directory.
```
    ls /bin
```

c) List all files in your `/bin` directory whose names consist of only two letters.
```
    ls /bin/??
```

d) Find the size of your bash executable (depending on your system, it's `/usr/bin/bash` or `/bin/bash`).
```
    ls -la /usr/bin/bash
```

    or
```
    ls -la /bin/bash
```


### Exercise 2: mv

`mv` stands for move.

a) Make a file `hello` using `touch hello`. Now rename this file to `world`.
```
    touch hello
    mv hello world
```

b) Move this file into a directory. (e.g. your `Downloads` directory).
```
    mv world ~/Downloads
```

### Exercise 3: cd
`cd` stands for "change directory".

a) From your home directory, change to `./Documents`. Then change back to the `home` directory.
```
    cd Documents
    cd ..
```

b) Change into the `/root` directory.
```
    cd /root
```

c) Change back to your home directory without writing out the full path.
```
    cd ~
```
    or just
```
    cd
```

### Exercise 4: cat

a) Look at the output of whatever file you desire.
```
    cat file
```

b) Move the contents of one file into another, overwriting it.
```
    cat file1 > file2
```

### Exercise 5: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory".

a) Make a directory called `hello` in your home directory, and then remove it.
```
    mkdir hello
    rmdir hello
```

b) Can you remove your home directory with rmdir?
   
Answer: No, you can only remove empty directories with `rmdir`

### Exercise 6: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash.

a) Create a file `world`, then delete it.
```
    touch world
    rm world
```
b) Create a directory called `foo`, then create 3 files with names of your choice instead inside this directory. Remove them all at once.
```
    mkdir foo
    cd foo
    touch file1
    touch file2
    touch file3
    rm *
```
### Exercise 7: cp

`cp` stands for `copy`.

a) Create a `Backup` directory and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
```
    mkdir Backup
    cp .bashrc Backup
    ls Backup
```

b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the difference to copying a file?

    Answer: `-r` flag (recursive) has to be used.
```
    cp -r Downloads Backup
```

c) Remove the `Backup/` directory you just created.
    Again, the `-r` flag is needed to recursively delete everything in the directory.
```
    rm -r Backup
```

### Exercise 8: clear

a) 

```
    clear
```
