
# -------------------------------------------------------------------------

#Set Operatons for Character Strings

# -------------------------------------------------------------------------

          # Set Union # 

# -------------------------------------------------------------------------

set_1 <- c ("lagunitas", "bells", "dogfish", "summit", "odell")
set_2 <- c ("sierra", "bells", "harpoon", "lagunitas", "founders")

# -------------------------------------------------------------------------

union(set_1, set_2)

# -------------------------------------------------------------------------

intersect(set_1, set_2)

# -------------------------------------------------------------------------

        ############### Identifying Different Elements# 

# -------------------------------------------------------------------------
 
# # To obtain the non-common elements, or the difference, 
# of two character vectors use setdiff() :

# -------------------------------------------------------------------------

# returns elements in set_1 not in set_2
setdiff(set_1, set_2)
# returns elements in set_2 not in set_1
setdiff(set_2, set_1)

# -------------------------------------------------------------------------

# Testing for Element Equality

# -------------------------------------------------------------------------

set_3 <- c ("woody", "buzz", "rex")
set_4 <- c ("woody", "andy", "buzz")
set_5 <- c ("andy", "buzz", "woody")

# -------------------------------------------------------------------------

# To test if two vectors contain the same elements regardless of order use
# setequal() :
setequal(set_3, set_4)
setequal(set_4, set_5)

# -------------------------------------------------------------------------

# Testing for Exact Equality

# -------------------------------------------------------------------------

set_6 <- c ("woody", "andy", "buzz")
set_7 <- c ("andy", "buzz", "woody")
set_8 <- c ("woody", "andy", "buzz")

# -------------------------------------------------------------------------

# To test if two character vectors are equal in content and order use
# identical () :

# -------------------------------------------------------------------------

identical(set_6, set_7)
identical(set_6, set_8)

# -------------------------------------------------------------------------


