# Changing directories

Before we continue, it's important to note that the word "directory" is used in the Unix literature to mean the same thing as "folder" on a Windows machine. Like folders, directories can be nested inside each other to create a tree-like file structure similar to this:

```
.
├── data
├── downloads
|    └── pictures
└── notes
    └── wk_1
```


To see what directories and files are inside the current directory type:

```
ls
```

followed by the "Enter" key. All commands must be followed by the "Enter" key to run them. The `ls` command should output a list of the directories and files inside the `~` directory, because that is the directory we are currently in. You can see what directory you are in by looking at the bash prompt, the little line of text which appears before you type any commands.

To change to another directory, type `cd` then the directory name. List the directories in your current directory using `ls` then pick one and change to it:

```
ls

cd Documents
```

Notice that the `~` in the prompt has been replaced with `Documents`, telling us we are now in the `Documents` directory. Enter `ls` again to see that the list of files and directories has also changed, because you are in a different directory.

The `~` (tilde character) is shorthand for the `home` directory. When you log into a Linux system you will automatically be taken to the `home` directory. The `home` directory is analogous to your `M:` drive on a Windows machine. It is a space where you can store personal files that only you can access. The `~` directory default size is quite small, but can be increased if you need extra space for your research, just [email IS services](mailto:is.helpline@ed.ac.uk). As an added bonus the `~`/`home`/`M:` directory is backed up every night, so there is hardly any chance of losing your data when it is stored in this directory.

To move up one directory e.g. from `Documents` back to the `home` directory, type:

```
cd ..
```

The `..` two dots are shorthand for the directory directly above the one you are in.

To jump back to the `home` directory from anywhere, just type `cd` without specifying any directory:

```
cd
```

Try this out by `cd`ing into a directory of your choice, then jumping back to the `home` directory using `cd`.




