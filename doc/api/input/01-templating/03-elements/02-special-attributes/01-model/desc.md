They are elements like others, so they support expressions with observing mechanisms inside their attributes, including the `value` attribute.

However the input value is changed from a user interaction and therefore the value referenced by the expression used in the `value` should reflect this change.

This process is know as _data binding_. The binding update occurs on `keyup` events.

The engine also introduces a new attribute, called `model`. For most input types, this can be used interchangeably with `value`. However, for some of them specifically documented here, the `value` and `model` attributes have distinct, specific roles.
