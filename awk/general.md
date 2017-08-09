Some awk cheats

Get a specific (the 800th in this example) line from a file:
```awk
awk 'FNR==800' infile.txt
```
