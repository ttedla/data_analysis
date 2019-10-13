
# -------------------------------------------------------------------------

        # E.g 3 Matrix operations 

# -------------------------------------------------------------------------

# Matrix operations are also vectorized, making for nicly compact notation. 
# This way, we can do element-by-element operations on matrices without 
# having to loop over every element.

# -------------------------------------------------------------------------

x <- matrix(1:4, 2, 2)
y <- matrix(rep(10, 4), 2, 2)

# -------------------------------------------------------------------------

x
y
## element-wise multiplication
x*y

# -------------------------------------------------------------------------
## element-wise division
x/y

## true matrix multiplication
x %*% y
