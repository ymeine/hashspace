Input elements have special considerations by the engine.

They are elements like others, so they support expressions with binding inside their attributes, including the `value` attribute.

However this value is updated from a user interaction, hence the fact the engine treats it specifically. the binding update process occurs on a `keyup` event.

The engine also introduced a new attribute, called `model`. For most input types, this can be used interchangeably with `input`. However, for some of them specifically documented here, the `value` and `model` have specific roles.
