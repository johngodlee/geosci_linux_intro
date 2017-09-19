# Table of Contents:

1. [Introduction](#introduction)

>This is the introduction <a name="introduction"></a>


# Linux in GeoSciences

The purpose of this workshop is to familiarise yourself with the UNIX based computing systems in the School of GeoSciences.

Many students use the GeoSciences UNIX systems for a variety of tasks, including but not limited to:

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


## GeoSciences network structure

![](img/net_struc.png)

## Logging in to the GeoSciences Linux servers

### Command line interface

If you're at home you will have to connect to the University VPN first. EXPLAIN HOW ON DIFFERENT OS.

#### From a GeoSciences Windows machine
To connect from a Windows machine you can use PuTTY. PuTTY is a free and open source program that provides a terminal interface to allow connecting to other machines. The PuTTY application is located at: `U:\SCE\GEOS\putty.exe`. I recommend making a shortcut to it and putting it on your desktop.

Open PuTTY and configure the PuTTY session. 

"Host Name (or IP address)" = `burn.geos.ed.ac.uk`
"Port" = `22`
"Connection type:" = SSH
In Category: Connection, SSH, Check "Enable X11 forwarding" - which allows x window applications to be opened on your desktop (e.g. xeyes)

Then open the connection, type your UUN e.g. s0000000 and the password you use to login to myed, windows computers etc.

#### From a macOS/Linux machine
If you have a personal macOS or Linux machine you can use a terminal emulator such as `Terminal.app` to connect to a University Linux server. 

Open `Terminal.app` or your terminal emulator of choice and type:

```
ssh -X sxxxxxxx@burn.geos.ed.ac.uk

```

where `sxxxxxxx` is your university username

### Graphical interface 

#### From a personal Windows/macOS/Linux machine

Download from (https://www.nomachine.com/download)[https://www.nomachine.com/download]

Connect to the University VPN with your University login details

Open NoMachine

Create a new connection:

Select Protocol: SSH

Type Host: `nx.geos.ed.ac.uk`, Port: `22`

Select "Use NoMachine login"

Make sure "Use and alternate server key" is left unchecked and blank

Select "Don't use a proxy"

Give the connection a sensible name

Connect to the newly created connection and select a desktop environment. A desktop environment is ...

## The Linux folder structure

### The `home` folder

This will be familiar to anyone who has used a macOS or Linux machine before.

The home folder should contain the same files as your `M:` drive.

## Basic file system operations

In a terminal window, type `ls` to see what files and folders are inside the current folder. 

To change to another directory, type `cd` then the directory name. Pick a directory and change to it, e.g. `cd Documents`

To move up one directory e.g. from `Documents` back to the home folder, type `cd ..`. 

To jump back to the home folder from anywhere, just type `cd` without specifying any directory.

### Shared resources

### Scratch space

## Using help

## What is Bash?

## Text editors

## Monitoring processes

## Shell scripting

## (n)curses programs

### Alpine
