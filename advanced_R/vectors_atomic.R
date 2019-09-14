
# -------------------------------------------------------------------------

        # Vectors 

# -------------------------------------------------------------------------

# The basic data structure in R is the vector. Vectors come in two flavours: 
#       1. atomic vectors 
#       2. lists. 
# They have three common properties:
#       Type, typeof(), what it is.
#       Length, length(), how many elements it contains.
#       Attributes, attributes(), additional arbitrary metadata.  

# -------------------------------------------------------------------------

# NB: is.vector() does not test if an object is a vector. 
# Instead it returns TRUE only if the object is a vector with no 
# attributes apart from names. 
# Use is.atomic(x) || is.list(x) to test if an object is actually a vector.

# -------------------------------------------------------------------------

          # Atomic vectors # 

# -------------------------------------------------------------------------

# Atomic vectors are usually created with c(), short for combine:

# -------------------------------------------------------------------------

dbl_var <- c(1, 2.5, 4.5)
is.vector(dbl_var)
is.atomic(dbl_var) || is.list(dbl_var)
# With the L suffix, you get an integer rather than a double
int_var <- c(1L, 6L, 10L)
# Use TRUE and FALSE (or T and F) to create logical vectors
log_var <- c(TRUE, FALSE, T, F)
log_var
chr_var <- c("these are", "some strings")
chr_var

# -------------------------------------------------------------------------

# Atomic vectors are always flat, even if you nest c()’s:
  
c(1, c(2, c(3, 4)))
#> [1] 1 2 3 4
# the same as
c(1, 2, 3, 4)
#> [1] 1 2 3 4
  
c(1, c(2, c(3, 4))) == c(1, 2, 3, 4)

# -------------------------------------------------------------------------

                    # Types and tests

# -------------------------------------------------------------------------

int_var <- c(1L, 6L, 10L)

typeof(int_var)

is.integer(int_var)

is.atomic(int_var)


# -------------------------------------------------------------------------
dbl_var <- c(1, 2.5, 4.5)

typeof(dbl_var)

is.double(dbl_var)

is.atomic(dbl_var)

# -------------------------------------------------------------------------


