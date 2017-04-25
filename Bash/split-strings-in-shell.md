# Splitting strings in Bash

This syntax can be used to split (actually delete portions of) strings in different shells, including Bash. I've found it useful when parsing samples out of filenames or from paths, etc.,

```
${var#*SubStr} # will drop begin of string upto first occur of SubStr
${var##*SubStr} # will drop begin of string upto last occur of SubStr
${var%SubStr*}  # will drop part of string from last occur of SubStr to the end
${var%%SubStr*} # will drop part of string from first occur of SubStr to the end
```

## Example

(run this code)

```
MYPATH=/a/very/long/path/to/somewhere/sampleName.bam 
echo $MYPATH
MYFILE=${MYPATH##*/}
echo $MYFILE
MYSAMPLE=${MYFILE%.*}
echo $MYSAMPLE
```

