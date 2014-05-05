A component is identified by the presence of the `using` keyword. The latter defines which class to use to build an instance of the controller, and under which name it will be referred to inside the template, like this: `using instanceReference:ClassReference`.


Syntax: `# template name using instanceReference:ClassReference`

The difference with other templates is that it doesn't declare input arguments, but rather a class to use to build controller instances, and a name to reference the latter inside the template.

When the template is instantiated, a new instance of its controller is created too and bound to the given variable name which is available in the scope of the template. When instantiating its controller, the template calls its `init` method after all its internal processing has completed.

Even though the template doesn't declare its list of input arguments, in fact it implicitly takes `a single argument` which is an object whose properties must correspond to the attributes defined in the controller's class. Note that if you instantiate the template using the subtemplate statement, this object is automatically built from the specified tag attributes.
