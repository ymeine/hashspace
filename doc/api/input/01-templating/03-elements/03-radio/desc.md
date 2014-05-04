Radio buttons are of a specific kind of inputs, since they behave as a group of values where only one is selected at a time.

The relevant value is thus not anymore attached to one single input, but to a group of inputs. Each of those inputs will have a specific instance of the value, and when it gets selected, this will become the value of the group.

To handle easy binding from many static values to one value, a new attribute has been introduced, called `model`.

Put the reference of the model to bind in `model` (using an expression), and put the specific value attached to an input in `value`.

When a button gets selected, the reference in `model` is updated to the `value` of this button.

Doing it this ways also allows the engine to automatically detect and create button groups: all buttons whose bound model is the same belong to the same group.
