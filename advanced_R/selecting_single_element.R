
# -------------------------------------------------------------------------

                  #Selecting a single element

# -------------------------------------------------------------------------

# There are two other subsetting operators: [[ and $. [[ is used 
# for extracting single items, while x$y is a useful shorthand for x[["y"]].
                                                       

# -------------------------------------------------------------------------

x <- list(1:3, "a", 4:6)                                                       
x

# -------------------------------------------------------------------------
# creates a smaller list
str(x[1])

# extracts the value of first elements (simplifies) 
str(x[[1]])


# -------------------------------------------------------------------------
# When extracting multiple (or even zero!) elements, you have to make a smaller lists:
x
x[1:2]

# -------------------------------------------------------------------------
# Because [[ can return only a single item, 
# you must use it with either a single positive integer or a single string.

x[[c(1,2)]]
x[[1]][[2]]
x[[1:2]]
# -------------------------------------------------------------------------


x[-2]
x[c(1,1)]
x[0]
# -------------------------------------------------------------------------

# While you must use [[ when working with lists, 
# I'd also recommend using it with atomic vectors whenever 
# you want to extract a single value. For example, instead of writing:

# -------------------------------------------------------------------------

# $ is a shorthand operator: x$y is roughly equivalent to x[["y"]]. 

mtcars$cyl

var = "cyl"

#doesn't work
mtcars$var

mtcars[[var]]

# -------------------------------------------------------------------------

#The one important difference between $ and [[ is that $ does (left-to-right) #partial matching:

# -------------------------------------------------------------------------
# options(warnPartialMatchDollar = TRUE)
x <- list(abc =1)
x$a
x[["a"]]

# -------------------------------------------------------------------------


