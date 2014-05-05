This statement is an inline statement.

As for other statements, its parameters are observed, so that a new log entry will be issued anytime one of these parameters changes.

To know more about logging, please refer to the dedicated documentation section.

The log statement relies on the available logging methods. It will forward all the given parameters, and add its own metadata with the following values:

* `type`: `"debug"`
* `file`: the file name in which the statement is used
* `dir`: the path of the directory in which the file is
* `line`: the line number in which the statement appears in the file
* `column`: the column number in which the statement appears on the line
