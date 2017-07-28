## Block devices and file systems

This exercise is a bit more advanced! It will involve creating/editing partitions
from the command line and manipulating block devices and file systems.

WARNING: If any of the following exercises require you to run them as root, you
should not be doing that!

### Exercise 1: Partition a disk

Useful tools: `cfdisk`, `gdisk`

For the purpose of this exercise, we provided a file called `TestDisk`. You can
treat it like a regular block device (like `/dev/sda`), but using this file
you will not damage your live system.

a) Create two partitions: One with 1MB size, one with the rest of the available space.
Both should be of type `Linux filesystem`.

### Exercise 2: Create a file system

Useful tools: `mkfs.ext4`, `mkfs.vfat`

For the purpose of this exercise, we provided two files: `partition1` and `partition2`.
This will again not change your actual system.

a) Create a FAT file system on `partition1`.
b) Create a ext4 file system on `partition2`.

You can check if this worked by looking at the output of `file partition1` and `file partition2`.

### Exercise 3: Using dd

WARNING: Don't do the following to your actual file systems! You can destroy your file systems!
Especially don't run any of the commands as root.

With `dd` you can write images to a disk, like an image of a Linux distribution.

a) Write `image.iso` to `TestDisk` using `dd`.

You can check if this worked by looking at the output of `file TestDisk`.
