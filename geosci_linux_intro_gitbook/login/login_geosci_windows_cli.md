# Logging in to the command line from a GeoSciences Windows machine
To connect from a GeoSciences Windows machine to the GeoSciences Linux server you can use PuTTY. PuTTY is a free and open source program that provides a command line interface to allow you to connect remotely to other machines over a network. The PuTTY application is located at: `U:\SCE\GEOS\putty.exe`, on the University computers. I recommend making a shortcut to it and putting it on your desktop.

First, open PuTTY and configure the PuTTY session using the instructions below. `burn` is the name of the GeoSciences Linux server, it's address is `burn.geos.ed.ac.uk`:

- "Host Name (or IP address)" = `burn.geos.ed.ac.uk`
- "Port" = `22`
- "Connection type:" = `SSH`
- In "Category: Connection, SSH" Check `Enable X11 forwarding` - which allows X window applications to be opened on your desktop (e.g. `xeyes`, see "Managing Processes -> Background Processes")

Then click "Open" to start the connection, type your UUN (e.g. `s1234567`) and the password you use to login to MyEd, Windows machines etc.
