### Killing processes

```sh
# simplest use if you know the PID
kill {PID}
```

```sh
# use pkill and pgrep to kill/look up processes by name (regexs?)
pkill {NameOfProcess}
```

```sh
# this kills all the processes matching the name you give it (e.g. pkill java, pkill perl)
killall {NameOfProcess}
```

```sh
# to kill current and future jobs that are running using GNU parallel you can run:
killall perl
```
