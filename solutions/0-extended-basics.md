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
	diff capture.txt capture-copy.txt
f.	chown root capture.txt
	ls -l
g.	chmod -w capture-copy.txt
	tee -a capture-copy.txt
g.	rm capture*.txt

