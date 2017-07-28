## Files

### Exercise 1

a)
```
    md ~/TempDir
    cd ~/TempDir
```

b)
```
    tee capture.txt
```
```txt
    This is some text.
    The idea is to test the Linux command.
    Now it's time to end the file.
    ^C
```

c) 
```
    wc capture.txt
```

d)
```
    cp capture.txt capture-copy.txt
    diff capture.txt capture-copy.txt
```

e)
```
    tee -a capture.txt
```
```txt
    some added text into the original file.
    ^C
```
```
    diff capture.txt capture-copy.txt
```

f)
```
    ls -l
    chown root:users capture.txt
```
- You should have received an error message due to lack of permissions.
- Hint: use `sudo`.

```
    sudo chown root:users capture.txt
    ls -l
```

g)
```
    chmod -w capture-copy.txt
    tee -a capture-copy.txt
```
- This gives an error message because now the file can't be written to.
- Press `^C` (required to close the tee command).
- Extra exercise: Would it be possible to overcome the write restriction using `sudo`?

h) 
```
    echo "Hello World!"
```

i)
```
    touch -t 201701310001.30 capture.txt
    ls -l
```

j) 
```
    ln capture.txt ~/Desktop/capture-link
```

k)
```
    file * ~/Downloads/* ~/Pictures/* ~/Music/*
    file * ~/Downloads/* ~/Pictures/* ~/Music/* > file-types.log
```

l) 
```
    less file-types.log
```

m) 
```
    grep directory file-types.log
```

n)
```
    find ~/ -name capture-copy.txt
    find ~/ -name "capture*"
```

o)
```
    which ls
    whereis ls
```

p)
```
    cd ~/TempDir
```
    __Make sure you're in the correct directory__, then execute: 
```
    rm * 
```
- Note 1: If a warning appears asking to confirm removal of write protected files, confirm with `y`.
- Note 2: Note that even file who's owner was changed to root is also deleted! Ownership doesn't protect the files.
```
    cd ~
    rmdir TempDir
```
