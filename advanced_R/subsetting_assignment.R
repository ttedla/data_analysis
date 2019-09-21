
# -------------------------------------------------------------------------

x <- list(
  a = list(1, 2, 3),
  b = list(3, 4, 5)
)

# -------------------------------------------------------------------------

x
str(x)

# -------------------------------------------------------------------------

purrr::pluck(x, "a", 1)

purrr::pluck(x, "c", 1)

purrr::pluck(x, "c", 1, .default = NA)

# -------------------------------------------------------------------------

str(mtcars$cyl[[3]])
str(mtcars[3, "cyl"])
mtcars[["cyl"]][[3]]
mtcars[, "cyl"][[3]]
with(mtcars, cyl[[3]])

# select rows first
mtcars[3,]$cyl
mtcars[3,][["cyl"]]

# -------------------------------------------------------------------------

          # Subsetting and assignment

# -------------------------------------------------------------------------

# With lists, you can use x[[i]] <- NULL to remove a component. To add a  #literal NULL, use x[i] <- list(NULL):

x <- list(a = 1, b = 2)
x
x[["b"]] <- NULL
str(x)
x
y <- list(a = 1, b = 2)
y
y["b"] = list(NULL)
y
str(y)

# -------------------------------------------------------------------------

#Subsetting with nothing can be useful with assignment because it preserves  #the structure of the original object. 

mtcars[] <- lapply(mtcars, as.integer)
is.data.frame(mtcars)
mtcars <- lapply(mtcars, as.integer)
is.data.frame(mtcars)

# -------------------------------------------------------------------------


