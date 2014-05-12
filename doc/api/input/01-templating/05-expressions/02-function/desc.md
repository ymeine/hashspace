Function expressions are useful for event handlers, but they can also be used to fetch any content: the return value of the function will be used as the output value of the expression.

The parameters of the function are observed (if applicable) to enable _refreshing_ the expression.

Note that the syntax doesn't allow you to directly access a property of the returned object, so you can't write something like this: `{cb().prop}`
