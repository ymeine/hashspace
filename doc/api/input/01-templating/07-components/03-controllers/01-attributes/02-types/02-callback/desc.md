Attributes of type `callback` behave like event handlers, and expect the same content as them: usually function expressions. From a user point of view, there is thus no change compared to a standard `onclick` handler for instance.

To trigger such an event and execute the associated handler, call the attribute like a standard function, optionally passing the event object (for reminder: this is the same object which is then accessible under the name `event` in event handlers attributes).

In the end, the engine ensures that an event object with a property `type` is sent:

* if no argument is specified, the object is simply created, with this property
* if the first argument is specified, it must:
	* explicitly be an object
	* not define a property named `type`, to avoid accidental overriding

This `type` property is then filled with the name of the event, that is the name of the event handler minus the prefix `on`.

__Naming convention:__

Given the strong common naming convention of event handlers which is to prefix them with `on`, __all kind__ of attributes defined in a component will have name restrictions regarding that:

* if an attribute name begins with `on`: its type must be set to `callback`
* if an attribute's type is set to `callback`: its name must begin with `on`
