
# -------------------------------------------------------------------------

                  # Attributes #

# -------------------------------------------------------------------------

vector <- 1:10
list <- list (item1 = 1:10, item2 = LETTERS[1:18])
matrix <- matrix (1:12, nrow = 4)
df <- data.frame (item1 = 1:18, item2 = LETTERS[1:18])

# -------------------------------------------------------------------------
# R objects can have attributes , which are like metadata for the object. 
# These metadata can be very useful in that they help to describe the object. 
# For example, column names on a data frame help to tell us what data are 
# contained in each of the columns.


# -------------------------------------------------------------------------

    # Some examples of R object attributes are:
    #     names, dimnames
    #     dimensions (e.g. matrices, arrays)
    #     class (e.g. integer , numeric)
    #     length
    #     other user-defi ned attributes/metadata

# -------------------------------------------------------------------------


# Attributes of an object (if any) can be accessed using the attributes()
# function. Not all R objects contain attributes, in which case the attributes()
# function returns NULL.

# -------------------------------------------------------------------------

# assess attributes of an object

attributes(df)

# -------------------------------------------------------------------------

attributes(matrix)

# -------------------------------------------------------------------------

# names of an object
names(df)
colnames(df)

# -------------------------------------------------------------------------

# dimentions of an object 
dim(matrix)

# -------------------------------------------------------------------------

# assess the class of an object 

# -------------------------------------------------------------------------

class(list)

# -------------------------------------------------------------------------

# access the length of an object 
length(vector)

# -------------------------------------------------------------------------

# note that length will measure the number of items in a list or 
# number of columns in a data frame

# -------------------------------------------------------------------------
length(list)
length(df)

# -------------------------------------------------------------------------


