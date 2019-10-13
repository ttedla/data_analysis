
# -------------------------------------------------------------------------

        # ... dot dot dot function 

# -------------------------------------------------------------------------

# You can also use ... to pass those additional arguments on 
#to another function.

# -------------------------------------------------------------------------

i01 <- function(y, z) {
  list(y=y, z = z)
}

i02 <- function(x, ...) {
  i01(...)
}


i02(x=1,y=2, z=3)


# -------------------------------------------------------------------------

# Using a special form, ..N, it’s possible (but rarely useful) 
# to refer to elements of ... by position:

# -------------------------------------------------------------------------

i03 <- function(...){
  list(first = ..1, third = ..3)
}
i03(1,2,3,4)

# -------------------------------------------------------------------------

# More useful is list(...), which evaluates the arguments 
#and stores them in a list:

# -------------------------------------------------------------------------

i04 <- function(...){
  list(...)
}
my_list <- i04(a = list(1),b = list(2),c = list(2),d = list(4,5))

unlist(my_list)
my_list[[1]]

