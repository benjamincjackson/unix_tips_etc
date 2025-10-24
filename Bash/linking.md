### Soft / symbolic links

Be explicit about names:

```sh
ln -s [OPTIONS] source_file symbolic_link
```

or you can just provide the file to be linked + `.`, which will create a link with the same name in the current directory:

```sh
ln -s [OPTIONS] source_file .
```
