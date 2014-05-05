They are elements like others, so they support expressions with observing mechanisms inside their attributes, including the `value` attribute.

However this value is updated from a user interaction, which means that the value will change and so should the reference used in the expression for the value.

This process is know as _data binding_. The binding update occurs on `keyup` events.

The engine also introduces a new attribute, called `model`. For most input types, this can be used interchangeably with `input`. However, for some of them specifically documented here, the `value` and `model` have specific roles.
