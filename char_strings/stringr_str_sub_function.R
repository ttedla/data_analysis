
# -------------------------------------------------------------------------

# str_ length () is similar to the nchar () function; however, str_length() 
# behaves more appropriately with missing (‘NA’) values:

# -------------------------------------------------------------------------

# some text with NA
text = c ("Learning", "to", NA, "use", "the", NA, "stringr", "package")

# -------------------------------------------------------------------------

# compare ` str_length ()` with ` nchar ()`
nchar(text)
str_length(text)

# -------------------------------------------------------------------------

# str_sub () is similar to substr () ; however, it returns a zero length vector
# if any of its inputs are zero length, and otherwise expands each argument to 
# match the longest. It also accepts negative positions, which are calculated
# from the left of the last character.

# -------------------------------------------------------------------------

x <- "Learning to use the stringr package"
x
str_sub(x, start = 1, end = 15)
            # or #
str_sub(x, end = 15)
# -------------------------------------------------------------------------

############## from the 17 to the end # 
str_sub(x, start = 17)

# -------------------------------------------------------------------------

str_sub(x, start = c(1,17), end = c(15, 35))

# -------------------------------------------------------------------------

# # using negative indices for start/end points from end of string
str_sub(x, start=-1)

# -------------------------------------------------------------------------
# the start will be 19 chars from the end and the end will be the end
str_sub(x, start = -19)

# -------------------------------------------------------------------------
# from the start to 21 chars from the end. 
str_sub(x, end = -21)

# -------------------------------------------------------------------------


