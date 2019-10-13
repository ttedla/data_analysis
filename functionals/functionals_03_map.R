
# -------------------------------------------------------------------------

library(purrr)

# -------------------------------------------------------------------------

    # >> producing atomic vectors
    # map() returns a list, which makes it the most general 
    #of the map family because you can put anything in a list. 

# -------------------------------------------------------------------------

# map_lgl(), 
# map_int(), 
# map_dbl(), and 
#map_chr(). 
#Each returns an atomic vector of the specified type:

# -------------------------------------------------------------------------
for(i in seq_along(mtcars)){
  print(paste(colnames(mtcars[i]), typeof(mtcars[[i]])))
}
# -------------------------------------------------------------------------


map_chr(mtcars, typeof)

# -------------------------------------------------------------------------

map_lgl(mtcars, is.double)

for(i in seq_along(mtcars)){
  print(paste(colnames(mtcars[i]), is.double(mtcars[[i]])))
}

# -------------------------------------------------------------------------
n_unique <- function(x) length(unique(x))
length(unique(mtcars$mpg))

map_int(mtcars, n_unique)

# -------------------------------------------------------------------------


sapply(mtcars, n_unique)
vapply(mtcars, n_unique, FUN.VALUE = integer(1))
# -------------------------------------------------------------------------

# All map functions always return an output vector the same length as the 
# input, which implies that each call to .f must return a single value. 
#If it does not, you’ll get an error:

# -------------------------------------------------------------------------

pair <- function(x) c(x, x)
map_dbl(1:2, pair)
map_dbl(1:2, as.character)

map(1:2, pair)

map(1:2, as.character)
# base Map
Map(as.character, 1:2)

