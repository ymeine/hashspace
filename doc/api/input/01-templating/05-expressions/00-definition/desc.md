Expressions contain code which, once evaluated, returns an output value.

What is done with the output value depends on the context of the use of the expression.

Specificities for the different types of expression are explained in dedicated sections. The description below applies to all expressions.

If an expression appears in a context where its output value is used, the engine parses it to detect as most as possible which are the external elements which would make this output value change. Those external elements are then observed, and once one changes the expression is evaluated again to get the possibly new value.

This makes possible for entities using expressions to be refreshed when associated values change.

For now, object properties and function input parameters are both observed (this definition is recursive).
