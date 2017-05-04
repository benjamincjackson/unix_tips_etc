There are often a bunch of commands that get used all the time (e.g. *ssh* login commands to different servers, file listing stuff etc) and it can get a bit tedious to constantly have type out full commands. Fortunately you can use Aliases to create shortcuts to commonly used commands.

For example, as I'm navigating directories I obsessively check the contents of directories to make sure I know what's going on.
To look at what's in a directory I use `ls -lh` like any sensible person would. However, I like to check A LOT, so I end up typing this and get lots of typos which is really annoying. To prevent this I have an alias for that command that reduces it down to `l` like so:
```sh
# Add this to your .bashrc (in Linux Mint. I haven't checked if it's the same on other flavours of Linux.
alias l="ls -lh"
```

You have to open a new terminal instance to try out your new aliases.

It's also handy to have these for ssh commands, just don't put any password info in, obviously
```sh
alias server1="ssh tommy@KewlServer.co.uk"
alias server2="ssh tommy@UnKewlServer.co.uk"
```

Now when I want to log into the KewlServer I don't have to remember the full address and type it every time, I can just call the alias I have for it.


### Aliases on Merlin

You can set up aliases for yourself on Merlin by adding them to the .profile file in your home directory (~/.profile) that Tom made us to create in the [Command Prompt Appearance](https://github.com/TBooker/Tips-and-Tricks/blob/master/command-prompt/cmd-prompt.md) doc.

For example, if you want to run (a specific version of) vcftools (that you might have installed yourself) without having to type its full path, add the following line to ~/.profile

```sh
alias vcftools="/path/to/vcftools/in/your/programs/folder/on/merlin/vcftools.version"
```
