when wildcard expansion gives you, e.g.:

```sh
cat *fasta > catted.fasta

argument list too long: cat
```

use `find` + `xargs`:

```
find /path/to/data/ -type f -name "*fasta" -print0 | xargs -0 cat -- > catted.fasta
```
