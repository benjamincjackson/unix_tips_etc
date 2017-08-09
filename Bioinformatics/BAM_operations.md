Some common operations to look at BAM file headers using samtools:

View the header
```
samtools view -H $MYBAMFILE
```

Get ReadGroup (RG) info from the header
```
samtools view -H $MYBAMFILE | grep "^@RG"
```

Get only sample (SM) info from the header
```
samtools view -H $MYBAMFILE | grep "SM"
```

Look at a small portion of the reads, by region mapped to, for example
```
samtools view $MYBAMFILE chr19:10000000-10000000
```
