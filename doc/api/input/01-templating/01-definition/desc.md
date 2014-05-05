A template has the following properties:

* __a name__: the name of the local reference to the template
* __formal parameters__: a list of names for formal parameters. Inside the template, the names are used as references to the actual parameters. From the outside, actual parameters can be given __by both position and name__, depending on how the template is instantiated.

The template definition accepts an optional prefix `export`, which adds the template reference under a property of the wrapping module's `exports`: it follows the CommonJS specifications. The property gets the same name as the template.

Technically, a template is compiled by the engine and converted to a function (whose name is the template's one), which when get called returns a template instance bound to the given parameters.

NB: in addition to the input parameters and the outside references, the template body contains an additional implicit reference, named `scope`. This points to an object representing the scope of the template, which mainly means a set of references and links to parent scopes.
