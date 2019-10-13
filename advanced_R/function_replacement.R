
# -------------------------------------------------------------------------

                # Replacement functions 

# -------------------------------------------------------------------------

# Replacement functions act like they modify their arguments in place, 
# and have the special name xxx<-. They must have arguments named x 
# and value, and must return the modified object. For example, the 
# following function modifies the second element of a vector:

# -------------------------------------------------------------------------

`second<-` <- function(x,value){
  x[2] <- value
  x
}
x
x <- 1:10
second(x) <- 5L 
tracemem(x)
second(x) <- 6L

# -------------------------------------------------------------------------

`modify<-` <- function(x, position, value){
  x[position] <- value
  x
}
x
modify(x,1) <- 10
x

# -------------------------------------------------------------------------

x <- c(a = 1, b = 2, c = 3)
x
names(x)[2] <- "two"


# -------------------------------------------------------------------------


