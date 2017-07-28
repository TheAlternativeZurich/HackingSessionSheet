## Files

This section aims to train usage with basic commands for files.  Here you will find a basic use and most common syntax of the commands, as well as some exercises at the end.  However the commands are much more powerfull and you are invited to self-explore and experiment with other option attributes and alternative syntaxes (Hint: remember command `man` from the section *basics*).


###tee
`tee` - read from standard input and write to standard output **and** files.

Syntax:
```
    tee [OPTION]... [FILE]...
    -a	--append	append input to the given file(s), do not overwrite.
```

###cat
`cat` - con*cat*enate files and print on the standard output.

Syntax:
```
    cat [OPTION]... [FILE]...
```

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
`chown` stands for "change owner". It can change also group owner.

Syntax:
```
    chown [OPTION]... [OWNER][:[GROUP]] FILE...
```

###chmod
`chmod` stands for "change file mode bits" and controls the permissions: who can read and write a given file? Is it an executable? Permissions can be read using `ls -l`.

Syntax:
```
    chmod [OPTION]... MODE[,MODE]... FILE...
```

###echo
`echo` - display a line of text

Syntax:
```
    echo [SHORT-OPTION]... [STRING]...
```

###touch
`touch` - change file timestamps (access and modification times) to the current time or to a specific one defined through the options.

Syntax:
```
    touch [OPTION]... FILE...
    -t STAMP`  use [[CC]YY]MMDDhhmm[.ss] instead of current time
```

Note: a FILE argument that does not exist is created empty (this mode of operation was already used in the section *basics*).

###ln
`ln` - make links between files.

Syntax to create a link to TARGET with the name LINK_NAME:
```
    ln [OPTION]... [-T] TARGET LINK_NAME
```

###file
`file` - determine file type.

Syntax:
```
    file [OPTION]... FILE...
```

###less
`less` - opposite of more.
Less is a program similar to `more`, but it has many more features including also file edition possibility. Internal `less` commands are based on both `more` and `vi`.  If no in edition mode, to exit the command press `q`.

Syntax:
```
    less [OPTION]... [filename]...
```

###grep
`grep` - searches the named input FILEs for lines containing a match to the given PATTERN. By default, grep prints the matching lines. 

Fun fact: `grep`'s name comes from *g*lobally search a *r*egular *e*xpression and *p*rint. This is a wordplay on the `ed` command g/re/p, which searches for a regex expression and prints it. `ed` is one of the very first text editors. Nowadays, no one uses `ed` anymore because there is no reason to do so (maybe apart from bragging rights), but `ed` has influenced a *lot* of commands commonly used in Unix.

Syntax:
```
    grep [OPTIONS] PATTERN [FILE...]
```

###find
`find` - search for files in a directory hierarchy.

Syntax:
```
    find [starting-point...] [expression]
```

###which (whereis)
`which` - locate a command.

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

###Exercise 1:

a) For this set of exercises, create the temporary working directory `TempDir` in your home directory. Now, make it your current working directory.
b) Create the file `capture.txt` containing some text typed in the keyboard.
    Hint 1: Once you have found the correct command, you can type some words in the keyboard over several lines using `<Enter>`  
    Hint 2: Press `^C` to end the command
c) Check that the file was created and check the content of the file.
d) How many lines, words and characters does this file have?
e) Make a copy of the file and compare both files.
f) Append text to the copied file and compare with the original.
g) Assign user `root` and group `users` as new owner of the original file and check the change.
    Hint: check first the current owners of the files
h) Change the file attributes to make it write protected and try to append text again.
i) Get in the terminal a new line which contains "Hello World!".
j) Change the date and time of the file `capture.txt` to 31.01.2017 00:01 and check the result.
k) Create a link to the `capture.txt` file in the desktop, minimize the terminal and look for the new link on the desktop. Make double-click on the link, does the text editor open the file?
l) Check the file types in the following directories: your test directory, downloads, pictures and music.  Make a list of all those file types creating the `file-types.log` file.
m) Explore the log file `file-types.log` with the command `less`.
n) List all lines which contain a directory in the previous log file.
o) Starting from your home directory, search for the file `capture.txt`.
p) Obtain the location of the command `ls`, as well as the location of it's manual.
q) Delete the content of `TempDir` directory and check it was deleted. Then delete the directory.
