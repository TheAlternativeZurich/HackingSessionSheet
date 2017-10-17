# Searching

### Exercise 1: `grep`

a) Take a look at the file
```
    cd HackingSessionExercises/
    cat grep_exercise.md
```

b) Find the word "contains".
```
    grep "contains" grep_exercise.md
```

c) Come up with a pattern such that the output are the three lines `Dog`, `Dig` and `Dug`.
```
    grep -E "D(o|i|u)g" grep_exercise.md
```

d) Look for all lines beginning with `##`.
```
    grep -E "^##" grep_exercise.md
```

e) Print all lines beginning with `##`, but exclude the ones that starts with `###`.
```
    grep -E "^##[^#]" grep_exercise.md
```
    or you can just use:
```
    grep -E "^## " grep_exercise.md
```

f) Search for the lines `Cat`, `Rat`, `Sat` and so on, up until `Bat`, but without the line `Latin`.
```
    grep -Eo "^.at" grep_exercise.md
```

g) Produce the same lines as in e), but this time with the line `Latin` included.
```
    grep -E "^.at.*" grep_exercise.md
```

h) Try for the lines `Brat` up until `Bat`, but without the line `Latin`.
```
    grep -Eo "^..?at" grep_exercise.md
```

i) Adjust your command so that it lists the lines `Brat` up until `Bat`, this time with `Latin`.
```
    grep -E "^..?at.*" grep_exercise.md
```

j) Check for the three list elements (these are the lines beginning with `*`).
```
    grep "^\*.*" grep_exercise.md
```

k) Investigate for the entire block of Java code (the one at the end of the file).
```
    grep -oz "\`\`\`.*\`\`\`" grep_exercise.md
```
    or with single quotes:
```
    grep -oz '```.*```' grep_exercise.md
```

l) Within that code, output the class that contains the method `out`.
```
    grep -Eoz "class[^}]*void out.*}" grep_exercise.md
```
    or, with slight cheating:
```
    grep -Eoz "class Out.*}" grep_exercise.md
```

m) Pry for all animals that consist of exactly two words.
```
    grep -Eo "\+ [A-Z]\w* \w+" grep_exercise.md
```
    If you don't want the plus signs, we need to use the pearl regex engine with `-P` and use a technique called "lookbehind". This is rather advanced. If you're more interested, you can look for "lookbehind regex" online.
```
    grep -Po "(?<=\+ )[A-Z]\w* \w+" grep_exercise.md
```

n) Probe for all animals that begin with `Danger`.
```
    grep -Eo "Danger\w* ?(\w+[- ]?)*" grep_exercise.md
```

o) Finally, if you're still motivated: All animals that contain the word `Danger` *or* `danger`.
```
    grep -Eo "([A-Z]\w*|D)anger\w* ?([A-Z]\w*[- ]?)*" grep_exercise.md
```

### Exercise 2
a) Navigate to your home directory.
```
    cd
```

b) Using `find`, search for all files that were created less than 5 days ago.
```
    find -atime 5
```

c) Using `find`, search for all the files that you have write access for.
```
    find -writable
```

d) Search for all files that start with the letter `d`.
```
    find -name "d*"
```

e) Search for all files smaller than 1MB, but larger than 10KB.
```
    find -size +10k -size -1M
```

f) Find all files in the directory `Desktop` (or some different directory).
```
    find Desktop/
```

g) Search for all files starting with the letter `d` and execute `cat` on them.
```
    find -name "d*" -exec cat {} \;
```


### Exercise 3

Combining the knowledge of `grep` and `find`, we can search for some incredibly specific stuff! 
Look at the `exec` flag in the manual for `find`.

a) Navigate to your etc directory (`/etc`, on most distributions).
```
    cd /etc
```

b) Within that directory, search for all lines of text containing the word "root".
```
    find -exec grep "root" {} \;
```
    or
```
    grep -R "root"
```

c) If you received a lot of error messages in exercise b), try to limit your search to files which you have read permissions for.
```
    find -readable -type f -exec grep "root" {} \;
```

d) Search for all files containing an IPv4 address.
```
    find -exec grep "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}[^.]" {} \;
```
    or
```
    grep -PRl "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}[^.]"
```

e) Output all comments (lines starting with a `#`) of all files with a name ending in `.conf`.
```
    find -name "*.conf" -exec grep "^#" {} \;
```
