This statement is an inline statement.

Creating a local variable means declaring its name and initializing its value, with the common syntax: `reference = value`. The statement allows creating multiple variables in a row, using the comma to separate each.

The scope of the created variable is the container block in which the statement appears. This can be one of:

* template blocks
* html block elements
* condition blocks: `{if}`, `{else if}` or `{else}`
* `{foreach}` block

`{let}` statements __MUST__ appear at the beginning of the blocks in which they are used!
