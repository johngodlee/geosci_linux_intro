# Creating directories and files

Just like on a Windows machine, it will be necessary to perform various file operations during your work like moving files, making directories etc. But instead of using a drag and drop interface like on Windows, on `burn` you can use the command line. To demonstrate some of the simple file operations that you can perform from the command line, return to the home folder (`cd`) and make a new directory called `linux_intro` like this:

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

Notice how instead of using the relative filepath to move into the `wk_1` directory (e.g. `cd wk_1`), this time I used the full filepath (`~/linux_intro/notes/wk_1`) because `wk_1` isn't directly below my current directory so Linux wouldn't have known which directory I meant.

Move back to the `linux_intro` directory and check out the new directory structure you have made by typing:

```
cd ../..

tree
```
