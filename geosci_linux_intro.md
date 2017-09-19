# Table of Contents:

1. [Introduction](#introduction)
2. [What is UNIX?](#what)
3. [The GeoSciences networ structure](#network)
4. [Logging in](#login)
5. [Basic commands](#basic)
6. [Scratch space](#scratch)
7. [Text editors](#editors)
8. [Monitoring processes](#monitor)
9. [Shell scripting](#scripting)
10. [(n)curses programs](#curses)

>This is the introduction <a name="introduction"></a>


# Linux in GeoSciences

The purpose of this workshop is to familiarise yourself with the UNIX based computing systems in the School of GeoSciences.

Students use the GeoSciences UNIX systems for a variety of tasks, including but not limited to:

- List one
- List 2

While this workshop is designed as a definitive reference, it should provide a good introduction from which you can continue to learn about this powerful resource.

All the introduction materials, including this sheet, can be found at:

```
http://www.geos.ed.ac.uk/~gisteac/wkzero
```


## Targets for this session

You should be able to:

- Log on to any UNIX machine in the School of GeoSciences
- Locate your home directory
- View a file list using `ls`
- Change directories using `cd`
- Create directories using `mkdir`
- Copy, move, rename and delete files and directories using `cp`, `mv`, `rm`
- View plain text files in a number of different ways
- Find help on commands/programs using `man` and help on the web
- Download and retrieve data via FTP
- Monitor disk space used, and find out about other users on the system
- Search within files using `grep`
- Start full UNIX applications and understand about different types of application
- Connect to different machines using `ssh`
- Tell other people how awesome UNIX is


## What is UNIX?

UNIX is a loose family of operating systems that share characteristics and are derived from the original AT&T UNIX OS that was developed by Bell Labs in the 1970s. Many UNIX-like operating systems have arisen since then, most notably, Linux, Android, and macOS. 

The Operating System that most of the GeoSciences UNIX systems run on is called Linux. 


## Why use Linux?



## GeoSciences network structure



![](img/net_struc.png)

## Logging in to the GeoSciences Linux servers

There are two ways to interact with the Linux systems, through a text based command line interface or through a graphical remote desktop.

### Command line interface

#### From a GeoSciences Windows machine
To connect from a Windows machine you can use PuTTY. PuTTY is a free and open source program that provides a terminal interface to allow connecting to other machines. The PuTTY application is located at: `U:\SCE\GEOS\putty.exe`. I recommend making a shortcut to it and putting it on your desktop.

First, open PuTTY and configure the PuTTY session: 

"Host Name (or IP address)" = `burn.geos.ed.ac.uk`
"Port" = `22`
"Connection type:" = `SSH`
In "Category: Connection, SSH" Check `Enable X11 forwarding` - which allows X window applications to be opened on your desktop (e.g. `xeyes`)

Then click "Open" to start the connection, type your UUN e.g. `s1234567` and the password you use to login to MyEd, Windows machines etc.

#### From a personal Windows machine
You can also use PuTTY on your own windows machine, you can download it from [here](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html). 

Make sure you are connected to the University VPN service ([more information can be found here](http://www.ed.ac.uk/information-services/computing/desktop-personal/vpn)), then open PuTTY and connect using the same options as for a GeoSciences Windows machine.

#### From a macOS/Linux machine
If you have a personal macOS or Linux machine you can use a terminal emulator such as `Terminal.app` to connect to a University Linux server. 

Open `Terminal.app` or your terminal emulator of choice and type the following, replacing `s1234567` with your own UUN:

```
ssh -X s1234567@burn.geos.ed.ac.uk
```

Press "Enter", then follow the instructions. When it asks for your password use the one you use to login to MyEd, don't worry if the password doesn't look like it's being typed, the computer is just trying to keep your details secret!

### Graphical interface 


#### From a GeoSciences Windows machine

Open "NX Connection Wizard" from the Start menu. 

Configure the connection like so:

"Session" = `burn.geos.ed.ac.uk`
"Host" = `burn.geos.ed.ac.uk`
"Port" = `22`
"Select type of your internet connection." = `ADSL`
"Client" = `Unix`
"Desktop environment" = `KDE` - __This can be changed__
"Select size of your remote desktop" = `Available area` - __This can be changed__

Then when the login window appears, login with your UUN and the password you use to login to MyEd.

#### From a personal Windows/macOS/Linux machine

Download NoMachine from (https://www.nomachine.com/download)[https://www.nomachine.com/download]

Connect to the University VPN ([more information can be found here](http://www.ed.ac.uk/information-services/computing/desktop-personal/vpn)). 

Open NoMachine

Create a new connection:

Select Protocol: SSH

Type Host: `nx.geos.ed.ac.uk`, Port: `22`

Select "Use NoMachine login"

Make sure "Use and alternate server key" is left unchecked and blank

Select "Don't use a proxy"

Give the connection a sensible name

Connect to the newly created connection and select a desktop environment such as `KDE`.

When prompted for a password use the password you use to login to MyEd

## The Linux folder structure

### The `home` folder

This will be familiar to anyone who has used a macOS or Linux machine before.

The home folder should contain the same files as the `M:` drive on a GeoSciences Windows machine.

## Basic file system operations from the command line

### The bash prompt

When you first login to a UNIX system through the command line you will be presented with something like this:

![](img/prompt.png)

```
[s1234567@burn ~]$ ■
```

This innocuous line, known as the bash prompt actually tells us some useful information:

`s1234567` is obviously your UUN
`burn` is the hostname, i.e. the name of the server you are connected to
`~` Is the directory you are currently in, `~` is shorthand for the home directory
`$` indicates the end of the bash prompt and the start of the space where you can type commands

### Changing directories

To see what directories and files are inside the current directory type:

```
ls
```

To change to another directory, type `cd` then the directory name. List the directories in your home directory using `ls` then pick one and change to it:

```
ls

cd Documents
```

Notice that the `~` in the prompt has been replaced with `Documents`, telling us we are now in the Documents folder

To move up one directory e.g. from `Documents` back to the home directory, type:

```
cd ..
```

To jump back to the home folder from anywhere, just type `cd` without specifying any directory:

```
cd
```

### Creating directories and files

To demonstrate some of the simple file operations that you can perform from the command line, return to the home folder (`cd`) and make a new directory called `linux_intro` like this:

```
mkdir linux_intro
```

Move into that directory and create three more directories, `notes`, `downloads` and `data`:

```
cd linux_intro

mkdir notes

mkdir downloads

mkdir data
```

Type `ls` to check that the directories have been created.

move into notes and create an empty file called `notes.txt` like this:

```
cd ~/linux_intro/notes

touch notes.txt
```
Notice how instead of using the relative filepath to move into the `notes` directory (e.g. `cd notes`), this time I chose to use the full filepath (`~/linux_intro/notes`)

Move back to the `linux_intro` folder and check out the new directory structure you have made by typing:

```
cd ..

tree
```

The output should look like this:

![](tree.png)


### Moving files and directories

Next I want to copy my `notes.txt` file to my `Documents` directory in the `~` directory. To do this I can use `cp`:

```
cd

cp ~/linux_intro/notes/notes.txt ~/Documents/notes.txt
```

I could also move the file using `mv`:

```
cd

mv ~/linux_intro/notes/notes.txt ~/Documents/notes.txt
```

`mv` can also be used to rename files:

```
cd ~/Documents

mv notes.txt linux_notes.txt
```

We have done a lot of moving around different directories, which can become confusing. If you ever want to check what directory you are in you can type:

```
pwd
```

Imagine I'm done working with `~/Documents/notes.txt` and want to delete it. I can delete files using:

```
rm ~/Documents/notes.txt
```

But it is important to note that when you delete a file in this way it doesn't get moved to the recycling bin, IT IS GONE FOREVER!

I can remove directories by adding the `-r` flag to `rm`:

```
rm -r ~/linux_intro/data
```

Flags can be added to many commands to change their behaviour, or to tell the command that you are about to add more information. Another command you can add to `rm` is the `-i` flag, which asks the user whether they really want to delete the file before deleting it, which is very useful when `rm` deletes files irreversibly. I could delete `~/Documents/linux_notes.txt` using the `-i` flag:

```
rm -i ~/Documents/linux_notes.txt
```

To find out about other flags and their uses you can use the `man` command followed by the command you want to investigate. This opens the `man`ual page for that command. While `man` pages can be a bit dense, they should be your first port of call when investigating what a command does. e.g.: 

```
man rm
```

The `man` page will be opened in what is known as a "pager". Pagers allow you to preview plain text documents by scrolling up and down, but don't let you edit the document. They are a good way of quickly getting an idea of what is in a document. 

There are multiple pagers that you can specify but the one that `man` uses by default is called `less`. 



### Shared resources



### Scratch space


## What is Bash?

## Text editors

## Monitoring processes

## Shell scripting

## (n)curses programs

### Alpine
