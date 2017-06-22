See [this](https://unix.stackexchange.com/questions/26047/how-to-correctly-add-a-path-to-path) thread for information about how to add paths to PATH in UNIX/Linux etc.

### Adding paths by editing `/etc/environment`

In Ubuntu, edit the file `/etc/environment` file to include the desired new path. For example, I wanted to add the path to the [vcflib](https://github.com/vcflib/vcflib) tools, so the relevant line in `/etc/environment` changed from this:

```
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
```

to this

```
PATH="$HOME/bin:$HOME/.local/bin:$HOME/programs/vcflib/bin:$PATH"
```
