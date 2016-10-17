# Class file counter

To print the number of `.class` or `.groovy` files in a given directory, `.jar` file, or `.war` file to standard output:

```
classcounter.sh <absolute-path>
```

The number printed includes `.class` and `.groovy` files in nested `.jar` and `.war` files (recursively).

The names of nested `.jar` and `.war` files are printed to standard error.

## Pre-requisites

* The `jar` utility (available in most JDKs)
* The `basename` command (available in most UNIXes)
