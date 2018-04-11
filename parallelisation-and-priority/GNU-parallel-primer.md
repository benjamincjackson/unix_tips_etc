## GNU parallel - Introduction

If you have access to multiple threads, then parallelising a script it is easy using GNU parallel.

For example, you can just provide a file with a list of bash commands that you want to run, one on each line:

```sh
parallel -j5 :::: myCommandsFile
```

You can also pipe into `parallel`, which is useful when your command is reasonably simple:

```sh
find *.fastq.gz | parallel -j10 parse_fastq.py > fastq_info.txt
```

Or Tom's example which is one step more complicated: 

```sh
parallel -j5 "MyKewlScript {} > {}.out" ::: $(my-configs/*)
```

Breaking this down you have the program GNU `parallel` being called.

 * The `-j5` flag is the number of simultaneous jobs you want to run. It's good to limit the process to a reasonable number of jobs. You can also pass a file to the `-j` argument - changing this file will update the number of simultaneous jobs running. In this way you can update the number of parallel processes while GNU parallel is running.

 * The `MyKewlScript {} > {}.out` is the function that you want to run. The two closed curly brackets are place where the terms being passed from the list of variables at the end of the function go.

 * The three colons `:::` are important as they tell GNU parallel that you now going to give it a list of items that you want to loop over in parallel.

 * The `$(my-configs/*)` bit is the list of values you want to apply to the function. This can be anything really, as long as it is an iterable set of items, I usually test this out using a little shell script before I run a big process.
 

There are many, many, many more options and things that you can do. The idea of this little intro is to get you going with the simplest case. [Check out the GNU parallel pages for the proper manual.](https://www.gnu.org/doc/doc.html) 
 
#### Killing GNU parallel processes
If you want to kill all future instances of the stuff that you've run using GNU parallel (because you realise you've made a mistake for example, and don't want everything to run to completion), you can use `killall perl`.

You will still have to kill the currently running instances of the commands you've submitted.
 
 #### Examples
 
 *I will put some examples in later*
