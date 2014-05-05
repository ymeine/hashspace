We'll consider two parts in this kind of expression: the __left expression__, before the colon, and the __right expression__ which lays after. Note that they are not surrounded by braces in this case, only the global one is.

Those parts can be any simple expressions, which means not compound nor conditional ones.

The right one determines whether the result of the left one should be output or not: yes if the right part is truthy, no otherwise.
