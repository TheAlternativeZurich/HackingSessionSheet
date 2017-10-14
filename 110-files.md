# Files

This section introduces you to basic commands related to files. 

###wc
`wc` stands for "wordcount". It prints newline-, word-, and byte-counts for each file, and a summary line if more than one FILE is specified.

Syntax:
```
    wc [OPTION]... [FILE]...
```

###diff
`diff` stand for "difference", compare files line by line.

Syntax:
```
    diff [OPTION]... [FILE]...
```

###chown
`chown` stands for "change owner". It can also change group owner.

Syntax:
```
    chown [OPTION]... [OWNER][:[GROUP]] FILE...
```

###chmod
`chmod` stands for "change file mode bits" and controls the following permissions on any given file:

* Read: Who can see the file data.

* Write: Who can modify the file.

* Execute: Who is allowed to run the file (like a program or a script)
 
Permissions can be read using `ls -l`.

Syntax:
```
    chmod [OPTION]... MODE[,MODE]... FILE...
```

###echo
`echo` - output the given line of text (useful for displaying the content of variables)

Syntax:
```
    echo [SHORT-OPTION]... [STRING]...
```

###touch
`touch` - change file timestamps (access and modification times) to the current time or to a specific one defined through the options. 
Most useful to create new, empty files.

Syntax:
```
    touch [OPTION]... FILE...
    -t STAMP`  use [[CC]YY]MMDDhhmm[.ss] instead of current time
```

*Note:* a FILE argument that does not exist is created empty (this mode of operation was already used in the section *basics*).

###ln
`ln` - make links between files.

Syntax to create a link to `TARGET` with the name `LINK_NAME`:
```
    ln [OPTION]... [-T] TARGET LINK_NAME
```
*Note:* If you use `ln` like this, it will create a so-called 'hardlink'. It is generally advisable to use softlinks (symlinks) instead, because they will also work across file systems. To do so, you will need to pass the `-s` flag like this: `ln -s TARGET LINK_NAME`. Be aware that you will have to use the *absolute* path for `TARGET`.

###file
`file` - determine file type.

Syntax:
```
    file [OPTION]... FILE...
```

###less
`less` - A file viewer.
`less` allows to scroll forward and backward in a file with the arrow keys. The current file can be opened in an editor by pressing `v`, and `less` can be quit by pressing `q`.

Syntax:
```
    less [OPTION]... [filename]...
```

###which (whereis)
`which` - shows the full path of (shell) commands.

Syntax:
```
    which [options] [--] programname [...]
```

`whereis` - locate the binary, source, and manual page files for a command.

Syntax:
```
    whereis [OPTIONS] name...
```


---

###Exercise 1

a) For this set of exercises, create the temporary working directory `TempDir` in your home directory. Now, make it your current working directory.
b) Create the file `capture.txt` containing some text typed in the keyboard.
    *Hint:* Use a console text editor such as nano
c) How many lines, words and characters does this file have?
d) Make a copy of the file and compare both files.
e) Append text to the copied file and compare with the original.
f) Assign user `root` and group `users` as new owner of the original file and check the change.
    *Hint:* Check the current owners of the files first
g) Change the file attributes to make it write protected and try to append text again.
h) Generate a new line in the terminal which contains "Hello World!".
i) Change the date and time of the file `capture.txt` to 31.01.2017 00:01 and check the result.
j) Create a link to the `capture.txt` file in the desktop, minimize the terminal and look for the new link on the desktop. Make double-click on the link, does the text editor open the file?
k) Check the file types in the following directories: your test directory, downloads, pictures and music.  Make a list of all those file types creating the `file-types.log` file.
l) Explore the log file `file-types.log` with the command `less`.
m) Obtain the location of the command `ls`, as well as the location of it's manual.
n) Delete the content of `TempDir` directory and check it was deleted. Then delete the directory.


