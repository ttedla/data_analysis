
# -------------------------------------------------------------------------

#Function vs vars

# -------------------------------------------------------------------------

g07 <- function(x) x+1

g08 <- function(){
  g07 <- function(x) x+100
  g07(10)
}
g08()

# -------------------------------------------------------------------------

#  When you use a name in a function call, 
# R ignores non-function objects when looking 
# for that value. For example, in the code below, 
# g09 takes on two different values:

# -------------------------------------------------------------------------

g09 <- function(x) x + 100
g10 <- function(){
  g09 <- 10
  g09(g09)
}
g10()

# -------------------------------------------------------------------------


