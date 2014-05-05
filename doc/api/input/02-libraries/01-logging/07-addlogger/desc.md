The `handler` is a function receiving the log entry.

If the function returns a falsy value (therefore including the case where it doesn't return anything explicitly), the main logger (at engine level) will not receive this entry.
