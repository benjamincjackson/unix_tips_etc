Find files that were modified on a specific date, in this case, on the 7th June 2017:

```sh
find . -type f -newermt 2017-06-07 ! -newermt 2017-06-08
```

Find directories that match a pattern:

```sh
find /media/ben/Data/ -type d -name "VCF_quality_stats_distributions"
```
