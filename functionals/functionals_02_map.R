
# -------------------------------------------------------------------------


library(purrr)

# -------------------------------------------------------------------------

    # The most fundamental functional is purrr::map() 
    # It takes a vector and a function, calls the function 
    # once for each element of the vector, and returns the results in a list. 
    # In other words, map(1:3, f) is equivalent to list(f(1), f(2), f(3)).

# -------------------------------------------------------------------------

tripple <- function(x) x*3
map(1:3, tripple)

# -------------------------------------------------------------------------


