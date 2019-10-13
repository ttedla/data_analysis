
# -------------------------------------------------------------------------

         # Invoking a function

# -------------------------------------------------------------------------

mean(1:10, na.rm = T)

# -------------------------------------------------------------------------

args <- list(1:10, na.rm = TRUE)
args

#The function to call, and a list containing the function arguments:

do.call("mean", args)
?do.call
