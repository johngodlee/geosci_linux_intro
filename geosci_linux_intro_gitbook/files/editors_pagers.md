## Text editors and pagers

Our notes file (`~/linux_intro/notes/notes.txt`) is still a blank file. Let's fill it with some notes. There are a multitude of terminal based text editors available on the GeoSciences Linux systems. It is often much quicker to edit a text file in the Linux server environment on the command line rather than edit it on a Windows machine and copy it across every time you make a change. Some notable text editors, in my own order from most to least complex are:

- `emacs`
- `vim`
- `ed`
- `nano`

Move to the directory where `notes.txt` is found, then open the `notes.txt` file using `nano`, type some text then save and exit using `Ctrl-x`.

```
cd ~/linux_intro/notes/wk_1

nano notes.txt
```

We can then use a "pager" program to quickly open the file and view the text we just wrote. Pagers are different from text editors in that they can't be used to edit text, only view it. The advantage of pagers is they are often very quick to open and provide a quick way of skimming through a document. Use the `less` pager to read the text you just typed using the code below, then type `q` to exit and return to the terminal:

```
less notes.txt
```
