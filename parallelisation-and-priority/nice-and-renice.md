## Nice and Renice

Hogging a server is not cool.

If you know that a process (or processes) that you are going to run (or are currently running) is going to take a long time, it's good to set a low priority on it. This means that if others want to use the machine your long-running process an get put on the back-burner while theirs finishes. 

The programs *nice* and *renice* allow you set the prioirty on your process, so if you are in no hurry, set it low.

To run *nice*:
``` sh
nice -n 19 some-large-job
```
Where *some-large-job* can be anything you like, just put the *nice* call at the start of your command.

If you have lauched many invocations of the same program (like I am now: 72 of simulate-neutral-loci ), you can retroactively set them all to low priority as follows:

``` sh
renice -n 19 -p $(pidof <process name>)
```

where *process name* is the name of your program (e.g. simulate-neutral-loci). 

Both **nice** and **renice** use the same scale; (+)19 is the lowest priority, but 10 is also a possibility if you don't want the very lowest priority. This will have no effect if nobody else is running anything.

You can also set your process to a high priority, by setting the *niceness* to negative values (down to (-)20).
