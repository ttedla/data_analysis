
# -------------------------------------------------------------------------

            # Importing Data # 

# -------------------------------------------------------------------------

           # Reading Data from Text Files # 

# -------------------------------------------------------------------------

# There are two main groups of functions that we can use to read in text files:
  #     Base R functions
  #     readr package functions

# -------------------------------------------------------------------------

                    # Base R Functions # 

# -------------------------------------------------------------------------
# To read in the CSV fi le we can use read.csv(). Note that when we assess the
# structure of the data set that we read in, variable.2 is automatically coerced
# to a factor variable and variable.3 is automatically coerced to a logical
# variable. Furthermore, any whitespace in the column names are replaced 
# with a ".".

# -------------------------------------------------------------------------

setwd("~/data_analysis/")

# -------------------------------------------------------------------------

my_data <- read.csv("./data/my_data.csv")

# -------------------------------------------------------------------------

str(my_data)

# -------------------------------------------------------------------------

my_data <- read.csv("./data/my_data.csv", stringsAsFactors = FALSE)

# -------------------------------------------------------------------------

str(my_data)

# -------------------------------------------------------------------------

              # provides same results as read.csv above
my_data <- read.table("./data/my_data.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE)

# -------------------------------------------------------------------------

str(my_data)

# -------------------------------------------------------------------------

            # set column and row names

# -------------------------------------------------------------------------

my_data <- read.table("./data/my_data.csv", header = TRUE, 
                      sep = ",", 
                      stringsAsFactors = FALSE, 
                      col.names = c("Var 1", "Var 2", "Var 3"), 
                      row.names = c("Row 1", "Row 2", "Row 3"))

# -------------------------------------------------------------------------

str(my_data)

# -------------------------------------------------------------------------

          # # manually set the classes of the columns


# -------------------------------------------------------------------------

set_classes <- read.table("./data/my_data.csv", 
                          header = TRUE, 
                          sep = ",", 
                          colClasses = c("numeric", "character", "character"))

# -------------------------------------------------------------------------

str(set_classes)

# -------------------------------------------------------------------------

            # # limit the number of rows to read in

# -------------------------------------------------------------------------

my_data <- read.table("./data/my_data.csv", sep = ",", 
                      header = TRUE, nrows = 2)
my_data

# -------------------------------------------------------------------------

# read.delim() is a wrapper of read.table() with defaults set 
# specifically for tab delimited files.

# -------------------------------------------------------------------------

                # readr Package # 

# -------------------------------------------------------------------------

      # readr functions are around 10× faster.

# -------------------------------------------------------------------------

# read_csv() maintains the full variable name (whereas read.csv eliminates
# any spaces in variable names and fi lls it with '.'). 
# Also, read_csv() automatically sets stringsAsFactors = FALSE, which 
# can be a controversial topic.

# -------------------------------------------------------------------------

library (readr)

# -------------------------------------------------------------------------

my_data_r <- read_csv("./data/my_data.csv")

# -------------------------------------------------------------------------

str(my_data_r)

# -------------------------------------------------------------------------

      #specify the column class using col_types 

# -------------------------------------------------------------------------

# specify the column class using col_types
read_csv ("./data/my_data.csv", col_types = list(col_double (),
                                           col_character (),
                                           col_character ()))

# -------------------------------------------------------------------------

# we can also specify column classes with a string
# in this example d = double, _ skips column, c = character
read_csv ("./data/my_data.csv", col_types = "d_c")

# -------------------------------------------------------------------------
# set column names 

# -------------------------------------------------------------------------

read_csv("./data/my_data.csv", col_names = c("Var 1", "Var 2", "Var 3"), skip = 1)

# -------------------------------------------------------------------------

  # to set the maximum number of rows to read 
read_csv("./data/my_data.csv", n_max = 2)

# -------------------------------------------------------------------------

# # Simila r to base R , readr also offers functions to import . txt files (read_
# delim()), fixed-width fi les (read_fwf()), general text fi les (read_table() ),
# and more. (see ?read.table for more info)

# -------------------------------------------------------------------------


