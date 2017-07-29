## Searching

### Exercise 1: `grep`

a) Take a look at the file
```
    cd HackingSessionExercises/
    cat grep_exercise.md
```

b) Find for the word "Further".
```
    grep "Further" grep_exercise.md
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
    or (note the single quotes):
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
