
# -------------------------------------------------------------------------

library(stringr)

# -------------------------------------------------------------------------

              # Extracting Patterns # 

# -------------------------------------------------------------------------

# To extract the first occurrence of a pattern in a character vector use 
# str_extract () . The output will be the same length as the string and 
# if no match is found the output will be NA for that element.


# -------------------------------------------------------------------------
y <- c ("I use R #useR2014", "I use R and love R #useR2015", "Beer")

# -------------------------------------------------------------------------

# To extract elements containing "R"
str_extract(y, pattern = "R")

# -------------------------------------------------------------------------

  # To extract all occurrences of a pattern in a character vector 
  # use str_extract_all () .

# -------------------------------------------------------------------------

str_extract_all(y, pattern = "R")

# -------------------------------------------------------------------------

# The output provides a list the same length as the number of elements in the
# vector. Each list item will provide the matching pattern occurrence within 
# that relative vector element.

# -------------------------------------------------------------------------
# [[:punct:]]*  ==> matchs zero or more occurance of punctuation
# [a-zA-Z0-9]*  ==> followed by occurance of zero or more alphanumeric
# R[a-zA-Z0-9]* ==> followed "R" followed by zero or more alphanumeric
# e.g. *#Aa0Ramp123 can be extracted by this exract
#z <- c("*#Aa0Ramp123")

str_extract_all(y, pattern = "[[:punct:]]*[a-zA-Z0-9]*R[a-zA-Z0-9]*")

# -------------------------------------------------------------------------


