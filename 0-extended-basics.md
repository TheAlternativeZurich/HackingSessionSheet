## More basic commands oriented to files
This aims to train usage in basic commands with files.



##tee
read from standard input and write to standard output and files
	tee [OPTION]... [FILE]...
	-a	--append	append input to the given file(s), do not overwrite.

##cat 
concatenate files and print on the standard output
	cat [OPTION]... [FILE]...

##wc
print newline, word, and byte counts for each file
	wc [OPTION]... [FILE]...

##diff
compare files line by line
	diff [OPTION]... [FILE]...

##chown
change file owner and group
	chown [OPTION]... [OWNER][:[GROUP]] FILE...

##chmod
change file mode bits
	chmod [OPTION]... MODE[,MODE]... FILE...


##excercise:
a. Create a file containg some text typed in the keyboard.
	Hint 1: type some words in the keyboard in several lines using <Enter>.
	Hint 2: press ^C to end the command.
b. Check that the file was created and check the content of the file.
c. How many lines, words and characters does this file have?
d. Make a copy of the file and compare both files.
e. Append text to the copied file and compare with the original.
f. Assign user root as new owner of the original file and check the change.
	Hint: check first the owners of the files.
g. Change the file attributes to makle it write protected and try to append text again.
h. Delete both files and check they were deleted.


