
# -------------------------------------------------------------------------

library(stringr)

# -------------------------------------------------------------------------

              # String Splitting #

# -------------------------------------------------------------------------

# To split the elements of a character string use str_split(). 
# This function is a wrapper for strsplit () .


# -------------------------------------------------------------------------

z <- "The day after I will take a break and drink a beer."

# -------------------------------------------------------------------------

          # split using strsplit (baseR)
strsplit(z, split = " ")
          # split using str_split() stringr
str_split(z, pattern = " ")
# -------------------------------------------------------------------------


a <- "Alabama-Alaska-Arizona-Arkansas-California"

# using baseR
strsplit(a, split = "-")
str_split(a, pattern = "-")

# -------------------------------------------------------------------------

# Note that the output of strs_plit() is a list . 
# To convert the output to a simple atomic vector simply wrap in unlist () :

unlist(strsplit(a, split = "-"))
# str_split
unlist(str_split(a, pattern = "-"))
