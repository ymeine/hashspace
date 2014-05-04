Radio buttons are special since they behave as a group of values where only one is selected at a time.

Indeed, a radio button alone holds both a selected state and a value.

A group of radio buttons on its hand will have a single value, corresponding to its currently selected one. But they all aim at setting the __same property of the same model__.

That's why we introduced an additional attribute, called `model`, which will contain the expression referencing the property of the model to bind. This property will receive the value specified in the attribute `value` of the currently selected radio button.

Since a group of radio buttons is naturally identified by the fact that they all reference the same property of the model, groups will automatically be built regarding the value of the `model` attribute.
