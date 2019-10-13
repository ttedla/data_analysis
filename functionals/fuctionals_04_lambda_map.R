
# -------------------------------------------------------------------------

        # Anonymous functions and shortcuts

# -------------------------------------------------------------------------

      # Instead of using map() with an existing function, 
      # you can create an inline anonymous function

# -------------------------------------------------------------------------
library(purrr)
map_dbl(mtcars, function(x) length(unique(x)))

length(unique(mtcars$mpg))

# -------------------------------------------------------------------------

    # Anonymous functions are very useful, but the syntax is verbose. 
    # So purrr supports a special shortcut:

# -------------------------------------------------------------------------

map_dbl(mtcars, ~ length(unique(.x)))


# -------------------------------------------------------------------------

# This works because all purrr functions translate formulas, 
# created by ~ (pronounced “twiddle”), into functions. You can 
# see what’s happening behind the scenes by calling as_mapper():

# -------------------------------------------------------------------------

as_mapper(~length(unique(.x)))

# -------------------------------------------------------------------------

    # This shortcut is particularly useful for generating random data:

x <- map(1:3, ~ runif(2))
x

# -------------------------------------------------------------------------
  ################# nested list
x <- list(
  list(-1, x = 1, y = c(2), z = "a"),
  list(-2, x = 4, y = c(5, 6), z = "b"),
  list(-3, x = 8, y = c(9, 10, 11))
)
x
# select by name
map_dbl(x, "x")

# -------------------------------------------------------------------------
# select by position
map_dbl(x, 1)

# select by name and position
map_dbl(x, list("y", 1))

# error if component doesn't exist
map_chr(x, "z")

# -------------------------------------------------------------------------

# This can fix it
map_chr(x, "z", .default = NA)
