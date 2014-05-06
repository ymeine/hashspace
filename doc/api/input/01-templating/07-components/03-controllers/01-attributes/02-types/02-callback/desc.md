Attributes of type `callback` behave like event handlers, and expect the same content as them: usually function expressions. From a user point of view, there is thus no change compared to a standard `onclick` for instance.

To trigger such an event and execute the associated handler, call the attribute like a standard function, passing the event object (for reminder: this object is accessible under the name `event` in event handlers definition). This forces to use an object as argument, with a single restriction: you can't define a property with name `type`. The latter is automatically fulfilled by the engine, with the name of the event, that is the name of the event handler minus the prefix `on`.

__Naming convention:__

Given the strong common naming convention of event handlers which is to prefix them with `on`, __all kind__ of attributes defined in a component will have name restrictions regarding that:

* if an attribute name begins with `on`: its type must be set to `callback`
* if an attribute's type is set to `callback`: its name must begin with `on`
