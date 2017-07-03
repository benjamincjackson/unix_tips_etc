### Performing arithmetic expansion in Bash

[See this document](http://tldp.org/LDP/abs/html/arithexp.html) for details

Different ways to evaluation arithmetic expressions:

1. Parenthesis

```sh
echo $((3 + 3))
```

2. Backticks

```sh
echo `expr 3 + 3`
```
