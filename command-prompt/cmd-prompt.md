## Print full path with cmd prompt

I emailed this around after discussing it with Rory, but it's probably better to have a record of it for people in the future.

When using the Unix command line I find it useful to have the command prompt show the full path.

Having something like `myusername@server:~ ` gets a little irritating when you are a couple of directories deep. *It gets annoying to have to run `pwd` all the time!*

To customise how your prompt looks, you can edit the terminal optons by editing a file called `.profile` in your home directory.

If you are not familiar, the period before the file name means that it is a hidden file, to see all files in a  dir run `ls -a`.

If `.profile` does not exist, just create it in your preferred text editor.
Add the following line to the file:

`export PS1="\u@\h:\w $ "`
