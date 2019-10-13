
# -------------------------------------------------------------------------

                # Functionals # 

# -------------------------------------------------------------------------

        # A functional is a function that takes a function as an input 
        # and returns a vector as output.

# -------------------------------------------------------------------------

# Here’s a simple functional: it calls the function provided as 
# input with 1000 random uniform numbers.

randomise <- function(f) f(runif(1e3))
randomise(mean)

randomise(mean)

randomise(sum)


# -------------------------------------------------------------------------


