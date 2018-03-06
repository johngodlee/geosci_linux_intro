# Logging onto the University of Edinburgh cluster computer - `eddie`

While `burn.geos.ed.ac.uk` is great for relatively light computing activities, you might find for bigger projects such as rendering extremely detailed maps, or running a large simulation model that the computing power in `burn` is just not enough. This lack of processing power becomes especially apparent when many people are using `burn` at the same time.

If you find you need the extra computing power you can freely logon to the University of Edinburgh cluster computer, nicknamed `eddie`. To log on, first login to `burn` using your chosen method from the ones we covered earlier in the Login section, then in a terminal window type:

```
ssh eddie
```

`eddie` provides a number of storage spaces, just like `burn`. Your personal space (2 GB) is in:

```
/home/s1234567
```

You can request a group datastore (200 GB) from <a href="mailto:is.helpline.ed.ac.uk">is.helpline.ed.ac.uk</a>. After permission is granted you can find it at:

```
/exports/<COLLEGE>/eddie/<SCHOOL>/groups/<GROUP NAME>
```

As on `burn`, you can find temporary scratch space (20-50 TB) at:

```
/exports/eddie/scratch/<UUN>
```
