# Basic file and directory operations.

## Creating directories and files

Just like on a Windows machine, it will be necessary to perform various file operations during your work like moving files, making directories etc. But instead of using a drag and drop interface like on Windows with Windows File Explorer, on `burn` you can use the command line. To demonstrate some of the simple file operations that you can perform from the command line, return to the home folder (`cd`) and make a new directory called `linux_intro` like this:

```
mkdir linux_intro
```

`cd` into that directory and create three more directories, `notes`, `downloads` and `data`:

```
cd linux_intro

mkdir notes

mkdir downloads

mkdir data
```

Then create a directory inside the notes directory called `wk_1`:

```
mkdir notes/wk_1
```

Notice that I used `/` to create the `wk_1` directory inside an existing directory.

Type `tree` to check that all the directories have been created. `tree` gives a nice overview of the directory structure in the directory you are currently in.

Your `tree` output should look like this:


```
.
├── data
├── downloads
└── notes
    └── wk_1
```

`cd` into the `notes` directory, then the `wk_1` directory and create an empty file called `notes.txt` like this:

```
cd ~/linux_intro/notes/wk_1

touch notes.txt
```

Notice how this time, instead of using the relative filepath to move into the `wk_1` directory (e.g. `cd wk_1`), this time I used the full filepath (`~/linux_intro/notes/wk_1`) because `wk_1` isn't directly below my current directory so Linux wouldn't have known which directory I meant.

Move back to the `linux_intro` directory and check out the new directory structure you have made by typing:

```
cd ../..

tree
```

Notice how I used `../..` to move two directories up in the directory structure. `cd ..` would move only one level up. 


## Moving, copying, deleting files and directories

I want to make a copy of my `notes.txt` file and place it in my `home` (`~`) directory, so I have a copy to work on. To do this I can use `cp`. `cp` takes two arguments (i.e. two inputs), the first gives the filepath of the file or directory I want to copy (`~/linux_intro/notes/wk_1/notes.txt`), and the second gives the location of where I want to put the file or directory (`~/notes.txt`):

```
cp ~/linux_intro/notes/wk_1/notes.txt ~/notes.txt
```

Actually, after some profound thoughts, I have realised that it would be much more useful if `notes.txt` was in my `Documents` directory, so I can move the file using `mv`:

```
cd

mv notes.txt ~/Documents/notes.txt
```

Notice that `cp` makes a copy of the file while `mv` moves the original file. 

Because `notes.txt` isn't a particularly informative filename, I want to rename it. I can use `mv` to rename files, giving the old name (`notes.txt`) and the new name (`linux_notes.txt`):

```
cd ~/Documents

mv notes.txt linux_notes.txt
```

We have done a lot of moving around different directories, which can become confusing. If you ever want to check what directory you are in you can type `pwd`:

```
pwd
```

Imagine that I'm done working with `~/Documents/linux_notes.txt` and want to delete it. I can delete files using `rm`:

```
rm ~/Documents/notes.txt
```

But it is important to note that when you delete a file in this way it doesn't get moved to the recycling bin, __IT IS GONE FOREVER!__

I can remove a directory and all its contents instead of a file by adding the `-r` flag to `rm`. In this case I want to remove the `data` directory:

```
cd ~/linux_intro

rm -r data
```

Flags can be added to many commands to change their behaviour or add special inputs. A useful flag for the `rm` command is `-i`, which asks the user whether they really want to delete the file before deleting it. Once again, the reason this is useful is because __`rm` deletes files irreversibly!__ I could delete `~/Documents/linux_notes.txt` using the `-i` flag:

```
rm -i ~/Documents/linux_notes.txt
```

To find out about other flags and their uses you can use the `man` command followed by the command you want to investigate. This opens the `man`ual page for that command. While `man` pages can be a bit dense, they should be your first port of call when investigating what a command does. e.g.:

```
man rm
```

It's also worth remembering that a quick internet search for a command followed by the word "Linux" or a brief description of your problem will almost definitely yield useful results.
