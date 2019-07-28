
# -------------------------------------------------------------------------

# creating strings 


# -------------------------------------------------------------------------

a <- "learning to create"  # create string a
b <- "character strings"  # create string b

# The paste() function provides a versatile means for creating and building
# strings. It takes one o r more R objects, converts them to "character", 
# and then it concatenates (pastes) them to form one or several character 
# strings. 

# -------------------------------------------------------------------------
paste(a, b)

# -------------------------------------------------------------------------

# paste character and number strings (converts numbers to character class)


# -------------------------------------------------------------------------

paste("The life of ", pi)

# -------------------------------------------------------------------------

paste("I", "Love", "R")

# -------------------------------------------------------------------------

# paste multiple strings with a separating character
paste("I", "Love", "R", sep = "-")

# -------------------------------------------------------------------------

# use paste0() to paste without spaces btwn characters

# -------------------------------------------------------------------------

paste0("I", "Love", "R")

# -------------------------------------------------------------------------

# paste objects with different lengths

# -------------------------------------------------------------------------

paste("R", 1:5, sep = " V1.")
