# Piping and redirecting data

`cd` to the `wkzero` directory that we previously copied from the shared network space into our personal `downloads` directory:

```
cd ~/linux_intro/downloads/wkzero
```

Check what files are in the directory with `ls` then quickly see what is in `jabberwock.txt` using `less`:

```
ls

less jabberwock.txt
```

We can redirect the contents of one file into another using the `>` operator. `>` takes what ever is on the left hand side and puts it into the file on the right hand side. We can add the contents of `jabberwock.txt` to `notes.txt` like this:

```
cat jabberwock.txt > ~/linux_intro/notes/wk_1/notes.txt
```

`cat` merely prints the contents of the file it is given, in this case `jabberwock.txt`, think of `cat` as the most simplistic pager. Hopefully you can imagine that the `>` would be very useful for stringing commands together to manipulate data, then put the output into a text document, much quicker than copying and pasting with a mouse.

After you have done the above, check that `notes.txt` contains the new information using cat:

```
cd ~/linux_intro/notes/wk_1

cat notes.txt
```

A similar operator is the `|`, also known as a pipe. `|` takes whatever is on the left and uses it in the command on the right. We will investigate how pipes work using a new command called `grep`.

First `cd` to the `wkzero` directory:

```
cd ~/linux_intro/downloads/wkzero
```

Use `cat` on `nation_data.txt` to see that it contains a lot of data:

```
cat nation_data.txt
```

But I want to find only the lines that have information about "Canada". I can use `grep` to filter out just those lines, then present that data in a pager like `less` like this:

```
cat nation_data.txt | grep "Canada" | less
```

Just to recap, I took the contents of `nation_data.txt` (`cat nation_data.txt`), then fed that to the grep command to look only for lines containing the word `Canada` (`grep Canada`), then fed the filtered lines to `less`, my pager of choice. It's easy to see how this could become a really powerful tool for quickly sifting through data to look for the interesting bits.

`grep` can take many different types of arguments, I recommend reading the `man` page for `grep` or look at some online tutorials to see what it can really do.
