
Some common operations on VCF files

----
Look at a specific portion of a VCF file in the terminal using `tabix` and `less`

```sh
tabix file.vcf.gz {chr}:{start}-{stop} | less -S
```
----
Extract a specific portion of a VCF file and write to a new file using tabix & bgzip, including the header from the old file. Useful if you want a small file for testing on...

```sh
tabix input.vcf.gz -h {chr}:{start}-{stop} | bgzip > outfile.vcf.gz; tabix outfile.vcf.gz
```
----
Get the sample names from a VCF file

```sh
bcftools query -l file.vcf.gz
```
----
View the header only

```sh
bcftools view -h file.vcf.gz
```

----
Subset a ~VCF file by samples

```sh
bcftools view -Oz -S samples.txt INFILE > OUTFILE.vcf.gz
```
