
# -------------------------------------------------------------------------

# Identifying If Elements Are Contained in a String # 

# -------------------------------------------------------------------------

# To test if an element is contained within a character vector use 
# is.element () or %in% :

# -------------------------------------------------------------------------

good <- "andy"
bad <- "sid"

# -------------------------------------------------------------------------

set_1 <- c ("lagunitas", "bells", "dogfish", "summit", "odell")
set_2 <- c ("sierra", "bells", "harpoon", "lagunitas", "founders")
set_3 <- c ("woody", "buzz", "rex")
set_4 <- c ("woody", "andy", "buzz")
set_5 <- c ("andy", "buzz", "woody")
set_6 <- c ("woody", "andy", "buzz")
set_7 <- c ("andy", "buzz", "woody")
set_8 <- c ("woody", "andy", "buzz")

# -------------------------------------------------------------------------
is.element(good, set_8)

# -------------------------------------------------------------------------

good %in% set_8

# -------------------------------------------------------------------------

bad %in% set_8

# -------------------------------------------------------------------------


