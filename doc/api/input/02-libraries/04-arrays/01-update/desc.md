The following standard methods of Array's prototype have been overridden for this purpose: `splice`, `push`, `pop`, `shift`, `unshift`, `reverse`, `sort`.

In addition to those methods, one more has been added: `splice2`, see corresponding section for more information.

This means that listeners added on the array will be notified about the changes made using these functions. This makes them compatible with the automatic refresh mechanism of templates.
