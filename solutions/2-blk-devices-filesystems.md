## Block devices and file systems

### Exercise 1: Partition a disk

a) Create two partitions: One with 1MB size, one with the rest of the available space.
Both should be of type `Linux filesystem`.

Two options:

(1) `cfdisk`

- Run `cfdisk TestDisk`
- Select `gpt`/`dos` label (both will work), in an actual system you will probably want `gpt`.
- Select `New` with the arrow keys, hit enter.
- Edit the size to 1M, hit enter.
- Select `Free space` with the arrow keys.
- Same thing again: New, use the default size (all space left), hit enter.
- Select `Write` with the arrow keys
- `Quit`

(2) `gdisk`

- Run `gdisk TestDisk`
- Enter `n` for new partition.
- Select number 1.
- Set first sector to default (just hit enter).
- Set second sector to +1M.
- Use the default partition type.
- Do the same thing for the second partition again, but use the defaults for
both sectors, and use partition number 2.
- Enter `w` to write your changes.

### Exercise 2: Create a file system

a) Create a FAT file system on `partition1`.

```
    mkfs.vfat partition1
```

b) Create a ext4 file system on `partition2`.

```
    mkfs.ext4 partition2
```

You can check if this worked by looking at the output of `file partition1`and `file partition2`.

### Exercise 3: Using dd

a) Write `image.iso` to `TestDisk` using `dd`.

```
    dd if=image.iso of=TestDisk
```

