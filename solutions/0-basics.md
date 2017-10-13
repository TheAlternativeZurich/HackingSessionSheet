## Basics

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

c) Find the size of your bash executable (depending on your system, it's `/usr/bin/bash` or `/bin/bash`).
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

a) Change into the `/usr/bin` directory, then list all files in there.
```
    cd /usr/bin/
    ls
```

b) Change into the `/root` directory.
```
    cd /root
```

c) Change back to your home directory.
```
    cd ~
```
    or just
```
    cd
```

### Exercise 4: cat

a)
```
    cat file
```

### Exercise 5: rm

`rm` stands for "remove". It directly removes files, it doesn't put them in the trash.

a) Create a file `hello` by typing `touch hello`, then delete it.
```
    touch hello
    rm hello
```

### Exercise 6: mkdir and rmdir

`mkdir` stands for "make directory", `rmdir` for "remove directory".

a) Make a directory called `hello` in your home directory, and then remove it.
```
    mkdir hello
    rmdir hello
```

b) Can you remove your home directory with rmdir?
    No, you can only remove empty directories with `rmdir`

### Exercise 7: cp

`cp` stands for `copy`.

a) Make a `Backup` directory with `mkdir` and copy your `.bashrc` (bash configuration file) there. Check if it worked with `ls`.
```
    mkdir Backup
    cp .bashrc Backup
    ls Backup
```

b) Copy a directory into `Backup/` (e.g. your `Downloads` directory). What is the difference to copying a file?
    Difference: `-r` flag (recursive) has to be used.
```
    cp -r Downloads Backup
```

c) Remove the `Backup/` directory you just created.
    Again, the `-r` flag is needed to recursively delete everything in the directory.
```
    rm -r Backup
```
