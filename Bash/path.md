See [this](https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path) thread for information about how to add paths to PATH in UNIX/Linux etc.

## Adding paths by editing `~/.profile`

Edit the file `~/.profile` file to include the desired new path, for example, I wanted to add the path to the [vcflib](https://github.com/vcflib/vcflib) tools, so the relevant line in `~/.profile` changed from this:

```
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
```

to this

```
PATH="$HOME/bin:$HOME/.local/bin:$HOME/programs/vcflib/bin:$PATH"
```
