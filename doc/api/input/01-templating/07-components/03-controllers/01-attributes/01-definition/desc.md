In the _klass_ definition of the controller, a specific property called `attributes` is used to define the attributes of the controller/component.

It expects a map of attribute names with their definitions: the key of the object is the attribute name and the value its definition.

Here are the properties used to defined a single attribute:

* `type`: defines the type of the property. Input values will be converted to that type or validated to conform to it. Specific types are discussed in sections below.
* `defaultValue`: used as the attribute value if its input value is __strictly__ `undefined`
* `binding`: can be set to `"none"` (default), `"1-way"` or `"2-way"`. See below for more information on binding.
* `defaultContent`: specific for attributes of type `template`, lease see corresponding section for more information

__Binding:__

1 way = out (template) -> in (controller), 2 way = the other way too
