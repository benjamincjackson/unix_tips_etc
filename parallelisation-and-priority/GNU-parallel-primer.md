## GNU parallel - Introduction

If you have what's called an "embarrassingly parallel" problem, i.e. a problem that is perfect for parallelisation, GNU parallel makes it really easy to farm a batch of processes out to multiple threads.

Say you had a directory called `my-configs/` in which there were 100 config files for a program, you could run them in a loop using a shel script like so:

```sh
for i in my-configs/*
  do
    MyKewlScript $i > $i.out
  done
```

This would run the program `MyKewlScript` on each of the files in `my-configs` one after the other and store the std-out for each process in a new file suffixed with *.out*.

It is annoying to have to wait for this kind of thing, so if you have access to multiple threads, then parallelising it is easy using GNU parallel, like so:

```sh
parallel -j5 "MyKewlScript {} > {}.out" ::: $(my-configs/*)
```

Breaking this down you have the program GNU `parallel` being called.

 * The `-j5` flag is the number of simultaneous jobs you want to run. It's good to limit the process to a reasonable number of jobs.

 * The `MyKewlScript {} > {}.out` is the function that you want to run. The two closed curly brackets are place where the terms being passed from the list of variables at the end of the function go.

 * The three colons `:::` are important as they tell GNU parallel that you now going to give it a list of items that you want to loop over in parallel.

 * The `$(my-configs/*)` bit is the list of values you want to apply to the function. This can be anything really, as long as it is an iterable set of items, I usually test this out using a little shell script before I run a big process.
 

There are many, many, many more options and things that you can do. The idea of this little intro is to get you going with the simplest case. [Check out the GNU parallel pages for the proper manual.](https://www.gnu.org/doc/doc.html) 
 
 
 #### Examples
 
 *I will put some examples in later*
