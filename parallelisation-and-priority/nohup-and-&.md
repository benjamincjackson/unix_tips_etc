## Running jobs on UNIX servers using nohup (no hangup)

If you want to run things on Merlin (or some other remotely accessed UNIX server), but you don't want those processes to die after you logout from your ssh session, for example, you can prefix your code with the argument `nohup`.

For example, if I want to run some part of a GATK pipeline that will take hours (or days (or weeks (or months))) then I definitely don't want to be logged in to Merlin for all that time - especially because if my ssh session is interrupted, whatever I was running will be killed.

So, I might run:

`nohup ./run_haplotype_caller.sh &`

Which means that whatever `./run_haplotype_caller.sh` does, it will carry on doing it after I logout from ssh.

(The "&" character at the end is to run this process in the background of your current terminal session (so you can get on with doing other things at the command prompt)).

The output that would usually be printed on the terminal gets saved to a file "nohup.out" instead, so you can check for errors, etc. there.

See [the Wikipedia article](https://en.wikipedia.org/wiki/Nohup) for details, or type `man nohup` at the terminal.
