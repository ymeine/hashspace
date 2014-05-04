Full syntax looks like this: `<#subTemplateReference param1="param1Value param2="param2Value"/>` or `<#subTemplateReference param1="param1Value param2="param2Value"> ... </#subTemplateReference>`.

It is intended to look like a standard HTML element in use: it is an element with a name and attributes, that can be used both in inline and block forms. This means mainly two important things:

* parameters of the template (attributes) are passed by name, not by position
* it not only instantiates the template but also renders it automatically in a DOM element inserted exactly where the statement is used

There is however a little difference which makes the feature far more powerful: the statement is not expecting a simple template name, it takes a reference to it through an expression. Since this is an expression, its follows the binding rules. This means that you can change the referenced value at some point, and the parent template will get refreshed thanks to the binding, using the new subtemplate thanks to the reference.

Please note that attributes/parameters will also follow the usual binding rules.

Last but not least: you will use the block form of the statement only if you have to pass `template` attributes' values to the subtemplate. See [corresponding section](#template).
