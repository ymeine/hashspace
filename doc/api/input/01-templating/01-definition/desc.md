A template has the following properties:

* __a name__: the name of the local reference to the template
* __formal parameters__: a list of names for formal parameters. Inside the template, the names are used as references to the actual parameters. From the outside, actual parameters can be given __by both position and name__, depending on how the template is instantiated.

The template definition accepts an optional prefix `export`, which adds the template reference under a property of the wrapping module's `exports`: it follows the CommonJS specifications. The property gets the same name as the template.

Technically, a template is compiled by the engine and converted to a function (whose name is the template's one), which when get called returns a template instance bound to the given actual parameters. __There is also another way to instantiate templates as if they were HTML elements__, see below in this documentation.

NB: in addition to the input parameters and other local and non-local references, the template's environment contains an additional implicit reference, named `scope`. This points to an object representing the scope (aka environment) of the template, which is mainly made of a set of references and links to parent scopes.
