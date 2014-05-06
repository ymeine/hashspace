This method is automatically called when the component instance is not used anymore by any other template. This means that it will be called even if it's not actually collected by the garbage collector.

Use it to do some custom cleanup process.

__Don't forget to call the parent's `$dispose` method when appropriate!__
