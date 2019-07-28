
# -------------------------------------------------------------------------

# Creating, Converting and Inspecting Factors

# -------------------------------------------------------------------------

# Factor objects can be created with the factor () function:
# create a factor string
gender <- factor( c("male", "female", "female", "male", "female"))

# -------------------------------------------------------------------------

gender

# -------------------------------------------------------------------------

# inspect to see if it is a factor class
class(gender)

# -------------------------------------------------------------------------

# show that factors are just built on top of integers
typeof(gender)

# -------------------------------------------------------------------------

# See the underlying representation of factor
unclass(gender)

# -------------------------------------------------------------------------

# what are the factor levels?
levels(gender)

# -------------------------------------------------------------------------

# show summary of counts
summary(gender)

# -------------------------------------------------------------------------

# If we have a vector of character strings or integers we can easily convert to
# factors :

group <- c ("Group1", "Group2", "Group2", "Group1", "Group1")
str(group)

# -------------------------------------------------------------------------
# convert from characters to factors
as.factor(group)

# -------------------------------------------------------------------------


