### Installing packages

Install packages for specific versions of Python (if you have more that one installed, which is likely) using pip in the following way:

```sh
pythonX.X -m pip install SomePackage
```

Where `X.X` is the Python version you want to install the packaged for, and `SomePackage` is the package you want to install, for example, Biopython.

#### Checking if packages exist

You can check what packages (and what version they are) are installed using pip too:

```sh
pip freeze
# or, for python3
pip3 freeze
```

### Passing command-line arguments to a Python script

The simplest way of doing it is to import sys at the beginning of your script:

```py
import sys
```

And then `sys.argv` gets you your command line arguments:

```py
print "This is the name of the script: ", sys.argv[0]
print "Number of arguments: ", len(sys.argv)
print "The arguments are: " , str(sys.argv)
```

Alternatively, you can use `argparse` ([see the docs](https://docs.python.org/3/library/argparse.html)):
 
 ```py
# Here is an example from a script I am writing to put major alleles from a vcf file into a reference sequence.
import argparse

parser = argparse.ArgumentParser(description="""replace bases in a reference sequence 
					        in fasta format with major alleles from a VCF file""")
parser.add_argument('reference_file', help='the reference file, in fasta format')
parser.add_argument('vcf_file', help='the vcf file with SNP calls in it')
args = parser.parse_args()

# arguments specified on the command line:
input_file_reference = args.reference_file
input_file_vcf = args.vcf_file
 ```
