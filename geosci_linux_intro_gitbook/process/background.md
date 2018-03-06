# Running background processes

Sometimes a process will continue running indefinitely and not allow you to use the terminal until you stop it. This is especially true if you start a graphical program from the command line, e.g. a web browser.

To allow you to use the terminal while this process is happening you can use the `&` operator, to indicate that the process should be a background process. For example, if I run `xeyes`, but want to keep using the terminal while this program is open I can type:

```
xeyes &
```

This will give the process ID number (`PID`) of the command and then let me continue to use the terminal.

Run `xeyes &` then run `ps -af` to see if you can find the process in the list, the `PID` should be the same as the one you were shown in the terminal when you typed the command. If you are feeling brave, you could use the `grep` command that was discussed in the section on manipulating files to find only the lines with your username (`UID`):

```
ps -af | grep "s1234567"
```

I can kill the program either by clicking the cross in the `xeyes` window like a normal program, or I can type:

```
kill -9 <PID>
```

Where "PID" is the ID number that I was presented with earlier in the terminal when I first started the `xeyes` program.

It is useful to know that if you run a program in the background by using the `&` operator, you can use the `exit` command to end your remote session and the program will continue to run, even though you're not there or connected to `burn`. This could be very useful if you have a huge data crunching program running and you want to go home and sleep.


