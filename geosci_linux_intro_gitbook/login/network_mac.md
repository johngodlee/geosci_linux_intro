# Adding a network drive on a Mac

You can access your files on the University computers, such as those located in your `M:` drive, without needing to connect to the GeoSciences Linux servers. This is especially useful for accessing things out of hours.

First, make sure you are connected to the University VPN service ([more information can be found here](http://www.ed.ac.uk/information-services/computing/desktop-personal/vpn)).

Then, open `Finder.app`, Click `Connect to server ...` in the `Go` menu at the top of the screen. In the server address type:

```
smb://students.geos.ed.ac.uk/s1234567
```

replacing `s1234567` with your own UUN. Click the `+` button to add the address as a favourite, then select it and click `Connect`.

When prompted for your username and password, replace any username that has been autofilled with your UUN and use the password that you use to login to MyEd and the Windows machines.

You should now be taken to your `M:` drive in `Finder.app` and be able to move files around and copy things from your personal computer easily.

You can use the same method as above to add the "Research DataStore" as a network drive, which gives every research student and staff member 500GB of backed up storage space. The address to add is:

```
smb://csce.datastore.ed.ac.uk/csce/geos/users/s1234567
```

Remember to replace `s1234567` with your UUN.

