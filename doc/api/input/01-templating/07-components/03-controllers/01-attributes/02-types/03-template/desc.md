Attributes with type `template` expect to receive a template source as a value, therefore a string (__a reference to a template instance won't work__). The latter will be automatically compiled, and then one will be able to use the attribute to reference the generated template - as any other reference to a template.

Like any other attribute, its value can be passed using the standard ways (subtemplate attribute or `render` API).

However there are additional ways to pass this value, closer to the HTML style using the block form of the subtemplate statement.

Using this form, you can specify each template attribute's value with the special _attribute_ statement: `<@attr> ... </@attr>`.

Otherwise you can directly insert the template's content, without naming explicitly any attribute. The attribute receiving the value will be the one defined with an additional property `defaultContent` set to `true`, or if there is only one attribute defined with the type `template`, it will receive it.
