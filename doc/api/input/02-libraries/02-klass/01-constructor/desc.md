It is equivalent to defining any custom constructor function: it works on a freshly created object available as `this` and doesn't need to return it.

If no `$constructor` method is provided, `klass` will automatically build one, which will simply call the constructor function of the parent class, if any.

__Don't forget to call the parent class' `$constructor` method when appropriate!__
