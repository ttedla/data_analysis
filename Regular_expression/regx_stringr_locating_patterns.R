
# -------------------------------------------------------------------------

library(stringr)

# -------------------------------------------------------------------------

        # Locating Patterns #

# -------------------------------------------------------------------------

        # To locate the position of the first occurrence 
        # of a pattern in a string vector use str_locate () .

# -------------------------------------------------------------------------

x <- c ("abcd", "a22bc1d", "ab3453cd46", "a1bc44d")

# -------------------------------------------------------------------------

        # locate 1st sequence of 1 or more consecutive numbers
str_locate(x, pattern = "[0-9]+")

# -------------------------------------------------------------------------

# To locate the positions of all pattern match 
# occurrences in a character vector use str_locate_all () .

# locate all sequences of 1 or more consecutive numbers

str_locate_all(x, pattern = "[0-9]+")
