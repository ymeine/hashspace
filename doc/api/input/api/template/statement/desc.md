A template has the following properties:

* __a name__: the name of the reference to the template; works as any variable
* __formal parameters__: a list of names for formal parameters. From the template, the names are used as references to the actual parameters. From the outside, actual parameters can be given __by both position and name__, depending on how the template is instantiated! Keep this in mind when defining your template.

For reminder, a template is finally compiled by the engine and converted to a function, which returns a template instance bound to the given parameters when it gets called.
