# Piping and redirecting data

More complex operations often require moving data between files, manipulating it, and putting it in a summary file, or something like that. A simple way to do this would be to copy the text, then paste it into the next file, but this is laborious and removes any possibility of being ableto automate the process. Instead, you can use pipes!


If you haven't already, copy (`cp`) the `wkzero` directory from the GeoSciences shared space into your `~` directory like so:

```
cd /geos/netdata

cp -r wkzero/ ~
```

Then create a blank file called `notes.txt` in your `~` directory:

```
touch ~/notes.txt
```

Then `cd` to the `wkzero` directory:

```
cd ~/wkzero
```

Check what files are in the directory with `ls` then quickly see what is in `jabberwock.txt` using the `less` pager:

```
ls

less jabberwock.txt
```

We can redirect the contents of one file into another using the `>` operator. `>` takes what ever is on the left hand side and puts it into the file on the right hand side. We can add the contents of `jabberwock.txt` to `notes.txt` like this:

```
cat jabberwock.txt > ~/notes.txt
```

`cat` merely prints the contents of the file it is given, in this case `jabberwock.txt`. Think of `cat` as the most simplistic pager. Hopefully you can imagine that the `>` would be very useful for stringing commands together to manipulate data, then put the output into a text document, much quicker than copying and pasting with a mouse.

After you have done the above, check that `notes.txt` contains the new information using cat:

```
cd ~

cat notes.txt
```

A similar operator is the `|`, also known as a pipe. `|` takes whatever is on the left and uses it in the command on the right. We will investigate how pipes work using a new command called `grep`.

First `cd` to the `wkzero` directory:

```
cd ~/wkzero
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
