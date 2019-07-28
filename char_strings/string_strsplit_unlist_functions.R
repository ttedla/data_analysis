
# -------------------------------------------------------------------------

# To split the elements of a character string use strsplit () :


# -------------------------------------------------------------------------

z <- "The day after I will take a break and drink a beer."

# -------------------------------------------------------------------------

strsplit(z, split = " ")

# -------------------------------------------------------------------------

a <- "Alabama-Alaska-Arizona-Arkansas-California"
strsplit(a, split = "-")


# -------------------------------------------------------------------------

# Note that the output of strsplit () is a list . 
# To convert the output to a simple atomic vector simply wrap in unlist () :

# -------------------------------------------------------------------------

unlist(strsplit(a, split = "-"))

# -------------------------------------------------------------------------


