# Files

### Exercise 1

a) Execute:
```
    mkdir ~/TempDir
    cd ~/TempDir
```

b) Execute:
```
    nano capture.txt
```

    Press `^O`, then Enter to save in nano and `^X` to quit (where `^` stands for the Control key).

c) Execute:
```
    wc capture.txt
```

d) Execute:
```
    cp capture.txt capture-copy.txt
    diff capture.txt capture-copy.txt
```

e) Execute:
```
    nano capture.txt
    diff capture.txt capture-copy.txt
```

f) Execute:
```
    ls -l
    chown root:users capture.txt
```
- You should have received an error message due to lack of permissions.
- *Hint:* use `sudo`.

```
    sudo chown root:users capture.txt
    ls -l
```

g) Execute:
```
    chmod -w capture-copy.txt
    nano capture-copy.txt
```
- This gives an error message because now the file can't be written to when attempting to save in nano.
- Extra exercise: Would it be possible to overcome the write restriction using `sudo`?

h) Execute:
```
    echo "Hello World!"
```

i) Execute:
```
    touch -t 201701310001.30 capture.txt
    ls -l
```

j) Execute:
```
    ln capture.txt ~/Desktop/capture-link
```

k) Execute:
```
    file * ~/Downloads/* ~/Pictures/* ~/Music/*
    file * ~/Downloads/* ~/Pictures/* ~/Music/* > file-types.log
```

l) Execute:
```
    less file-types.log
```

m) Execute:
```
    which ls
    whereis ls
```

n) Execute:
```
    cd ~/TempDir
```
    __Make sure you're in the correct directory__, then execute:
```
    rm *
```
- *Note 1:* If a warning appears asking to confirm removal of write protected files, confirm with `y`.
- *Note 2:* Even file a who's owner was changed to root is also deleted! Ownership doesn't protect the files.
```
    cd ~
    rmdir TempDir
```
