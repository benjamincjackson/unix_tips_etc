## Installing a jdk using homebrew

Find options to install:

```sh
❯ brew search openjdk
==> Formulae
openjdk                openjdk@11 ✔           openjdk@17             openjdk@21             openjdk@8              openj9                 openjph                openvdb

==> Casks
adoptopenjdk               microsoft-openjdk          microsoft-openjdk@11       microsoft-openjdk@17       microsoft-openjdk@21       microsoft-openjdk@25       openttd
```

And install one of them (at the end of installation, brew gives you some options to set up your machine):

```sh
❯ brew install openjdk@11
...
==> openjdk@11
For the system Java wrappers to find this JDK, symlink it with
  sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

openjdk@11 is keg-only, which means it was not symlinked into /opt/homebrew,
because this is an alternate version of another formula.

If you need to have openjdk@11 first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc

For compilers to find openjdk@11 you may need to set:
  export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"
```

You can potentially ignore these, and just...

## Use jenv to manage java runtimes

"[jenv](https://www.jenv.be/) is a command line tool to help you forget how to set the JAVA_HOME environment variable"

e.g. 

```sh
# no java runtime located...
❯ java -version
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.
# potentially because $JAVA_HOME is empty
❯ echo $JAVA_HOME

# after following the installation instructions at www.jenv.be, you can:
# add the jdk you've just brew install-ed:
❯ jenv add /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
# list available jdks:
❯ jenv versions
* system (set by /Users/bj5504/.jenv/version)
  11
  11.0
  11.0.29
  openjdk64-11.0.29
# set one of them (globally, in this case):
❯ jenv global openjdk64-11.0.29
# which sets $JAVA_HOME:
❯ echo $JAVA_HOME
/Users/bj5504/.jenv/versions/openjdk64-11.0.29
# and means that this works now:
❯ java -version
openjdk version "11.0.29" 2025-10-21
OpenJDK Runtime Environment Homebrew (build 11.0.29+0)
OpenJDK 64-Bit Server VM Homebrew (build 11.0.29+0, mixed mode)

```
