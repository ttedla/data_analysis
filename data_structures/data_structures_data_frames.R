
# -------------------------------------------------------------------------

          # Managing Data Frames #

# -------------------------------------------------------------------------

          # Creating Data Frames #

# -------------------------------------------------------------------------

# data frames can be created explicitly with the data.frame()
# function or they can be coerced from other types of objects like lists.

# -------------------------------------------------------------------------

df <- data.frame (col1 = 1:3, 
                  col2= c('This', 'is', 'text'), 
                  col3= c(TRUE, FALSE, TRUE), 
                  col4= c(2.5, 4.2, pi))
str(df)

# -------------------------------------------------------------------------

# number of rows
nrow(df)

# -------------------------------------------------------------------------

# number of columns
ncol(df)

# -------------------------------------------------------------------------

# Note how col2 in df was converted to a column of factors . This is because
# there is a default setting in data.frame () that converts character columns to
# factors . We can turn this off by setting the stringsAsFactors = FALSE
# argument :

# -------------------------------------------------------------------------
df <- data.frame (col1 = 1:3, 
                  col2= c('This', 'is', 'text'), 
                  col3= c(TRUE, FALSE, TRUE), 
                  col4= c(2.5, 4.2, pi), stringsAsFactors = FALSE)
str(df)

# -------------------------------------------------------------------------

# We can also convert pre-existing structures to a data frame . 
# The following illustrates how we can turn multiple vectors , 
# a list , or a matrix into a data frame :

# -------------------------------------------------------------------------

v1 <- 1:3
v2 <- c('This', 'is', 'text')
v3 <- c(TRUE, FALSE, TRUE)

# -------------------------------------------------------------------------

# convert same length vectors to a data frame using data.frame ()
data.frame(col1=v1, col2=v2, col3=v3)

# -------------------------------------------------------------------------

#  convert a list to a data frame using as. data.frame ()
l <- list (item1 = 1:3,
           item2 = c ("this", "is", "text"),
           item3 = c (2.5, 4.2, 5.1))
l

# -------------------------------------------------------------------------

as.data.frame(l)

# -------------------------------------------------------------------------

# convert a matrix to a data frame using as. data.frame ()
m1 <- matrix (1:12, nrow = 4, ncol = 3)
m1
as.data.frame(m1)

# -------------------------------------------------------------------------

                  # Adding On To Data Frames #

# -------------------------------------------------------------------------

# We can leverage the cbind () function for adding columns to a data frame. 
# Note that one of the objects being combined must already be a data frame
# otherwise cbind() could produce a matrix .

# -------------------------------------------------------------------------

df

# -------------------------------------------------------------------------

# add a new column
v4 <- c ("A", "B", "C")

# -------------------------------------------------------------------------

cbind(df, v4)

# -------------------------------------------------------------------------

        # Using rbind 
df2 <- rbind (df, c (4, "R", F, 1.1))
str(df2)

# -------------------------------------------------------------------------

adding_df <- data.frame (col1 = 4,
                         col2 = "R",
                         col3 = FALSE,
                         col4 = 1.1,
                         stringsAsFactors = FALSE)
df3 <- rbind (df, adding_df)
df3
str(df3)

# -------------------------------------------------------------------------

          # Adding Attributes to Data Frames #

# -------------------------------------------------------------------------
# basic data frame
df

# -------------------------------------------------------------------------

dim(df)

# -------------------------------------------------------------------------

attributes(df)

# -------------------------------------------------------------------------

# add rownames
rownames(df) <- c('row-1', 'row-2', 'row-3')
df

# -------------------------------------------------------------------------

attributes(df)

# -------------------------------------------------------------------------

# We can also change the existing column names by using colnames() or names() :

# add/change column names with colnames()
colnames (df) <- c ("col_1", "col_2", "col_3", "col_4")
df

# -------------------------------------------------------------------------

# add/change column names with names()
names (df) <- c ("col.1", "col.2", "col.3", "col.4")
df

# -------------------------------------------------------------------------

# adding a comment attribute
comment (df) <- "adding a comment to a data frame"
attributes(df)

# -------------------------------------------------------------------------

            # Subsetting Data Frames # 

# -------------------------------------------------------------------------

# Data frames possess the characteristics of both lists and matrices: 
# if you subset with a single vector , they behave like lists and will
# return the selected columns with all rows; if you subset with two vectors, 
# they behave like matrices and can be subset by row and column:

# -------------------------------------------------------------------------

df

# -------------------------------------------------------------------------

# subsetting by row numbers
df[2:3, ]

# -------------------------------------------------------------------------

# subsetting by row names
df[ c ("row-2", "row-3"), ]

# -------------------------------------------------------------------------

# subsetting columns like a list
df[ c ("col.2", "col.4")]

# -------------------------------------------------------------------------

# subsetting columns like a matrix
df[ , c ("col.2", "col.4")]

# -------------------------------------------------------------------------

# subset for both rows and columns
df[1:2, c (1, 3)]

# -------------------------------------------------------------------------

# use a vector to subset
v <- c (1, 2, 4)
df[ , v]

# -------------------------------------------------------------------------

# Note that subsetting data frames with the [ operator will simplify the results to
# the lowest possible dimension . To avoid this you can introduce the drop = FALSE
# argument :

# simplifying results in a named vector
df
df[, 2]

# -------------------------------------------------------------------------

# preserving results in a 3x1 data frame
df[, 2, drop = FALSE]

# -------------------------------------------------------------------------


