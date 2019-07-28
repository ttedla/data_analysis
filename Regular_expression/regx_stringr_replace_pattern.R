
# -------------------------------------------------------------------------

      ################################# Replacing Patterns ###

# -------------------------------------------------------------------------

library(stringr)

# -------------------------------------------------------------------------

# To replace the first occurrence of a pattern in a character vector use 
# str_replace () . This function is a wrapper for sub() .

# -------------------------------------------------------------------------

cities <- c ("New York", "new new York", "New New New York")
cities

# -------------------------------------------------------------------------
      # replacing first occurance using sub ignore.case=TRUE
sub(pattern = "New", replacement = "Old", ignore.case = TRUE, cities)

# -------------------------------------------------------------------------
      # replacing all occurance using gsub
gsub(pattern = "New", replacement = "Old", ignore.case = TRUE, cities)

# -------------------------------------------------------------------------

  # replacing using the stringr function str_replace
str_replace(cities, pattern = "New", replacement = "Old")

# -------------------------------------------------------------------------

# to deal with case sensitivities use Regex syntax in the 'pattern' argument
str_replace(cities, pattern = "[N]*[n]*ew", replacement = "Old")

# -------------------------------------------------------------------------

# To extract all occurrences of a pattern in a character vector 
# use str_replace_all() . This function is a wrapper for gsub () .
str_replace_all(cities, pattern = "[N]*[n]*ew", replacement = "Old")

# -------------------------------------------------------------------------


