
# -------------------------------------------------------------------------

library(tidyr)
library(DSR)

# -------------------------------------------------------------------------

# spread() and gather() help you reshape the layout of your data to place 
# variables in columns and observations in rows. separate() and unite() 
# help you split and combine cells to place a single, complete value in each cell.

# -------------------------------------------------------------------------

# separate() turns a single character column into multiple columns by 
# splitting the values of the column wherever a separator character appears.


# -------------------------------------------------------------------------

table3

# -------------------------------------------------------------------------

# we can use separate() to tidy table3, which combines values of cases and population in the same column.


# -------------------------------------------------------------------------

separate(table3, rate, into = c("cases", "Population"), sep = "/")

# -------------------------------------------------------------------------

?separate

# You can also pass an integer or vector of integers to sep. separate() will interpret 
# the integers as positions to split at. Positive values start at 1 at the far-left of 
# the strings; negative value start at -1 at the far-right of the strings. The length of 
# sep should be one less than the number of names in into. You can use this arrangement 
# to separate the last two digits of each year.

separate(table3, year, into = c("centuary", 'year'), sep = 2)
table3

# You can futher customize separate() with the remove, convert, and extra arguments:
  # remove - Set remove = FALSE to retain the column of values that were 
  # separated in the final data frame.
str(separate(table3, year, into = c("Centuary", "Year"), sep = 2, remove = F))

# -------------------------------------------------------------------------


  # convert - By default, separate() will return new columns as character columns.
  # Set convert = TRUE to convert new columns to double (numeric), integer, 
  # logical, complex, and factor columns with type.convert().
str(separate(table3, year, into = c("Centurary", "Year"), sep = 2, convert = T))

# -------------------------------------------------------------------------


  # extra - extra controls what happens when the number of new values in a cell 
  # does not match the number of new columns in into. 
  # If extra = error (the default), separate() to return an error. 
  # If extra = drop, separate() will drop new values and supply NAs 
  # as necessary to fill the new columns. If extra = merge, separate() 
  # will split at most length(into) times.

# -------------------------------------------------------------------------

               # unite()
    # unite() does the opposite of separate(): it combines multiple 
    # columns into a single column.

# -------------------------------------------------------------------------

table6
unite(table6, "Year", century, year, sep = "")

# -------------------------------------------------------------------------
