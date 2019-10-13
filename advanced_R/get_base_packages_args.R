
# -------------------------------------------------------------------------

objs <- mget(ls("package:base", all = TRUE), inherits = TRUE)
Funs <- Filter(is.function, objs)

# -------------------------------------------------------------------------

# To find the function with the most arguments, we first compute the length of formals()
library(purrr)

n_args <- Funs %>%
  map(formals) %>%
  map_int(length)

table(n_args)

# -------------------------------------------------------------------------

names(n_args)[n_args == 22]

# -------------------------------------------------------------------------

sum(n_args == 0) # this is an overcount 

# -------------------------------------------------------------------------

n_args2 <- Funs %>%
  discard(is.primitive) %>%
  map(formals) %>%
  map_int(length)

sum(n_args2==0)

# -------------------------------------------------------------------------

