# Shared resources

As well as your personal data stored in the `home` directory, you can access shared data in the `/geos` directory. This might be the data for a specific course like the Kindrogan field course, or open access data such as shapefiles for Scotland's roads.

Move to the `/geos` directory like this:

```
cd /geos
```

It is important to note that while you can open files in the shared space, it is unlikely that you will have permission to edit them. Instead you can copy them to your `home` directory using `cp` to have an editable copy.

Try this by copying the contents of the `/geos/netdata/wkzero` directory to the `~/linux_intro/downloads` directory:

```
cd /geos/netdata

cp -r wkzero/ ~/linux_intro/downloads
```

Notice how I had to add the `-r` flag to let `cp` know that I wanted to copy a directory instead of a file. Also note the `/` I used to specify that `wkzero` is a directory, not a file.

<a name="scratch"></a>
