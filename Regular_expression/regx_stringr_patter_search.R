
# -------------------------------------------------------------------------

        # Regex Functions in stringr

# -------------------------------------------------------------------------

# load package
library (stringr)

# -------------------------------------------------------------------------

        # Detecting Patterns  #

# -------------------------------------------------------------------------

# To detect whether a pattern is present (or absent) in 
# a string vector use the str_detect () . This function is a wrapper 
# for grepl () .

# -------------------------------------------------------------------------

# use the built in data set 'state.name'
head (state.name)

# -------------------------------------------------------------------------

# Let's search pattern 'New' 

str_detect(state.name, pattern = "New")

# -------------------------------------------------------------------------

# count the total matches by wrapping with sum
sum(str_detect(state.name, pattern = "New"))

# -------------------------------------------------------------------------


