
# -------------------------------------------------------------------------

             # Factors 

# -------------------------------------------------------------------------

# A factor is a vector that can contain only predefined values, 
# and is used to store categorical data. Factors are built on 
# top of integer vectors using two attributes: the class, "factor",
# which makes them behave differently from regular integer vectors, 
# and the levels, which defines the set of allowed values.

# -------------------------------------------------------------------------

x <- factor(c("a", "b", "b", "a"))
x

# -------------------------------------------------------------------------

class(x)

# -------------------------------------------------------------------------

levels(x)

# -------------------------------------------------------------------------

# You can't use values that are not in the levels
length(x)
x[2] <- "c"
x

# -------------------------------------------------------------------------

# NB: you can't combine factors
c(factor("a"), factor("b"))

sex_char <- c("m", "m", "m")
sex_factor <- factor(sex_char, levels = c("m", "f"))
sex_factor
table(sex_factor)
sex_char[2] <- "f"
sex_char
table(sex_char)

# -------------------------------------------------------------------------

z <- read.csv(text = "value\n12\n1\n.\n9")

typeof(z$value)

as.double(z$value)
# not the values we read in. Those are levels. 

class(z$value)

# To fix the problem 
as.double(as.character(z$value))

# or change how we read it in 
z <- read.csv(text = "value\n12\n1\n.\n9", na.strings = ".")
typeof(z$value)
class(z$value)
z$value
# -------------------------------------------------------------------------
f1 <- factor(letters)
levels(f1)
levels(f1) <- rev(levels(f1))

# -------------------------------------------------------------------------

f2 <- rev(factor(letters))

f2
f3 <- factor(letters, levels = rev(letters))

# -------------------------------------------------------------------------






