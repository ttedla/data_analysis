
# -------------------------------------------------------------------------

            # Infix functions

# -------------------------------------------------------------------------

# R comes with a number of built-in infix operators: 
# :, ::, :::, $, @, ^, *, /, +, -, >, >=, <, <=, ==, !=, !, 
# &, &&, |, ||, ~, <-, and <<-. You can also create your own infix 
# functions that start and end with %. 
#Base R uses this pattern to define %%, %*%, %/%, %in%, %o%, and %x%.

# -------------------------------------------------------------------------

# You create a two argument function and bind it to a name that starts and 
# ends with %:

# -------------------------------------------------------------------------

`%+%` <- function(a,b) paste0(a,b)

"new " %+% "string"

# -------------------------------------------------------------------------

# The names of infix functions are more flexible than regular R functions: 
# they can contain any sequence of characters except for %. 
# You will need to escape any special characters in the string used to 
# define the function, but not when you call it:

# -------------------------------------------------------------------------

`% %` <- function(a,b) paste(a,b)
"new" % % "string"

# -------------------------------------------------------------------------

`%/\\%` <- function(a,b) paste(a,b)
"a"%/\% "b"

# -------------------------------------------------------------------------

# R’s default precedence rules mean that infix operators 
# are composed left to right:

# -------------------------------------------------------------------------

`%-%` <- function(a,b) paste0("(", a, " %-%", "b", ")")
"a" %-% "b" %-% "c"

# -------------------------------------------------------------------------
