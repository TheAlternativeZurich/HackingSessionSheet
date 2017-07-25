##Solution

a.	`md ~/TempDir`
	`cd ~/TempDir`

b.	`tee capture.txt`
This is some text.
Idea is to test the Linux commands.
Now is time to end the file.
`^c`

c.	`ls`
	`cat capture.txt`

d.	`wc capture.txt`

e.	`cp capture.txt capture-copy.txt`
	`diff capture.txt capture-copy.txt`

f.	`tee -a capture.txt`
some added text into the original file.
`^c`
	`diff capture.txt capture-copy.txt`

g.	`ls -l`
	`chown root:users capture.txt`
You should have received an error message due to lack of rights.
Hint: use `sudo`
	`sudo chown root:users capture.txt`
	`ls -l`

h.	`chmod -w capture-copy.txt`
	`tee -a capture-copy.txt`
error message because now the file can't be writen
`^c`  (required to close the tee command)
Extra exercise: would it be possible to overcome the write restriction using `sudo`?

i.	`echo "Hello World!"`

j.	`touch -t 201701310001.30 capture.txt`
	`ls -l`

k.	`ln capture.txt ~/Desktop/capture-link`

l.	`file * ~/Downloads/* ~/Pictures/* ~/Music/*`
	`file * ~/Downloads/* ~/Pictures/* ~/Music/* > file-types.log`

m.	`less file-types.log`

n.	`grep directory file-types.log`

o.	`find ~/ -name capture-copy.txt`
	`find ~/ -name "capture*"`

p.	`which ls`
	`whereis ls`

q.	`cd ~/TempDir`	
	`rm *` __(be sure from where you are executing the command!)__
Note 1: warning asking to confirm removal of write protected file, confirm with `y`.
Note 2: note that even file who's owner was changed to root is also deleted!
Ownership doesn't protect the files.
	`cd ~`
	`rmdir TempDir`


