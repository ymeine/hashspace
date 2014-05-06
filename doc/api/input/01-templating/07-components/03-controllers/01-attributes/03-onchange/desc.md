When a property's value changes, __and if the property is bound in at least one way__, the engine automatically calls - if defined - a method of the controller whose name is built from the name of the property:

* the name of the property is taken and its first letter is upper cased, the rest is left untouched
* the function must then be called like this: `"on" + transformedName "Change"`

Now, let's talk quickly about what is a property change. A property's value is said to have changed when the reference associated to the property has changed, nothing more. That means that all inplace transformations are not taken into account, since the property will still refer to the same object.

__Important note__: any property change occurring in a change handler doesn't trigger any change event. That means that no change handler for any property will be called. This is done to prevent a possible automatic infinite recursive call to the current change handler.
