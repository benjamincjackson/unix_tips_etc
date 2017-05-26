#### Linearizes a fasta file (put all the sequences on one line)

```sh
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' < INPUT.fa > OUTPUT_online.fa
```

#### Wrap a fasta file to shorter column count 

```sh
fold -w 50 INPUT.fa > OUTPUT_WRAPPED.fa
```

(WARNING - if the header lines are longer than the number of characters to wrap, these will be wrapped too, which you DO NOT WANT)
