Creates and pushes a log entry.

It takes two types of arguments:

* A variable list of any kind of object: each will be converted to a string and then they will all be concatenated using a single white space. Finally, this will be used as the value for the `message` property of the entry.
* An optional set of metadata that mainly matches the properties of the created entry (see below).

The last argument will be interpreted as the metadata only if:

1. it is not the first argument and
1. it is an object,
1. which contains a property `type`,
1. whose value exactly corresponds to one of those we can find in entries' `type` property

Here are the properties of the metadata object and how they are used to build the log entry:

* `type`: `{String|Number}`

  Will set the `type` of the entry, and by definition will always be one of the accepted types.

* `id`:

  sets the `id` property of the entry.

* `file`:

  sets the `file` property of the entry.

* `dir`:

  sets the `dir` property of the entry.

* `code`:

  sets the `code` property of the entry.

* `line`:

  sets the `line` property of the entry.

* `column`:

  sets the `column` property of the entry.
