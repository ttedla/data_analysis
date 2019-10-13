
# -------------------------------------------------------------------------

        # vectorized operations

# -------------------------------------------------------------------------

    # Many operations in R are vectorized, meaning that operations occur in 
    # parallel in certain R objects. This allows you to write code that is 
    # efficient, concise, and easier to read than in non-vectorized languages.

# -------------------------------------------------------------------------

  # E.g -01 The simplest example is when adding two vectors together.
x <- 1:4
y <- 6:9
z = x+y
z

# -------------------------------------------------------------------------

      # Without vectorization, we’d have to do something like
z <- vector("numeric", length(x))
for(i in seq_along(x)){
  z[i] <- x[i] + y[i]
}
z

# -------------------------------------------------------------------------




