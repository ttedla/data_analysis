
# -------------------------------------------------------------------------

# Control flow - if

# -------------------------------------------------------------------------

x1 <- if(TRUE) 1 else 2
a = T
b = F

x2 <- if(FALSE) 1 else 2
x2
c(x1,x2)

# -------------------------------------------------------------------------


greet <- function(name, birthday = FALSE) {
  paste0(
    "Hi ", name,
    if (birthday) " and HAPPY BIRTHDAY"
  )
}
greet("Tadele", T)

# -------------------------------------------------------------------------

# Closely related to if is the switch()-statement. It’s a compact, special #purpose equivalent that lets you replace code like:

# -------------------------------------------------------------------------

x_option <- function(x) {
  if (x == "a") {
    "option 1"
  } else if (x == "b") {
    "option 2" 
  } else if (x == "c") {
    "option 3"
  } else {
    stop("Invalid `x` value")
  }
}

# with the more succinct:

x_option <- function(x) {
  switch (x,
    a = "option1", 
    b = "option2", 
    c = "option3", 
    stop("Invalid X values")
  )
}

# The last component of a switch() should always throw an error, otherwise 
# unmatched inputs will invisibly return NULL:

(switch ("c",
  a = 1, 
  b = 2
))

# -------------------------------------------------------------------------

# If multiple inputs have the same output, you can leave the right
# hand side of = empty and the input will “fall through” to the 
# next value. This mimics the behaviour of C’s switch statement:

# -------------------------------------------------------------------------

legs <- function(x){
  switch (x,
    cow = ,
    horse = ,
    dog = 4, 
    human =, 
    chicken = 2, 
    plant = 0, 
    stop("Uknown Input")
  )
}  
legs("cow")
legs("plant")
legs("plat")

ifelse(TRUE, 1, "no")
ifelse(FALSE, 1, "no")

ifelse(NA, 1, "no")
x <- 1:10
length(x)

if (length(x)) "not empty" else "empty"
x <- numeric()

if (length(x)) "not empty" else "empty"

