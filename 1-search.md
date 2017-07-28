## Searching

*These exercises cover the `grep` and `find` commands in detail.*  

We're going look at two of the most important commands that perform "search-like" operations. Their names are `grep` and `find`. `find` is a command that is used for finding certain files. `grep` is a bit more complex and allows you to search a file's contents.

I would recommend that you do the exercises on both `grep` and `find` - they are very powerful when used in combination. If you have to choose only one, I recommend `grep` because I use it much more often.


### Exercise 1: `grep`

`grep` searches the text using so-called Regular Expressions (commonly referred to as Regex). Regexes are textual patterns that encode a set of strings. In other words, a Regex is simply an efficient way to specify many strings. For example, `un(b|f)ounded` is a Regex that stands for both "unbounded" and "unfounded". There are many Regex standards, and they may differ in the special characters they use. It's probably a good idea to read [https://en.wikipedia.org/wiki/Regular_expression#Basic_concepts](https://en.wikipedia.org/wiki/Regular_expression#Basic_concepts). After that, the `grep` manual provides some further information. 

Fun fact: `grep`'s name comes from *g*lobally search a *r*egular *e*xpression and *p*rint. This is a wordplay on the `ed` command g/re/p, which searches for a Regex and prints it. `ed` is one of the very first text editors created. Nowadays, no one uses `ed` anymore because there is no reason to do so (maybe apart from bragging rights), but `ed` has influenced a *lot* of commands commonly used in Unix.

a) Take a look at the file `HackingSessionExercises/grep.md`. In these exercises, you will search this file for various patterns using `grep`. The goal is that you use `grep` to output *only* what is written in the exercises.
b) Search for the word "Further".
b) Search in a way such that the output are the three lines `Dog`, `Dig` and `Dug`.
c) Search such that the output is `Cat`, `Rat`, `Sat` and so on, up until `Bat`.
d) Search for the same as in the previous exercise, but without the line `Latin`.
e) Search for the lines `Brat` up until `Bat`.
f) Search for the lines `Brat` up until `Bat`, but without the line `Latin`.
g) Search for all lines beginning with `##`.
h) Search for all lines beginning with `##`, but exclude that start with `###`.
i) Search for all animals that contain the word `Danger`.
j) Search for all animals that consist of exactly two words.
k) Search for the three list elements (those are the lines beginning with `*`).
l) Search for the entire block of Java code (the one at the end of the file).
m) Within that code, search for the class that contains the method `out`.

### Exercise 2: `find`

In this exercise you'll use the `find` command to do some complicated file finding. Note that you can "chain" filters, so for searching for a file that is called "asdf" and has size less than 50MB, you can do `find -name asdf -size -50M`. As usual, there are some more examples at the bottom of the manpage.

a) Navigate to your home directory.
b) Using `find`, search for all files that were created less than 5 days ago.
c) Using `find`, search for all the files that you have write access for.
d) Search for all files that start with the letter `d`.
e) Search for all files smaller than 1MB, but larger than 10KB.
f) Find all files in the directory `Desktop` (or some different directory).
g) Search for all files starting with the letter `d` and execute `cat` on them.


### Exercise 3

Combining the knowledge of `grep` and `find`, we can search for some incredibly specific stuff! 
Look at the `exec` flag in the manual for `find`.

a) Navigate to your etc directory (`/etc`, on most distributions).
b) Within that directory, search for all lines of text containing the word "root".
c) If you received a lot of error messages in exercise b), try to limit your search to files which you have read permissions for.
d) Search for all files containing an IP address.
e) Output all comments (lines starting with a `#`) of all files with a name ending in `.conf`.
