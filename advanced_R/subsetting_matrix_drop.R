
# -------------------------------------------------------------------------

# By default, subsetting a matrix or data frame with a single number, 
# a single name, or a logical vector containing a single TRUE, will 
# simplify the returned output, i.e. it will return an object with lower 
# dimensionality. To preserve the original dimensionality, you must use 
# drop = FALSE.

# -------------------------------------------------------------------------
#For matrices and arrays, any dimensions with length 1 will be dropped:

a <- matrix(1:4, nrow = 2)
a
str(a[1,])

str(a[1, , drop = FALSE])


# -------------------------------------------------------------------------

# Data frames with a single column will return just that column:

df <- data.frame(a = 1:2, b = 1:2)
df
str(df[, "a"])
str(df[, "a", drop = FALSE])

# -------------------------------------------------------------------------

# Factor subsetting also has a drop argument, but its meaning is rather 
# different. It controls whether or not levels (rather than dimensions) 
# are preserved, and it defaults to FALSE. If you find you’re using drop = TRUE
# a lot it’s often a sign that you should be using a character vector instead 
# of a factor.

# -------------------------------------------------------------------------

z <- factor(c("a", "b"))
z
z[1]
class(z)
str(z)
z[1, drop = TRUE]

# -------------------------------------------------------------------------

diag(x)
diag2_func <- function(x){
  n <- min(nrow(x), ncol(x))
  idx <- cbind(seq_len(n), seq_len(n))
  x[idx]
}

# -------------------------------------------------------------------------
diag(x)
diag2_func(x)
cbind(seq_len(5), seq_len(5))
x[5,5]
