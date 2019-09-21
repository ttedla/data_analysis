
# -------------------------------------------------------------------------

        # Subsetting

# -------------------------------------------------------------------------

          # Atomic vectors
x <- c(2.1, 4.2, 3.3, 5.4)
x
x[c(3, 1)]

# -------------------------------------------------------------------------


x[order(x)]

x[order(x)]

# -------------------------------------------------------------------------

x[c(1,1)]

# -------------------------------------------------------------------------

x[c(2.1, 2.9)]

# -------------------------------------------------------------------------

# Negative integers omit elements at the specified positions:

x[-c(3,1)]

# -------------------------------------------------------------------------


x[c(TRUE, TRUE, FALSE, FALSE)]

# -------------------------------------------------------------------------

x[x>3]

# -------------------------------------------------------------------------

# If the logical vector is shorter than the vector being subsetted, 
# it will be recycled to be the same length.

# -------------------------------------------------------------------------

x[c(TRUE, FALSE)]
x[]

# -------------------------------------------------------------------------

x[c(TRUE, TRUE, NA, TRUE)]

# -------------------------------------------------------------------------

x[]
x[0]

# -------------------------------------------------------------------------

(y <- setNames(x, letters[1:4]))
y
class(y)

# -------------------------------------------------------------------------

class(data.frame(lapply(y, type.convert), stringsAsFactors=FALSE))

# -------------------------------------------------------------------------

names(data.frame(as.list(y)))

# -------------------------------------------------------------------------

y
y[c("d", "a", "c")]

# -------------------------------------------------------------------------

y[c("a", "a", "a")]

# -------------------------------------------------------------------------

z <- c(abc = 1, def = 2)
z[c("a", "d")]


# -------------------------------------------------------------------------

          #Matrices and arrays

# -------------------------------------------------------------------------

a <- matrix(1:9, nrow = 3)
a
colnames(a) <- c("A", "B", "C")
a
a[c(TRUE, FALSE, TRUE), c("B", "A")]

# -------------------------------------------------------------------------

a[0, -2]
a[0,]

# -------------------------------------------------------------------------
# By default, [ will simplify the results to the lowest possible dimensionality. 

# -------------------------------------------------------------------------


(vals <- outer(1:5, 1:5, FUN = "paste", sep = ","))
class(vals)
class(vals[c(4, 15, 1)])

# -------------------------------------------------------------------------

vals <- outer(1:5, 1:5, FUN = "paste", sep = ",")
vals
select <- matrix(ncol = 2, byrow = TRUE, c(
  1, 1,
  3, 1,
  2, 4
))
select
# Each row in the matrix specifies the location of one value, where each column corresponds to a dimension in the array being subsetted. This means that you
# use a 2 column matrix to subset a matrix, a 3 column matrix to subset a 3d 
# array, and so on. The result is a vector of values:

# -------------------------------------------------------------------------

vals[select]
vals[select]
matrix(c(1,1,3,1,2,4), byrow = T, ncol = 2)
vals[matrix(c(1,1,3,1,2,4), byrow = T, ncol = 2)]


# -------------------------------------------------------------------------

        # Data frames and tibbles
# Data frames have the characteristics of both lists and matrices:

# When subsetting with a single index, they behave like lists and
# index the columns, so df[1:2] selects the first two columns.

# When subsetting with two indices, they behave like matrices, 
# so df[1:3, ] selects the first three rows (and all the columns)

# -------------------------------------------------------------------------

df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df[df$x==2,]

# -------------------------------------------------------------------------

df[c(1,3), ]

# -------------------------------------------------------------------------

# There are two ways to select columns from a data frame

# -------------------------------------------------------------------------

# like a list

# -------------------------------------------------------------------------

df[c("x", "z")]

# -------------------------------------------------------------------------

# like a matrix
df[, c("x", "z")]

# -------------------------------------------------------------------------

# when subsetting a single column matrix subsetting simplifies where as 
# list subsetting does not 

# -------------------------------------------------------------------------

class(df["x"])
class(df[, "x"])
str(df["x"])
# -------------------------------------------------------------------------

?class
?str
# Subsetting a tibble with [ always returns a tibble:
df <- tibble::tibble(x = 1:3, y = 3:1, z = letters[1:3])
df
str(df["x"])
str(df[, "x"])
