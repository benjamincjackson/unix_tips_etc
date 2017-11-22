For loops

```sh
# normal for loop
for X in Y
do
  {something}
done
```

While loops

```sh
# standard while loop
while {expression}
do
  {something}
done
```

```sh
# while loop to read lines from a file
while read VARIABLE
do
  {something with $VARIABLE}
done < file.in
```

If statement

```sh
if {expression}
then
  do something
fi
```
Loop control

```sh
# skip current iteration of the loop with:
continue
# exit loop entirely with:
break
```
