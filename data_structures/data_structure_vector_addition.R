
# -------------------------------------------------------------------------

                  # Adding On To Vectors #

# -------------------------------------------------------------------------

# To add additional elements to a pre-existing vector we can continue
# to leverage the c() function. Also, note that vectors are always flat
# so nested c() functions will not add additional dimensions to the vector:

# -------------------------------------------------------------------------

v1 <- 8:17
c(v1, 18:22)

# -------------------------------------------------------------------------

# same as
c (v1, c (18, c (19, c (20, c (21:22)))))

# -------------------------------------------------------------------------


