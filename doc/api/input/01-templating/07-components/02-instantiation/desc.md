The following rules mentioned for template instantiation also apply to components:

* the statement expects a reference to the component
* it can be used in both inline and block forms
* the attributes of the statement are used to build an object with properties matching their names

With components, the difference is that the object built from the statement's attributes is simply passed to the component. What it does then has already been describe in section about components definition.

__The block form__:

The block form of template instantiations is actually useful for components. The content inside the block is used to fulfill some of the attributes of the controller.

This content can have 2 forms, which cannot be mixed:

* a classical template content, with text, elements, statements, etc.
* a set of sub-attribute elements, each containing template content (as for previous point)

Due to the fact that the content is actually template content, the only attributes that it can define are those defined in the controller with type `template`. See below for more information on the different types of attribute, including `template`.

In the second form, sub-attribute elements specify the name of the attribute they define, with the following syntax: `<@attrName> ... </@attrname>`.

In the first form, no name is specified, so it will target either the first attribute defined with type `template`, or the first one defined with a property called `defaultContent` set to `true`.
