# Downloading from a file server using `ftp` (File Transfer Program/Protocol)

`ftp` is a program used to transfer files from one computer to another. This utility could be very useful if you need to grab data from the GeoSciences ftp server (`ftp.geos.ed.ac.uk`), or from some other server. As an example, let's first `cd` to `~/Downloads`, which is where we want to download files to:

```
cd ~/Downloads
```

The open the `ftp` program:

```
ftp
```

Your bash prompt should change to `ftp>`.

Now we can connect to a specific `ftp` server:

```
open ftp.geos.ed.ac.uk
```

When requested, type `anonymous` as your name.

Again as requested, enter your university email address (e.g. `s1234567@sms.ed.ac.uk`) as your password.

As in a normal Linux environment, we can list the files in the current directory:

```
ls
```

`cd` to the `pub/geos/wkzero` directory:

```
cd pub/geos/wkzero
```

`ls` to see what files are in this directory:

```
ls
```

Then download `jefferson.tar.gz` using `get`:

```
get jefferson.tar.gz
```

The file will be downloaded to the directory where we started `ftp` from, `~/downloads`.

Now close the connection using `bye`:

```
bye
```

Use `ls` to check that `jefferson.tar.gz` is now in our personal directory.

