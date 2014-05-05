Here is how logging works:

First, attach loggers with `log.addLogger(callback)`: they will receive the log entries when they are pushed.

Then, to create and push a log entry, you can use one of the logging methods or the `{log}` statement which works the same but sets itself more contextual information.

Note that there is a specific logger built in the engine itself, which will also receive the entries that are pushed after all the other (user) loggers have processed. However if one of the latter returns `false`, this built-in will be skipped.

Here are the properties of a log entry:

* `type {String}`: The level of the log, that you can use to filter the entries. Will always be one of: `"info"`, `"error"`, `"warning"` or `"debug"`.
* `message {String}`: The message of the log.
* `id {String|Number}`: You can use it to identify your entries.
* `file {String}`: The name of the file where the entry was issued.
* `dir {String}`: The name of the directory containing the previously mentioned file.
* `code {String}`: You can use it to specify a piece of code illustrating your message.
* `line {Number}`: The line number associated to the entry; usually it corresponds to where you pushed the entry.
* `column {Number}`: The column number associated to the entry inside the previously mentioned line.
