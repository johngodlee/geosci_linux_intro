# Submitting a Job to `eddie`

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

You can find more information on using `eddie` <a href="https://www.wiki.ed.ac.uk/display/ResearchServices/Quickstart" target=_blank>here</a>.

