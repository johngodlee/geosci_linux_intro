# Logging in to the command line from a personal Mac/Linux machine

If you have a personal macOS or Linux machine you can use a terminal emulator such as `Terminal.app` (Mac) or gnome-terminal (Linux) to 
connect to a University Linux server.

First, make sure you are connected to the University VPN service ([more information can be found here](http://www.ed.ac.uk/information-services/computing/desktop-personal/vpn)).

Then, open `Terminal.app` or your terminal emulator of choice and type the following, replacing `s1234567` with your own UUN:

```
ssh -x s1234567@burn.geos.ed.ac.uk
```

Press "Enter", then follow the instructions. When it asks for your password use the one you use to login to MyEd, don't worry if the password doesn't look like it's being typed, the computer is just trying to keep your details secret!
