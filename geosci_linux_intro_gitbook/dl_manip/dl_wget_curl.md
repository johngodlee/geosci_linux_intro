# Downloading files from webpages using `wget` and `curl`

It is becoming more common to download data from hosted webpages rather than from dedicated ftp file servers. You can download from webpages using two programs, `curl` or `wget`. Both do largely the same thing but offer some different advanced functions that we won't get into today. Just be aware that they exist and are useful for different tasks. For now, we can download some data from the GeoSciences website:

```
cd ~/linux_intro/wkzero/downloads

curl http://www.geos.ed.ac.uk/~gisteac/wkzero/protocols.txt -o protocols.txt

wget http://www.geos.ed.ac.uk/~gisteac/wkzero/protocols_all.html -r
```

The `-r` flag in `wget` downloads all the linked webpages inside the file specified for download as well as that file.

Use `ls` to check that the files were downloaded correctly into `~/linux_intro/wkzero/downloads`.


