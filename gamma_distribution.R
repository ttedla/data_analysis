
# -------------------------------------------------------------------------

# The Gamma probability distribution is related to the Beta distribution and 
# arises naturally in processes for which the waiting times between Poisson 
# distributed events are relevant.


# -------------------------------------------------------------------------

# generate a vector of length n with shape parameter = 1
x <- rgamma (2, shape = 1)


# -------------------------------------------------------------------------
# generate CDF probabilities for value(s) in vector q when shape
# parameter = 1.
y <- pgamma (x, shape = 1)

# -------------------------------------------------------------------------
# generate quantile for probabilities in vector p when shape
# parameter = 1.
qgamma (y, shape = 1)

# -------------------------------------------------------------------------

# generate density function probabilites for value(s) in vector x
# when shape parameter = 1.
dgamma (x, shape = 1)

