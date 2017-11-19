# Logging onto the University of Edinburgh cluster computer - `eddie`

While `burn.geos.ed.ac.uk` is great for relatively light computing activities, you might find for bigger projects such as rendering extremely detailed maps, or running a large simulation model that the computing power in `burn` is just not enough. This lack of processing power becomes especially apparent when many people are using `burn` at the same time.

If you find you need the extra computing power you can freely logon to the University of Edinburgh cluster computer, nicknamed `eddie`. To log on, first login to `burn` using your chosen method from the ones we covered earlier, then in a terminal window type:

```
ssh eddie
```

`eddie` provides a number of storage spaces, just like `burn`. Your personal space (2 GB) is in:

```
/home/s1234567
```

You can request a group datastore (200 GB) from <a href="mailto:is.helpline.ed.ac.uk">is.helpline.ed.ac.uk</a>. After it is granted you can find it at:

```
/exports/<COLLEGE>/eddie/<SCHOOL>/groups/<GROUP NAME>
```

As on `burn`, you can find temporary scratch space (20-50 TB) at:

```
/exports/eddie/scratch/<UUN>
```

The most common method of submitting computing work to `eddie` is as a batch job. To do this you must write a `jobscript.sh` bash script which calls any computation jobs.

To submit a jobscript you can use `qsub`:

```
qsub jobscript.sh
```

Here is an example jobscript, which simply loads python then runs another python script:

```
#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -N hello
#$ -cwd
#$ -l h_rt=00:05:00
#$ -l h_vmem=1G
#  These options are:
#  job name: -N
#  use the current working directory: -cwd
#  runtime limit of 5 minutes: -l h_rt
#  memory limit of 1 Gbyte: -l h_vmem

# Initialise the environment modules
. /etc/profile.d/modules.sh

# Load Python
module load Python/3.4.3

# Run the program
./hello.py
```

You can find more information on using `eddie` <a href="https://www.wiki.ed.ac.uk/display/ResearchServices/Quickstart">here</a>.

