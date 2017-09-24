# Table of Contents:

1. [Introduction](#introduction)
2. [What is UNIX?](#what)
3. [The GeoSciences network structure](#network)
4. [Logging in](#login)
5. [Basic commands](#basic)
6. [Scratch space](#scratch)
7. [Text editors and pagers](#editors)
8. [Monitoring processes](#monitor)
9. [Shell scripting](#scripting)
10. [Downloading files](#download)
11. [Using a graphical interface](#gui)
12. [Even more computing power with `eddie`](#eddie)


<a name="introduction"></a>

# Linux in GeoSciences

The purpose of this workshop is to familiarise yourself with the UNIX based computing systems in the School of GeoSciences.

Students use the GeoSciences UNIX systems for a variety of tasks, including but not limited to:

- Simulation modelling
- GIS and mapping
- Running an email server
- Statistical programming

Unlike the Windows operating system, UNIX based operating systems give much more control to the user. The most common and powerful method of interaction with a UNIX based system is through the command line rather than through a windows-like point and click interface. Additionally, much of the software available on UNIX platforms is free and open source, meaning that everybody has access to the code used to create a piece of software, meaning that you know exactly what the program is doing. Having this amount of control and knowledge is a very useful attribute in academia where research should be entirely [reproducible and repeatable](LINK).

While this workshop is not designed to be a definitive reference, it should provide a good introduction from which you can continue to learn about this powerful resource.

All the introduction materials, including this sheet, can be found at:

```
http://www.geos.ed.ac.uk/~gisteac/wkzero
```

## Targets for this session

By the end of this workshop you should be able to:

- Log on to any UNIX machine in the School of GeoSciences
- Locate your home directory
- View a file list using `ls`
- Change directories using `cd`
- Create directories using `mkdir`
- Copy, move, rename and delete files and directories using `cp`, `mv`, `rm`
- View plain text files in a number of different ways
- Find help on commands/programs using `man` and help on the web
- Download and retrieve data via FTP
- Monitor memory usage, and find out about other users on the system using `finger`, `ps`, `kill`
- Search within files using `grep`
- Start full UNIX applications and understand about different types of application
- Connect to different machines using `ssh`
- Tell other people how awesome UNIX is

<a name="what"></a>

## What is UNIX?

UNIX is a loose family of operating systems that share characteristics and are derived from the original AT&T UNIX OS that was developed by Bell Labs in the 1970s. Many UNIX-like operating systems have arisen since then, most notably, Linux, Android, and macOS.

The Operating System that most of the GeoSciences UNIX systems run on is called Linux.

<a name="network"></a>

## GeoSciences network structure

There are three main ways to access systems running Linux in the School of GeoSciences:

- Login directly to a GeoSciences Linux workstation, which access Linux servers by default
- Login to a GeoSciences Windows machine and connect to a Linux server remotely
- Login to a Linux server remotely from your personal computer, when connected to the University VPN

By far the most common way to access Linux is to use a GeoSciences Windows machine and connect to a Linux server remotely, though using a personal laptop is becoming more popular.

![](img/net_struc.png)

<a name="login"></a>

## Logging in to the GeoSciences Linux servers via the command line

Most of the tasks you will need to use a Linux server for can be achieved through a command line interface like the one in the picture below:

![](img/cli.png)

Choose your method of connecting to the GeoSciences Linux server from the options below and follow the instructions in that section.

#### Logging in from a GeoSciences Windows machine
To connect from a Windows machine to the GeoSciences Linux server you can use PuTTY. PuTTY is a free and open source program that provides a terminal interface to allow connecting to other machines. The PuTTY application is located at: `U:\SCE\GEOS\putty.exe`. I recommend making a shortcut to it and putting it on your desktop.

First, open PuTTY and configure the PuTTY session. `burn` is the name of the GeoSciences Linux server, it's address is `burn.geos.ed.ac.uk`:

"Host Name (or IP address)" = `burn.geos.ed.ac.uk`
"Port" = `22`
"Connection type:" = `SSH`
In "Category: Connection, SSH" Check `Enable X11 forwarding` - which allows X window applications to be opened on your desktop (e.g. `xeyes`)

Then click "Open" to start the connection, type your UUN (e.g. `s1234567`) and the password you use to login to MyEd, Windows machines etc.

#### From a personal Windows machine
You can also use PuTTY on your own windows machine, you can download it from [here](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html).

Make sure you are connected to the University VPN service ([more information can be found here](http://www.ed.ac.uk/information-services/computing/desktop-personal/vpn)), then open PuTTY and connect using the same options as for a GeoSciences Windows machine.

#### From a personal macOS/Linux machine
If you have a personal macOS or Linux machine you can use a terminal emulator such as `Terminal.app` to connect to a University Linux server.

Open `Terminal.app` or your terminal emulator of choice and type the following, replacing `s1234567` with your own UUN:

```
ssh -X s1234567@burn.geos.ed.ac.uk
```

Press "Enter", then follow the instructions. When it asks for your password use the one you use to login to MyEd, don't worry if the password doesn't look like it's being typed, the computer is just trying to keep your details secret!

<a name="basic"></a>

## The Linux folder structure
By this point you should be connected to the Linux burn server using whatever means suits you, if not, go back and try again, using one of the options above. When you first login your terminal window should look like this:

![](img/prompt.png)

```
[s1234567@burn ~]$ ■
```

This innocuous line, known as the bash prompt actually tells us some useful information:

- `s1234567` is obviously your UUN
- `burn` is the hostname, i.e. the name of the server you are connected to
- `~` Is the directory you are currently in, `~` is shorthand for the home directory
- `$` marks the end of the bash prompt and the start of the space where you can type commands

## Basic file system operations from the command line

### Changing directories

To see what directories and files are inside the current directory type:

```
ls
```

followed by the <Enter> key. All commands must be followed by the <Enter> key to run them.

To change to another directory, type `cd` then the directory name. List the directories in your current directory using `ls` then pick one and change to it:

```
ls

cd Documents
```

Notice that the `~` in the prompt has been replaced with `Documents`, telling us we are now in the `Documents` directory. Enter `ls` again to see that the list of files has also changed, because you are in a different directory.

The `~` (tilde character) is shorthand for the `home` directory. When you log into a Linux system you will automatically be taken to the `home` directory. The `home` directory is analogous to the `M:` drive on a Windows machine. It is a space where you can store personal files that only you can access. The `home` directory default size is quite small, but can be increased if you need extra space for your research. As an added bonus the `~`/`home`/`M:` directory is backed up every night, so there is hardly any chance of losing your data when it is stored in this directory.

To move up one directory e.g. from `Documents` back to the home directory, type:

```
cd ..
```

The `..` two dots are shorthand for the directory directly above the one you are in.

To jump back to the `home` directory from anywhere, just type `cd` without specifying any directory:

```
cd
```

Try this out by `cd`ing into a directory of your choice, then jumping back to the `home` directory using `cd`.

### Creating directories and files

To demonstrate some of the simple file operations that you can perform from the command line, return to the home folder (`cd`) and make a new directory called `linux_intro` like this:

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

`cd` into the `notes` directory, then the `wk_1` directory and create an empty file called `notes.txt` like this:

```
cd ~/linux_intro/notes/wk_1

touch notes.txt
```

Notice how instead of using the relative filepath to move into the `wk_1` directory (e.g. `cd wk_1`), this time I used the full filepath (`~/linux_intro/notes/wk_1`) because I was too far away from the `wk_1` directory for Linux to know what I was talking about.

Move back to the `linux_intro` folder and check out the new directory structure you have made by typing:

```
cd ../..

tree
```

The output should look like this:

![](tree.png)


### Moving files and directories

Next I want to make a copy of my `notes.txt` file and place it in my `home` directory, so I have a copy to work on. To do this I can use `cp`. `cp` takes two arguments, the first gives the filepath of the file or directory I want to copy (`~/linux_intro/notes/wk_1/notes.txt`), and the second gives the location of where I want to put the file or directory (`~/notes.txt`):

```
cp ~/linux_intro/notes/wk_1/notes.txt ~/notes.txt
```

Actually, after some profound thoughts, I have realised that it would be much more useful if `notes.txt` was in my `Documents` directory, so I can move the file using `mv`:

```
cd

mv notes.txt ~/Documents/notes.txt
```

`mv` can also be used to rename files:

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

Flags can be added to many commands to change their behaviour or add special inputs. Another command you can add to `rm` is the `-i` flag, which asks the user whether they really want to delete the file before deleting it, which is very useful __because `rm` deletes files irreversibly!__ I could delete `~/Documents/linux_notes.txt` using the `-i` flag:

```
rm -i ~/Documents/linux_notes.txt
```

To find out about other flags and their uses you can use the `man` command followed by the command you want to investigate. This opens the `man`ual page for that command. While `man` pages can be a bit dense, they should be your first port of call when investigating what a command does. e.g.:

```
man rm
```

### Shared resources
As well as your personal data stored in the `home` directory, you can access shared data in the `/geos` folder. This might be the data for a specific course like the Kindrogan field course, or open access data such as shapefiles for Scotland's roads.

Move to the `/geos` directory like this:

```
cd /geos
```

It is important to note that while you can open files in the shared space, it is unlikely that you will have permission to edit them. Instead you can copy them to your `home` folder using `cp` to have an editable copy.

Try this by copying the contents of the `/geos/netdata/wkzero` directory to the `~/linux_intro/downloads` folder:

```
cd /geos/netdata

cp -r wkzero/ ~/linux_intro/downloads
```

Notice how I had to add the `-r` flag to let `cp` know that I wanted to copy a directory instead of a file. Also note the `/` I used to specify that `wkzero` is a directory, not a file.

<a name="scratch"></a>
### Scratch space
Another shared space that will be useful is `/scratch/s1234567`, obviously your scratch space will be named after your UUN. Scratch space offers a very large amount of temporary storage space. It is not backed up so don't leave anything important on there for too long, but it could be useful if you want somewhere to unpack a huge dataset, or create lots of model objects.

To move to your scratch space just type the following, switching out `s1234567` with your own UUN:

```
cd /scratch/s1234567
```

<a name="editors"></a>
## Text editors and pagers
Our notes file (`~/linux_intro/notes/notes.txt`) is still a blank file. Let's fill it with some notes. There are a multitude of terminal based text editors available on the GeoSciences Linux systems. It is often much quicker to edit a text file in the Linux server environment rather than edit it on a Windows machine and copy it across every time you make a change. Some notable text editors, in my own order from most to least complex are:

- `emacs`
- `vim`
- `ed`
- `nano`

Move to the directory where `notes.txt` is found, then open up `notes.txt` file using `nano`, type some text then save and exit using `Ctrl-x`.

```
cd ~/linux_intro/notes/wk_1

nano notes.txt
```

We can then use a "pager" program to quickly open up the file to view the text we just created. Pagers are different from text editors in that they can't be used to edit text, only view it. The advantage of pagers is they are often very quick to open and provide a quicker way of skimming through a document. Use the `less` pager to read the text you just typed using the code below, then type `q` to exit and return to the terminal:
:

```
less notes.txt
```

## Piping and redirecting data

`cd` to the `wkzero` directory that we previously copied from the shared network space into our personal `downloads` folder:

```
cd ~/linux_intro/downloads/wkzero
```

Check what files are in the directory with `ls` then quickly see what is in `jabberwock.txt` using `less`:

```
ls

less jabberwock.txt
```

We can redirect the contents of one file into another using the `>` operator. `>` takes what ever is on the left hand side and puts it into the file on the right hand side. We can add the contents of `jabberwock.txt` to `~/linux_intro.txt` like this:

```
cat jabberwock.txt > ~/linux_intro/notes/wk_1/notes.txt
```

`cat` merely prints the contents of the file it is given, in this case `jabberwock.txt`. Hopefully you can imagine that the `>` would be very useful for stringing commands together to manipulate data, then put the output into a text document, much quicker than copying and pasting with a mouse.

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

Just to recap, I took the contents of `nation_data.txt` (`cat nation_data.txt`), then fed that to the grep command to look only for lines containing the word `Canada` (`grep Canada`), then fed the filtered lines to `less`, my pager of choice. It's easy to see how this could become a useful tool for quickly sifting through data to look for the interesting bits.

`grep` can take many different types of arguments, I recommend reading the `man` page for `grep` or look at some online tutorials to see what it can really do.

<a name="monitor"></a>

## Monitoring processes

On the GeoSciences Linux servers it is quite likely that other users will be working at the same time as you. You can see what everybody else is doing, and everybody else can see what you are doing. It is useful to know what processes you have running so that you can terminate processes, or manage your memory usage. It might also be useful to see what other people are doing that is using up all the memory on the server, making your programs run slowly.

To see what other users are doing, use the `ps` command. Additionally, we will use the `-a` flag to show everybodys processes and `-f` flag to show the full amount of information for each process:

```
ps -af
```

This spits out a whole load of information. The most important columns are `UID` which shows the username of who is running each process (try to find your username in the list), `PID` is the ID number of the process, which you can use in other commands which you will learn about soon, and finally the `CMD` column, which shows what the process is.

## Running background processes

Sometimes a process will continue running indefinitely until you stop it. This is especially true if you start a GUI program from the command line, e.g. a web browser.

To allow you to use the terminal while this process is happening you can use the `&` operator, to indicate that the process should be a background process. For example, if I run `xeyes`, but want to keep using the terminal while this program is open I can type:

```
xeyes &
```

This will give the process ID number (`PID`) that is displayed in the terminal and then let me continue to use the terminal.

Run `xeyes &` then run `ps -af` to see if you can find the process in the list. If you are feeling brave, you could use the `grep` command from earlier to find only the lines with your username (`UID`):

```
ps -af | grep "s1234567"
```

I can kill the program either by clicking the cross in the `xeyes` window like a normal program, or I can type:

```
kill -9 <PID>
```

Where <PID> is the ID number that I was presented with earlier in the terminal when I first started the `xeyes` program.

It is useful to know that if you run a program in the background by usign the `&` operator, you can `exit` from your remote session and the program will continue to run, even though you're not there. This could be very useful if you have a huge data crunching program running and you want to go home and sleep.

<a name="scripting"></a>

## Shell scripting

As you start to learn terminal commands and do more computing in the Linux environment you may find that you perform the same set of actions over and over. For example, if you get regular data files sent to you from some distant fieldsite, you may want to manipulate that data in the same way every time. Shell scripting allows you to save a set of commands for later use. Let's make a script that allows us to `grep` for lines containing a given word in the the `nation_data.txt` file and any other file in the future. `cd` to the `home` directory and open the `nano` text editor:

```
cd

nano
```

Shell scripts should always start with the following code:

```
#!/bin/bash
```

This tells the operating system that we are using the `bash` language, which is the language we have been using this whole time! Google if you are interested in learning more about `bash`.

On the next line we will automatically show the files in the current folder using `ls`.

Then on the next line we will prompt the user for the name of a file from that list of files.

On the next line we will prompt the user for a word that they want to search for

And finally we will use include all these variables into a command that searches our nominated file for our nominated word and display it in `less`.

Your script should look like this:

```
#!/bin/bash

ls

read -p 'File name to search through: ' file_name

read -p 'Word to search for: ' word_name

cat $file_name | grep $word_name | less
```

Save the file to `~/grep_file`.

To get the script to run as a script and not just a text file we need to make it "executable".

In the terminal type:

```
chmod +x ~/grep_file
```

To test that the script works, `cd` into the `wkzero` directory:

```
cd ~/linux_intro/downloads/wkzero
```

Then enter:

```
~/./grep_file
```

First, the script should `ls` the current directory, then ask for us to nominate a file, then for a word to `grep` for. Finally, this should output all the lines containing our nominated word into `less`.

Note that when I called the shell script I had to prefix the script name (`grep_file`) with `./`, this is a finicky requirement for all user made scripts. If you really want to know why this is necessary, read [this](http://www.linfo.org/dot_slash.html) and [this](https://www.stackoverflow.com/q/6331075/5622415). Warning, very dense and boring.

<a name="download"></a>

## Downloading files from a file server using `ftp` (File Transfer Program/Protocol)

`ftp` is a program used to transfer files from one computer to another. This utility could be very useful if you need to grab data from the GeoSciences ftp server (`ftp.geos.ed.ac.uk`), or from some other server. As an example, let's `cd` to `~/linux_intro/wkzero/downloads`:

```
cd ~/linux_intro/wkzero/downloads
```

The open the `ftp` program:

```
ftp
```

Your prompt should change to `ftp>`.

Now we can connect to a specific `ftp` server:

```
open ftp.geos.ed.ac.uk
```

As requested when you connect, type `anonymous` as your name.

Again as requested, enter your email address as your password.

As in a normal Linux environment, we can list the files in the current directory:

```
ls
```

`cd` to the `pub/geos` folder:

```
cd pub/geos/wkzero folder
```

`ls` to see what files are in this folder:

```
ls
```

Then download `jefferson.tar.gz` using `get`:

```
get jefferson.tar.gz
```

The file will be downloaded to the directory where we started `ftp` from, `~/linux_intro/wkzero/downloads`.

Now close the connection using `bye`:

```
bye
```

Use `ls` to see that `jefferson.tar.gz` is now in our personal directory.

## Compressing and uncompressing files

The file we just downloaded (`jefferson.tar.gz`) came as a compressed binary file. A compressed file takes up less file than a raw file, so is ideal for sending data over the network, but we can't do anything with this file until we uncompress it. We know it is a compressed file because the file extension is contains `.gz`. We can use the GunZip program (`gzip`) to uncompress the file into a useful one:

```
gzip -d jefferson.tar.gz
```

Note that the `-d` flag was used to tell `gzip` that we want to decompress the file. Now `ls` to see that `jefferson.tar.gz` has become `jefferson.tar`.

Now you have uncompressed the file, but it is still archived – it is one file that contains many other files, like a `.zip` file. To remove this last layer of compression and make the files usable we can use `tar`:

```
tar -xf jefferson.tar
```

The `-x` flag tells `tar` that we want to extract files from an archive. The `-f` flag tells `tar` that we will provide a filename as the archive to extract from.

If you encounter `.zip` files instead of `.tar` files you can use the `zip` and `unzip` programs to compress and uncompress them, respectively:

```
zip jefferson.zip jefferson.txt
```

Compresses `jefferson.txt` into `jefferson.zip`

```
unzip jefferson.zip –d jefferson_2
```

Unzips the contents of `jefferson.zip` and places it in a folder called `jefferson_2`

## Downloading files from webpages using `wget` and `curl`

It is becoming more common to download data from hosted webpages rather than from dedicated file servers. You can do this using two programs, either `curl` or `wget`. Both do largely the same thing, but offer some different advanced functions that we won't get into today. Just be aware that they exist and are useful for different tasks. For now, we can download some data from the GeoSciences website:

```
cd ~/linux_intro/wkzero/downloads

curl http://www.geos.ed.ac.uk/~gisteac/wkzero/protocols.txt -o protocols.txt

wget http://www.geos.ed.ac.uk/~gisteac/wkzero/protocols_all.html -r
```

The `-r` flag in `wget` downloads all the linked webpages inside the file specified for download as well as that file.

## Printing files from the command line

To quickly print a file from the command line you can use the `lp` suite of commands.

`lp file.txt` prints `file.txt`

`lpq` shows your print queue

`lprm file.txt` removes `file.txt` from the queue

<a name="gui"></a>

## Logging on using a graphical interface

Some programs may require a graphical user interface (GUI). For these programs to work you will need to run a desktop on the linux servers, like the one in the picture below:

![](img/gui.png)

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

<a name="eddie"></a>

## Logging onto the University of University cluster computer - `eddie`

While `burn.geos.ed.ac.uk` is great for relatively light activities, you might find for bigger projects such as rendering extremely detailed maps, or running a large simulation model that the computing power in `burn` is just not enough. This lack of processing power becomes especially apparent when many people are using `burn` at the same time.

If you find you need the extra computing power you can freely use the University of Edinburgh cluster computer, nicknamed `eddie`. To log on, first login to `burn` using your chosen method, then in the terminal window type:

```
ssh eddie
```

wiki.ed.ac.uk/display/ResearchServices/Quickstart

To submit scripts to eddie you must submit them as a `jobscript`.
