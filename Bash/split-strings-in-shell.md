### Splitting strings in Bash

This syntax can be used to split (actually delete portions of) strings in different shells, including Bash. I've found it useful when parsing samples out of filenames or from paths, etc.,

```sh
${var#*SubStr} # will drop begin of string upto first occur of SubStr
${var##*SubStr} # will drop begin of string upto last occur of SubStr
${var%SubStr*}  # will drop part of string from last occur of SubStr to the end
${var%%SubStr*} # will drop part of string from first occur of SubStr to the end
```
where var is replaced with a string that you want to do something to, and SubStr is the substring that you want to use as the delimiter.

### Alternative method

I (Tom) do this a slightly different way, which I only add for interest.

Say I had a file called `MYPATH=/dir1/dir2/SweetFile.csv` and I wanted to get the name of the second directory you could do:

```sh
echo $MYPATH | rev | cut -d'/' -f2 | rev
```
This echoes the string variable, pipes into `rev` to reverse its order, uses `cut -d'/' -f2` to splits the string into substrings on forward slashes and the second field from the list of split bits. The final pipe into `rev` puts the string back round the right way.

