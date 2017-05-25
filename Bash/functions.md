### Some useful functions to keep in your .bashrc (or .profile, for servers [?]) file:

Open a file with a text editor, in this case gedit, in the background. Usage: `g myScriptFile.sh`

```sh
g() {
  gedit "$1" &
}
```

Add files with the extensions defined in the grep command. This is useful when you have data and scripts in the same repository, but you don't want to push the (large) data files to github/track changes in the data files. Usage: `gitaddscripts`

```sh
gitaddscripts() {
  git add `find ./ -type f | grep '.sh$\|.R$\|.txt$\|.py$'`
}
```
