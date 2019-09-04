
# -------------------------------------------------------------------------
# -------------------------------------------------------------------------
library(tidyr)
library(DSR)

# -------------------------------------------------------------------------

table1
table2
table3
table4
table5

# -------------------------------------------------------------------------

              
# -------------------------------------------------------------------------

# gather() has four main arguments:
#   • data : the dataset to translate.
#   • key & value : the key is the name of the variable that will be created from
#   the column names, and the value is the name of the variable that will be
#   created from the cell values.
#   • ... : which variables to gather. You can specify individually, A, B, C, D , or
#   as a range A:D . Alternatively, you can specify which columns are not to be
#   gathered with - : -E, -F .

# -------------------------------------------------------------------------

  # Gather takes multiple columns and collapses into key-value pairs, 
  # duplicating all other columns as needed. You use gather() when you 
  # notice that you have columns that are not variables.

# To use gather(), pass it the name of a data frame to reshape. Then pass gather() a character string to use for the name of the “key” column that it will make, as well as a character string to use as the name of the value column that it will make. Finally, specify which columns gather() should collapse into the key value pair (here with integer notation).
?gather

table4
gather(table4, key = "year", value=cases, 2:3)
# -------------------------------------------------------------------------
?spread

table2 
# Spread a key-value pair across multiple columns.
# we can use spread() to tidy table 2
spread(table2, key = key, value = value)
spread(table2, key, value)

# -------------------------------------------------------------------------

table5
gather(table5, key = "year", value = "population", 2:3)
gather(table5, year, population, c(2,3))
gather(table5, year, population, -1)

# -------------------------------------------------------------------------
