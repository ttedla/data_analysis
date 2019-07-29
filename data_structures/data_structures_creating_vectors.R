
# -------------------------------------------------------------------------

        # Managing Vectors # 

# -------------------------------------------------------------------------

                      # Creating Vectors # 

# -------------------------------------------------------------------------

# The colon : operator can be used to create a vector of integers between
# two specified numbers or the c() function can be used to create vectors
# of objects by concatenating elements together:

# -------------------------------------------------------------------------

          # integer vector
w <- 8:17
w

# -------------------------------------------------------------------------

# double vector
x <- c (0.5, 0.6, 0.2)
x

# -------------------------------------------------------------------------

# logical vector
y1 <- c (TRUE, FALSE, FALSE)
y1
# logical vector in shorthand
y2 <- c (T, F, F)
y2

# -------------------------------------------------------------------------

# Character vector
z <- c ("a", "b", "c")
z

# -------------------------------------------------------------------------

# You can also use the as.vector() function to initialize vectors or change the
# vector type:
v <- as.vector (8:17)
v

# -------------------------------------------------------------------------

# All elements of a vector must be the same type, so when you attempt to combine
# different types of elements they will be coerced to the most flexible 
# type possible:

# -------------------------------------------------------------------------

# numerics are turned to characters
str ( c ("a", "b", "c", 1, 2, 3))

# -------------------------------------------------------------------------

# logical are turned to numerics...
str ( c (1, 2, 3, TRUE, FALSE))

# -------------------------------------------------------------------------

# or character
str ( c ("A", "B", "C", TRUE, FALSE))
