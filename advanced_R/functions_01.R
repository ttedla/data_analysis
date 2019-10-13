
# -------------------------------------------------------------------------

                  # Functions

# -------------------------------------------------------------------------

# A function has three parts:
#   
#   The formals(), the list of arguments that control how you call 
#   the function.
# 
#   The body(), the code inside the function.
# 
#   The environment(), the data structure that 
#   determines how the function finds the values associated with the names

# -------------------------------------------------------------------------

f02 <- function(x,y) {
  # A comment
  x+y
}

# -------------------------------------------------------------------------

formals(f02)
# The list of arguments 

body(f02)

environment(f02)

# -------------------------------------------------------------------------

attr(f02, "srcref")

# -------------------------------------------------------------------------


