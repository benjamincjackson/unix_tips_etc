### To add command-line arguments along with helper descriptions to Python scripts:

At the beginning of your python script:

```py
import argparse
parser = argparse.ArgumentParser(description="This is my description of what the script does/is for")
parser.add_argument('argument1', help='the first argument specified on the command line')
parser.add_argument('argument2', help='the second argument specified on the command line')
args = parser.parse_args()
```

Then you can run something like this at the command line:

```sh
# To get the help contents:
python myscript.py -h

# to run it:
python myscript.py argument1 argument2
```
