# Moving, copying, deleting files and directories

Next I want to make a copy of my `notes.txt` file and place it in my `home` directory, so I have a copy to work on. To do this I can use `cp`. `cp` takes two arguments, the first gives the filepath of the file or directory I want to copy (`~/linux_intro/notes/wk_1/notes.txt`), and the second gives the location of where I want to put the file or directory (`~/notes.txt`):

```
cp ~/linux_intro/notes/wk_1/notes.txt ~/notes.txt
```

Actually, after some profound thoughts, I have realised that it would be much more useful if `notes.txt` was in my `Documents` directory, so I can move the file using `mv`:

```
cd

mv notes.txt ~/Documents/notes.txt
```

Because `notes.txt` isn't a particularly informative filename, I can also use `mv` to rename files:

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

I can remove a directory instead of a file by adding the `-r` flag to `rm`. In this case I want to remove the `data` directory:

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
