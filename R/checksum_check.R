# compare the MD5sums for two files
# Usage:
# Rscript File1 File2
# File1 and File2 should be produced using the UNIX command 'md5sum' or similar.

#Rscript arguments:
args <- commandArgs(TRUE)
inFile_1 <- args[1]
inFile_2 <- args[2]

data_1 <- read.delim(inFile_1, header = F, sep = '\t')
data_2 <- read.delim(inFile_1, header = F, sep = '\t')

# if the paths to the files are difference (local versus remote)
# then you can just see if the md5sums themselves are the same,
# by comparing the first columns. Otherwise, you can compare
# the whole files...
match <- identical(data_1[,1], data_2[,1])

cat(match, '\n')
