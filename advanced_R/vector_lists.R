
# -------------------------------------------------------------------------

                    # Lists

# -------------------------------------------------------------------------

      # Lists are constructed using list()

# -------------------------------------------------------------------------

x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))

str(x)

# -------------------------------------------------------------------------
x <- list(list(list(list())))
str(x)

is.recursive(x)
# -------------------------------------------------------------------------

x <- list(list(1, 2), c(3, 4))
x
y <- c(list(1, 2), c(3, 4))

str(x)

str(y)
typeof(y)
is.atomic(y)
is.list(x)
is.list(y)

# c() will combine several lists into one. If given a combination of 
# atomic vectors and lists, c() will coerce the vectors to lists before 
# combining them.

# -------------------------------------------------------------------------


is.list(mtcars)

# -------------------------------------------------------------------------

mod <- lm(mpg ~ wt, data = mtcars)
is.list(mod)

# -------------------------------------------------------------------------

