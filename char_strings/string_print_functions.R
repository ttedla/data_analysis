
# -------------------------------------------------------------------------

# Printing Strings


# -------------------------------------------------------------------------

# The common printing methods include:
#   print() : generic printing
#   noquote() : print with no quotes
#   cat() : concatenate and print with no quotes
#   sprintf() : a wrapper for the C function sprintf , that returns a character
#   vector containing a formatted combination of text and variable values


# -------------------------------------------------------------------------

# The primary printing function in R is print ()


# -------------------------------------------------------------------------

x <- "learning to print strings"

# -------------------------------------------------------------------------

# basic printing
print (x)

# -------------------------------------------------------------------------

# print without quotes
print(x, quote = FALSE)

# -------------------------------------------------------------------------

# An alternative to printing a string without quotes is to use noquote ()

noquote(x)

# -------------------------------------------------------------------------

#                 # cat() # 
# The output result is very similar to noquote() ; however, cat() does not print 
# the numeric line indicator. As a result, cat() can be useful for printing 
# nicely formatted responses to users.

# -------------------------------------------------------------------------

# basic printing 
cat(x)

# -------------------------------------------------------------------------


# -------------------------------------------------------------------------
# combining character strings

cat(x, "in R")

# -------------------------------------------------------------------------
# basic printing of alphabet
cat(letters)

# -------------------------------------------------------------------------

# specify a separator between the combined characters
cat(letters, sep = "-")

# -------------------------------------------------------------------------

# You can also format the line width for printing long strings using the fill 
# argument :

# -------------------------------------------------------------------------

x <- "Today I am learning how to print strings."
y <- "Tomorrow I plan to learn about textual analysis."
z <- "The day after I will take a break and drink a beer."

# -------------------------------------------------------------------------
cat(x, y, z, fill = 0)
cat (x, y, z, fill = 5)

# -------------------------------------------------------------------------

# sprintf () is a useful printing function for precise control of the output. 
# It is a wrapper for the C function sprintf and returns a character vector 
# containing a formatted combination of text and variable values.To substitute
# in a string or string variable, use %s :

# -------------------------------------------------------------------------

x <- "print strings"
# substitute a single string/variable
sprintf("Learning to %s in R", x)
# -------------------------------------------------------------------------
# substitute multiple strings/variables
y <- "in R"
sprintf("Learning to %s %s", x,y)

# -------------------------------------------------------------------------

# For integers , use %d or a variant:
ver <- 3
sprintf("This is R version %d", ver)

# -------------------------------------------------------------------------

# print with leading spaces
sprintf("This is R verson: %4d", ver)

# -------------------------------------------------------------------------

# can also lead with zeros
sprintf("This is R version: %04d", ver)

# -------------------------------------------------------------------------

# For fl oating-point numbers, use %f for standard notation, 
# and %e or %E for exponential notation:

# -------------------------------------------------------------------------

sprintf("%f", pi)
# decimal notation with 3 decimal digits
sprintf("%.3f", pi)
# 1 integer and 0 decimal digits
sprintf("%1.0f", pi)

# -------------------------------------------------------------------------

# exponential decimal notation 'e'
sprintf ("%e", pi)
sprintf("%E", pi)

# -------------------------------------------------------------------------


