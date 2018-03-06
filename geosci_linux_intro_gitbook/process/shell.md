# Shell scripting

As you start to learn command line commands and do more computing in the Linux environment you may find that you perform the same set of actions over and over. For example, if you get regular data files sent to you from some distant fieldsite, you may want to manipulate that data in the same way every time. Shell scripting allows you to save a set of commands for later use. Let's make a script that allows us to search (`grep`) for lines containing a given word in the `nation_data.txt` file and any other file in the future. 

If you haven't already done so, copy the `wkzero` directory from the GeoSciences shared drive to your `~` directory, then move to that directory:

```
cd /geos/netdata

cp -r wkzero/ ~
```

Then `cd` to the `home` directory and open the `nano` text editor:

```
cd

nano
```

Shell scripts should always start with the following code, also known as a "shebang":

```
#!/bin/bash
```

This tells the operating system that we are using the `bash` language, which is the language we have been using this whole time to interact with the Linux server! Google if you are interested in learning more about `bash`.

Copy the following into nano to create a script that look like this:

```
#!/bin/bash

ls

read -p 'File name to search through: ' file_name

read -p 'Word to search for: ' word_name

cat $file_name | grep $word_name | less
```

On the line after the shebang we have asked to show the files in the current directory using `ls`.

Then on the next line we use `read -p` to prompt the user for the name of a file from that list of files.

On the next line we prompt the user for a word that they want to search for.

And finally we include all these variables into a command that searches our nominated file for our nominated word and displays the reuslts in `less`. The variables we created earlier in the script from the user input (`word_name`, `file_name`) can be called later in the script by prefixing their name with a `$` (`$word_name`, `$file_name`)

Save the file to `~/grep_file.sh` using `Ctrl-x`. The `.sh` file extension stands for `sh`ell.

To get the script to run as a script and not just a text file we need to make it "executable".

In the terminal type:

```
chmod +x ~/grep_file.sh
```

To test that the script works, `cd` into the `wkzero` directory:

```
cd ~/wkzero
```

Then enter:

```
~/./grep_file.sh
```

First, the script should `ls` the current directory, then ask for us to nominate a file, then for a word to `grep` for. Finally, this should output all the lines containing our nominated word into `less`.

Note that when I called the shell script I had to prefix the script name (`grep_file.sh`) with `./`, this is a finicky requirement for all user made scripts. If you really want to know why this is necessary, read [this](http://www.linfo.org/dot_slash.html) and [this](https://www.stackoverflow.com/q/6331075/5622415). Warning, very dense and potentially boring.


