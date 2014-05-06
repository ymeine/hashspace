What this utility does is very simple: it returns a constructor function with a properly set prototype.

The function `klass` expects a class definition as an object. All non-specific properties present in this object are put in a newly created prototype object, than set as the prototype of the constructor function that `klass` returns.

Specific properties on their side are various and are described in sections below.
