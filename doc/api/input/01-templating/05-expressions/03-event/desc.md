This means that instead of giving a piece of JavaScript code to be executed in the global environment, you can use the standard call mechanisms, in the environment of the current module (file).

Event handlers have a particularity though: in your function call, you can pass the `event` object to your handler function. This `event` object is implicitly available in the context of your expression, but it is not automatically passed, so you need to explicitly pass it if you want to have it available in your function.
