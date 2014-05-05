Full syntax looks like this: `<#subTemplateReference param1="param1Value param2="param2Value"/>` or `<#subTemplateReference param1="param1Value param2="param2Value"> ... </#subTemplateReference>`.

It is intended to look like a standard HTML element in use: it is an element with a name and attributes, and that can be used both in inline and block forms. This means mainly two important things:

* parameters of the template (attributes) are __passed by name__, not by position
* it not only instantiates the template but also renders it automatically in a DOM element inserted exactly where the statement is used

Note also that the statement is not expecting a simple template name, it takes a reference to it. The syntax limits it to be a simple reference access (which means that the reference can't be returned by a function call, that the ternary operator can't be used, etc.)

In addition to the template reference, all expressions part of the statement also follow the usual observing/refresh process.

The block form of the statement is useful only if you have to pass `template` attributes' values to the subtemplate. This is discussed in section about components.
