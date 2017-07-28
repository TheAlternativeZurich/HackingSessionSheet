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
    ls
    cat capture.txt
```

d) 
```
    wc capture.txt
```

e)
```
    cp capture.txt capture-copy.txt
    diff capture.txt capture-copy.txt
```

f)
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

g)
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

h)
```
    chmod -w capture-copy.txt
    tee -a capture-copy.txt
```
- This gives an error message because now the file can't be written to.
- Press `^C` (required to close the tee command).
- Extra exercise: Would it be possible to overcome the write restriction using `sudo`?

i) 
```
    echo "Hello World!"
```

j)
```
    touch -t 201701310001.30 capture.txt
    ls -l
```

k) 
```
    ln capture.txt ~/Desktop/capture-link
```

l)
```
    file * ~/Downloads/* ~/Pictures/* ~/Music/*
    file * ~/Downloads/* ~/Pictures/* ~/Music/* > file-types.log
```

m) 
```
    less file-types.log
```

n) 
```
    grep directory file-types.log
```

o)
```
    find ~/ -name capture-copy.txt
    find ~/ -name "capture*"
```

p)
```
    which ls
    whereis ls
```

q)
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
