## Files

### Exercise 1

a)
```
    mkdir ~/TempDir
    cd ~/TempDir
```

b)
```
    nano capture.txt
```

    Press `^O`, then Enter to save in nano and `^X` to quit (where `^` stands for the Control key).

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
    nano capture.txt
    diff capture.txt capture-copy.txt
```

f)
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

g)
```
    chmod -w capture-copy.txt
    nano capture-copy.txt
```
- This gives an error message because now the file can't be written to when attempting to save in nano.
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
    which ls
    whereis ls
```

n)
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
