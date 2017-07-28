## Searching Files
Whether you're working on code or just want to look for some text in a huge document, sooner or later you will need to know how to search for certain text patterns within files. Well you're in luck! Searching for text patterns (and text manipulation in general) are some of the very, very best qualities of the command line. They are also the types of functionality that you barely even find in graphical tools. Have you ever tried to search for a file that is less than 50 megabytes large and that also was created in the year 2017? This would be a very sensible thing to do if you want to search for a text file you have recently worked on, but that you can't remember the name of. You can even search that text file for keywords.

We're going to take at the arguably the two most important commands that perform "search-like" operations. Their names are `grep` and `find`. `find`, is quite self explanatory: It is a command that is used for finding certain files. You can search for files that were created by a certain user, at a certain date, that are in a certain path and whose path matches a certain pattern (and many more things). `grep` is a bit more complex, but arguably even more important. This command allows you to search a file's contents.

I would recommend that you do the exercises on both `grep` and `find` - they are incredibly powerful when used in combination. If you have to choose only one, I recommend `grep` because I use it much more often.

### `find`ing Files

In this exercise you'll use the `find` command to do some complicated file finding. Note that you can "chain" filters, so for searching for a file that is called "asdf" and has size less than 50MB, you can do `find -name asdf -size -50M`. As usual, there are some more examples at the bottom of the manpage.

a) 
