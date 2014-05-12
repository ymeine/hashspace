The following standard methods of Array's prototype have been overridden for this purpose: [`splice`](http://devdocs.io/javascript/global_objects/array/splice), [`push`](http://devdocs.io/javascript/global_objects/array/push), [`pop`](http://devdocs.io/javascript/global_objects/array/pop), [`shift`](http://devdocs.io/javascript/global_objects/array/shift), [`unshift`](http://devdocs.io/javascript/global_objects/array/unshift), [`reverse`](http://devdocs.io/javascript/global_objects/array/reverse), [`sort`](http://devdocs.io/javascript/global_objects/array/sort).

In addition to those methods, one more has been added: `splice2`, see corresponding section for more information.

This means that listeners added on the array will be notified about the inplace changes made using these functions. This makes them compatible with the automatic refresh mechanism of templates.
