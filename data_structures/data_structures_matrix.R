
# -------------------------------------------------------------------------

          # Managing Matrices #

# -------------------------------------------------------------------------

          # Creating Matrices #

# -------------------------------------------------------------------------

# We can create a matrix using the matrix() function and specifying
# the values to fi ll in the matrix and the number of rows and columns
# to make the matrix.

# -------------------------------------------------------------------------

        # numeric matrix  #

# -------------------------------------------------------------------------

m1 <- matrix (1:6, nrow = 2, ncol = 3)

# -------------------------------------------------------------------------

str(m1)

# -------------------------------------------------------------------------

attributes(m1)

# -------------------------------------------------------------------------

# a character matrix

# -------------------------------------------------------------------------

m2 <- matrix (letters[1:6], nrow = 2, ncol = 3)

# -------------------------------------------------------------------------

m2

# -------------------------------------------------------------------------

str(m2)

# -------------------------------------------------------------------------

attributes(m2)

# -------------------------------------------------------------------------

# Matrices can also be created using the column-bind cbind() and row-bind
# rbind() functions. However, keep in mind that the vectors that are being binded
# must be of equal length and mode.

# -------------------------------------------------------------------------

v1 <- 1:4
v2 <- 5:8

# -------------------------------------------------------------------------

cbind(v1,v2)

# -------------------------------------------------------------------------

rbind(v1,v2)

# -------------------------------------------------------------------------

v3 <- 9:12

# bind several vectors together

# -------------------------------------------------------------------------
cbind(v1,v2,v3)

# -------------------------------------------------------------------------

rbind(v1,v2,v3)

# -------------------------------------------------------------------------

          # Adding On To Matrices # 

# -------------------------------------------------------------------------

# We can leverage the cbind() and rbind() functions for adding onto matrices
# as well. Again, its important to keep in mind that the vectors that are being
# binded must be of equal length and mode to the pre-existing matrix .

# -------------------------------------------------------------------------

m1 <- cbind(v1,v2)
m1

# -------------------------------------------------------------------------

# add a new column
cbind(m1, v3)

# -------------------------------------------------------------------------

# add a new row
rbind(m1, c(4.1, 8.1))

# -------------------------------------------------------------------------

          # Adding Attributes to Matrices #

# -------------------------------------------------------------------------

# basic matrix
m2 <- matrix (1:12, nrow = 4, ncol = 3)
m2

# -------------------------------------------------------------------------

# the dimension attribute shows this matrix has 4 rows and 3 columns
attributes(m2)

# -------------------------------------------------------------------------

# add row names as an attribute
rownames(m2) <- c("row1", "row2", "row3", "row4")
m2

# -------------------------------------------------------------------------

# attributes displayed will now show the dimension, list the row names
# and will show the column names as NULL
attributes(m2)

# -------------------------------------------------------------------------

# add column names
colnames(m2) <- c("col1", "col2", "col3")
m2

# -------------------------------------------------------------------------

attributes(m2)

# -------------------------------------------------------------------------

# Another option is to use the dimnames() function. To add row names you
# assign the names to dimnames (m2)[[1]] and to add column names you assign
# the names to dimnames(m2)[[2]] .

# -------------------------------------------------------------------------

dimnames(m2)[[1]] <- c('row-1', 'row-2', 'row-3', 'row-4')
attributes(m2)
m2

dimnames(m2)[[2]] <- c('col-1', 'col-2', 'col-3')
m2

# -------------------------------------------------------------------------

# Similar to lists and vectors you can add a comment attribute to a list.

# -------------------------------------------------------------------------

comment(m2) <- "adding a comment to a matrix"
attributes(m2)

# -------------------------------------------------------------------------

          # Subsetting Matrices #

# -------------------------------------------------------------------------

        # To subset a matrix we use matrix [rows, columns] # 

# -------------------------------------------------------------------------

m2

# -------------------------------------------------------------------------

# subset for rows 1 and 2 but keep all columns
m2[1:2, ]

# -------------------------------------------------------------------------

# subset for columns 1 and 3 but keep all rows
m2[, c(1,3)]

# -------------------------------------------------------------------------

# subset rows 1 and 2 and columns 1 and 3
m2[1:2, c(1,3)]

# -------------------------------------------------------------------------

# use a vector to subset
v <- c (1, 2, 4)
m2[v, c(1,3)]

# -------------------------------------------------------------------------

# use names to subset row-1 and row-3 and all cols
m2[c("row-1", "row-3"), ]


# -------------------------------------------------------------------------

# Note that subsetting matrices with the [ operator will simplify the
# results to the lowest possible dimension. To avoid this you can 
# introduce the drop = FALSE argument :

# -------------------------------------------------------------------------

# simplifying results in a named vector
m2[,2]

# -------------------------------------------------------------------------

# preserving results in a 4x1 matrix
m2[,2, drop=FALSE]

# -------------------------------------------------------------------------


