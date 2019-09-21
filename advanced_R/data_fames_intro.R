
# -------------------------------------------------------------------------

            # Data frame

# -------------------------------------------------------------------------

          # Creation 

# -------------------------------------------------------------------------

# Beware data.frame()’s default behaviour which turns strings into factors. 
#Use stringsAsFactors = FALSE to suppress this behaviour:

# -------------------------------------------------------------------------

df <- data.frame(x =1:3, y=c("a", "b", "c"))
str(df)

# -------------------------------------------------------------------------

df <- data.frame(
  x = 1:3, 
  y = c("a", "b", "c"), 
  stringsAsFactors = FALSE
)
str(df)

# -------------------------------------------------------------------------
        # Testing and coercion

typeof(df)

class(df)

is.data.frame(df)

# -------------------------------------------------------------------------

# You can coerce an object to a data frame with as.data.frame():
#   
#   A vector will create a one-column data frame.
# 
#   A list will create one column for each element; 
#   it’s an error if they’re not all the same length.
# 
#   A matrix will create a data frame with the same number
#   of columns and rows as the matrix.

# -------------------------------------------------------------------------
   #Combining data frames

# -------------------------------------------------------------------------

      # You can combine data frames using cbind() and rbind():

# -------------------------------------------------------------------------

df
cbind(df, data.frame(z = 3:1))

# -------------------------------------------------------------------------

rbind(df, data.frame(x = 10, y="z"))

# -------------------------------------------------------------------------

# When combining column-wise, the number of rows must match, but row names 
# are ignored. When combining row-wise, both the number and names of columns 
# must match. Use plyr::rbind.fill() to combine data frames that don’t have 
# the same columns.

# -------------------------------------------------------------------------
# It’s a common mistake to try and create a data frame by cbind()ing vectors
# together. This doesn’t work because cbind() will create a matrix unless 
# one of the arguments is already a data frame. Instead use data.frame() directly:

# -------------------------------------------------------------------------

bad <- data.frame(cbind(a = 1:2, b = c("a", "b")))
bad
str(bad)

# -------------------------------------------------------------------------

good <- data.frame(
  a = 1:2, 
  b = c("a", "b"),
  stringsAsFactors = FALSE)
str(good)
# -------------------------------------------------------------------------

          # Special columns

# -------------------------------------------------------------------------

        # Since a data frame is a list of vectors, it is possible 
        # for a data frame to have a column that is a list:

# -------------------------------------------------------------------------

df <- data.frame(x = 1:3)
df
df$y <- list(1:2, 1:3, 1:4)
df

# -------------------------------------------------------------------------

      # However, when a list is given to data.frame(), it tries to put each 
      # item of the list into its own column, so this fails:

# -------------------------------------------------------------------------

data.frame(x = 1:3, y = list(1:2, 1:3, 1:4))

# -------------------------------------------------------------------------

# A workaround is to use I(), which causes data.frame() 
# to treat the list as one unit:

# -------------------------------------------------------------------------

data.frame(x = 1:3, y = I(list(1:2, 1:3, 1:4)))

# -------------------------------------------------------------------------

dfm <- data.frame(x = 1:3, y = I(matrix(1:9, nrow = 3)))
dfm
str(dfm)  
dfm[2, 'y']
dfm[3, "y"]

# -------------------------------------------------------------------------

