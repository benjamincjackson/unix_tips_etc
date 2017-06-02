### Searching for packages/dependencies to install from the commandline

#### apt-get

```sh
# using apt-get to search for packages
apt-cache search {search term(s)}
```

#### yum

```sh
# search for a specific by name
yum list {package name}

# checks names, descriptions, summaries, package maintainers' names:
yum search {a string relating to a package you want}

# checks files and functions in packages:
yum provides {a string relating to a package you want}
```
