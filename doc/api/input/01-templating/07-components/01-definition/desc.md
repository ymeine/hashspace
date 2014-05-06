__Definition__:

A template is considered as a component as soon as it uses the `using` keyword. The latter defines which class to use to build an instance of the controller, and under which name it will be referred to inside the template.

Controllers are just a specific kind of class whose features are focused on interaction with templates. More information on what controller really are and how they work are available in a dedicated section in this documentation.

__Syntax__:

Having a controller changes a little how the template interface works.

First, the input parameters passed to the template are directly intended to be used to, and only to, instantiate the controller and more specifically initialize its attributes.

For that, the component actually expects one single argument, which is an object whose properties' names must match the name of the attributes defined in the controller. That's why the component syntax doesn't allow defining any input parameter list.

__Behavior: __

When the template is instantiated, a new instance of its controller is created too and bound to the given variable name, which is then available in the scope of the template. When instantiating its controller, the template calls its `$init` method after all its internal processing has finished.

Instantiating a component is done like instantiating a template:

* directly using the API by calling the generated function: don't forget that the only argument is a single object whose properties match the controller's attributes
* using a special statement when used inside another template: this has already been discussed in the section about templates, but __below is another section explaining the differences there are with components__
