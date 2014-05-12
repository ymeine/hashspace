In the _klass_ definition of the controller, a specific property called `attributes` is used to define the attributes of the controller/component.

It expects a map of attribute names (the keys) with their definitions (the values).

Here are the properties used to define a single attribute:

* `type`: defines the type of the property. Input values will be converted to that type or validated to conform to it. Specific types are discussed in sections below.
* `defaultValue`: used as the attribute value if its input value is __strictly__ `undefined`
* `binding`: can be set to `"none"` (default), `"1-way"` or `"2-way"`. See below for more information about binding.
* `defaultContent`: specific for attributes of type `template`, please see corresponding section for more information

__Binding:__

_Binding_ means linking two references, so that they point to the same value when one is changed. More concretely in this context it means:

* updating the value of the attribute in the component if something outside bound to it changes: this is the _1-way_ binding
* updating the value of anything outside bound to the attribute when the latter is directly changed: this is the counterpart of the _1-way_ (no option for that)
* doing both: this is the _2-way_ binding
* doing none: this is the _none_ option
