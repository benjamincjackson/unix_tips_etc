Some common operations to look at BAM file headers using samtools:

View the header
`samtools view -H`

Get ReadGroup (RG) info from the header
`samtools view -H $MYBAMFILE | grep "^@RG"`

Get only sample (SM) info from the header
`samtools view -H $MYBAMFILE | grep "SM"`
