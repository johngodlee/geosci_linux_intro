# Compressing and uncompressing files

The file we just downloaded (`jefferson.tar.gz`) came as a compressed binary file. A compressed file takes up less drive space than a raw file, so is ideal for sending data over the network, but we can't do anything with this file until we uncompress it. We know it is a compressed file because the file extension contains `.gz`. We can use the GunZip program (`gzip`) to uncompress the file:

```
gzip -d jefferson.tar.gz
```

Note that the `-d` flag was used to tell `gzip` that we want to decompress the file. Now `ls` to see that `jefferson.tar.gz` has become `jefferson.tar`.

Now you have uncompressed the file, but it is still archived – it is one file that contains many other files, like a `.zip` file. To remove this last layer of compression and make the files usable we can use `tar`:

```
tar -xf jefferson.tar
```

The `-x` flag tells `tar` that we want to extract files from an archive. The `-f` flag tells `tar` that we will provide a filename as the archive to extract from.

If you encounter `.zip` files instead of `.tar` files you can use the `zip` and `unzip` programs to compress and uncompress them. The following compresses `jefferson.txt` into `jefferson.zip`:

```
zip jefferson.zip jefferson.txt
```

The following unzips the contents of `jefferson.zip` and places it in a directory called `jefferson_2`

```
unzip jefferson.zip –d jefferson_2
```

