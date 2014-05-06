Those types are:

* `int`: the input value is converted using [`parseInt`](http://devdocs.io/javascript/global_objects/parseint), with a radix of 10
* `float`: the input value is converted using [`parseFloat`](http://devdocs.io/javascript/global_objects/parsefloat)
* `boolean`: evaluates to `true` is the input value is strictly equal to one of `true`, `1`, `'1'` or `'true'`. Is `false` otherwise
* `string`: the input value is converted using the concatenation with an empty string
* `object`: _no processing of the input value_

In all cases, the type of the final value is checked, and if it doesn't match, an error is thrown.
