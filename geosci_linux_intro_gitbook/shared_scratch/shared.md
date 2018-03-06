# Shared resources

As well as your personal data stored in the `home` directory, if you are a GeoSciences student you can access shared data in the `/geos` directory. This might be the data for a specific course like the Kindrogan field course, or open access data such as shapefiles for Scotland's roads.

Move to the `/geos` directory like this:

```
cd /geos
```

You can also access this space with the following `cd` commands:

```
cd /
cd geos
```

`/` is the "root" directory. There are no other directories above it in the file system. Everything you can access is located inside the root directory.

It is important to note that while you can open files in the shared space, it is unlikely that you will have permission to edit them. Instead you can copy them to your `home` directory using `cp` to have an editable copy. See the previous section on Basic file and directory operations for more on file operations.

Try this by copying the contents of the `/geos/netdata/wkzero` directory to your `home` (`~`) directory:

```
cd /geos/netdata

cp -r wkzero/ ~
```

Notice how I had to add the `-r` flag to let `cp` know that I wanted to copy a directory instead of a file. Also note the `/` I used to specify that `wkzero` is a directory, not a file.

