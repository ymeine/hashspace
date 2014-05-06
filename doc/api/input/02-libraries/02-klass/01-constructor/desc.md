It is equivalent to defining any custom constructor function: it works on a freshly created object as `this` and doesn't need to return it.

If no `$constructor` method is provided, `klass` will automatically build one, which will simply calls the constructor function of the parent class, if any.

