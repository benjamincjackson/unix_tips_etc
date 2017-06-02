See the [Github introductory article](https://guides.github.com/activities/hello-world/) as well.

### Basic use of git

When using git for the first time on a new machine, you need to set your username and e-mail:

```sh
git config --global user.name "username"
git config --global user.email example@gmail.com
```

You can also customise other aspects of your local git:

```sh
git config --global core.editor nano # change the default editor for commit comments, etc.
```

The first stage of making a local git repository is to initiate one:

`git init`

Then you can add files to it, using

`git add someFilesHere`, or `git add .` will add everything in the directory, or use the `gitaddscripts` function defined in the [helpful functions document](https://github.com/benjamincjackson/unix_tips_etc/blob/master/Bash/functions.md)

Whenever you want to commit changes to the files that you have specified using the command(s) above, you type

`git commit -m "some description of the commit here"`

Unless you only want to keep this repository locally, you probably also want to upload the repo to github. To do this, first make a repository on github (using the website), and then push to it:

```sh
git remote add origin git@github.com:benjamincjackson/test.git # get this link from github after making the repo
git push -u origin master # uploads the files
```

The above example uses ssh to connect to github. You can set up keys and use ssh without having to type in your username and password every time you push - follow the [instructions on Github](https://help.github.com/articles/checking-for-existing-ssh-keys/). If you use https, you have to type in your username and password each time. 


### Same repo, multiple machines

If you want to work on the same code/project on multiple machines, the workflow is the same as if two people were working on it (not simultaneously). You need to pull changes to the local repo every time before you start editing code:

```sh
# If you need to set up the repo on the local machine, first run:
git clone {remote_URL} 
git remote add origin {git@github.com:username/reponame.git}
# Otherwise/and then use pull to get the latest version:
git pull
# Or
git pull origin {branch_name} # If the above doesn't work by defauly (branch_name could be 'master')
```

### Remove files from repos

See [this stackoverflow thread](https://stackoverflow.com/questions/2047465/how-can-i-delete-a-file-from-git-repo) for details.

```sh
# To remove the file from the filesystem and from the repo:
git rm FILE

# To remove the file from the repo but not the filesystem:
git rm --cached FILE

# In either case, then you should commit and push to a remote repo if you want to
git commit -m "some message"
git push -u origin master
```

### Undo/redo a commit
For example, if you want to change your commit message, or if you want to add more files to the commit. See [this stackoverflow thread](https://stackoverflow.com/questions/927358/how-do-i-undo-the-last-commits-in-git) for details.
