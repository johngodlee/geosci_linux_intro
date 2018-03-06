# Monitoring processes

On the GeoSciences Linux servers it is quite likely that other users will be working at the same time as you. You can see what everybody else is doing, and everybody else can see what you are doing. It is useful to know what processes you have running so that you can terminate processes, or manage your memory usage. It might also be useful to see what other people are doing that is using up all the memory on the server, making your programs run slowly!

To see what other processes are running, use the `ps` command. Additionally, we will use the `-a` flag to show everyone's processes and `-f` flag to show the full amount of information for each process:

```
ps -af
```

This spits out a whole load of information. The most important columns are `UID` which shows the username of who is running each process (try to find your username in the list), `PID` is the ID number of the process, which you can use in other commands which you will learn about soon, and finally the `CMD` column, which shows what the process is.

Every user on `burn` is allocated a limited amount of memory for their operations. To check your usage you can use the following:

```
quota -s
```

Similarly, every user is given an amount of disk space to store files. You can check your disk usage by typing:

```
du –sh
```

`du` can also give you a breakdown of how much space each file and directory is taking up in your `~` directory. You can check this by typing:

```
du -sh ~/*
```

The `*` symbol is a special character called a "wildcard" that returns everything within a given directory. You can also use `*` to avoid typing out a long file name. For instance, imagine I had a file called `really_long_file_name_2017_8_1.txt`, I could view the contents of that file with `cat` simply by typing:

```
cat *2017_8_1.txt
```

This is assuming however that I have no other files or directories in that directory with `2017_8_1.txt` in their name.


