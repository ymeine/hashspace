You can define input elements as you would do in pure HTML.

As for other elements inside a template, inputs support expressions for all their attributes, and thus binding.

The interesting thing is that if such an expression is used to define the `value` attribute of the input, this value will be synchronized with the data model (classical binding).

This synchronization is done one the `keyup` event.

The attribute `model` can be used instead of `value`. This has been introduced to enhance the capability of some specific inputs (for details, see sections below).
