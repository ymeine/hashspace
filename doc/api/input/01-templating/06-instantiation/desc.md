__Syntax__:

Full syntax looks like this: `<#subTemplateReference param1="param1Value param2="param2Value"/>` or `<#subTemplateReference param1="param1Value param2="param2Value"> ... </#subTemplateReference>`.

It is intended to look like a standard HTML element in use: it is an element with a name and attributes, and that can be used both in inline and block forms.

__Behavior__:

The above means mainly two important things:

* parameters of the template (equivalent of element attributes) are __passed by name__, not by position
* it not only instantiates the template but also renders it automatically in a DOM element inserted exactly where the statement is used

There is also an additional subtlety regarding the passing of the parameters. As said, they are passed by name, so if you use `<tplref arg1="..." />` for a template defined like this `# template(whatever, arg1)`, `arg1` will be properly passed, wherever it is defined in the parameters list. However the actual subtlety resides in the __first__ parameter of the function: if it doesn't match any attribute name, it is not left `undefined` as one could think. Instead, it refers to an object built from the attribute/value pairs. In our little example, `whatever` would refer to an object like this: `{arg1: "..."}`. This implicit object plays an important role in components instantiation (components are discussed later in this documentation).

__Template reference__:

Note also that the statement is not expecting a simple template name, it takes a reference to it. The syntax limits it to be a simple reference access (which means that it can't be returned by a function call, that the ternary operator can't be used, etc.)

__Refreshing__:

In addition to the template reference, all expressions part of the statement also follow the usual observing/refresh process.

__Block form__:

The block form of the statement is useful only if you have to pass `template` attributes' values to the subtemplate. This is discussed in section about components.
