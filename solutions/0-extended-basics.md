##solution
a.	tee capture.txt
This is some text.
Idea is to test the Linux commands.
End of the file.
^C

b.	ls
	cat capture.txt

c.	wc capture.txt

d.	cp capture.txt capture-copy.txt
	diff capture.txt capture-copy.txt

e.	tee -a capture.txt
some added text.
^C
	diff capture.txt capture-copy.txt

f.	chown root capture.txt
error message due to lack of rights --> use 'sudo'
	chown root capture.txt
	ls -l

g.	chmod -w capture-copy.txt
	tee -a capture-copy.txt
error message because now the file can't be writen
^C  (required to close the tee command)

h.	rm capture*.txt
warning asking to confirm removal of write protected file, confirm with 'y'.
Note: even file who's owner was changed to root is also deleted!
Ownership doesn't protect the files.

