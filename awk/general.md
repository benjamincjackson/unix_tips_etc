### Some awk cheats

Get a specific (the 800th in this example) line from a file:
```awk
awk 'FNR==800' infile.txt
```

Print every nth line:
```awk
awk 'NR%2==1' file.txt # print every other line, beginning with the first
awk 'NR%4==0' file.txt # print every 4th line
```

Calculate the mean from the second (`$2`) column of a file. If you want to input multiple files you can cat them and then pipe into awk.
```awk
awk '{ total += $2 } END { print total/NR }' infile.txt
```
