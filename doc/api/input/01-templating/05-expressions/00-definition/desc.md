Expressions contain code which, once evaluated, returns an output value.

What is done with the output value depends on the context where the expression appears.

Specificities for the different types of expressions are explained in dedicated sections. The description below applied to all expressions.

If an expression appears in a context where its output value is used, the engine parses it to detect as most as possible which are the external elements which would make this output value change. Those external elements are then observed, and once one changes, the expression is evaluated again to get the possibly new value.

This process is known as _observing_.
