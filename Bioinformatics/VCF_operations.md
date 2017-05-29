
Some common operations to look at VCF files

----
Look at a specific portion of a VCF file in the terminal using `tabix` and `less`

```sh
tabix file.vcf.gz {chr}:{start}-{stop} | less -S
```
----
