## Files
Here you will see more advanced tools

## chmod
`chmod` stands for `change file mode bits` and controls the permissions: who can read and write a given file? Is it an executable? Permissions can be read using `ls -l` . 
exercise: What is the owner and owner group of `/root`?
answer: Owner: root, owner group: root
exercise: Create an empty file with `touch hello` and change its permissions that everyone has read and write access. 
answer: `chmod a+rw hello` or `chmod 666 hello`

## chown
`chown` stands for `change owner`
exercise: Create an empty file with `touch hello` and change its owner to `root` and group to `users`.
answer: `sudo chown root:users hello`

 

