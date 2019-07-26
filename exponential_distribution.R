
# -------------------------------------------------------------------------

# The Exponential probability distribution describes the time between events 
# in a Poisson process.

# -------------------------------------------------------------------------

# The exponential distribution is one of the widely used continuous 
# distributions. It is often used to model the time elapsed between events. 
# We will now mathematically define the exponential distribution, and derive 
# its mean and expected value. Then we will develop the intuition for the 
# distribution and discuss several interesting properties that it has.


# -------------------------------------------------------------------------

          # generate a vector of length n with rate = 1
x <- rexp (9, rate = 1)


# -------------------------------------------------------------------------

# generate CDF probabilities for value(s) in vector q when rate = 4.
y <- pexp (x, rate = 4)

# -------------------------------------------------------------------------

# generate quantile for probabilities in vector p when rate = 1.
qexp (y, rate = 1)

# -------------------------------------------------------------------------

  # generate density function probabilites for value(s) in vector x
  # when rate = 1.
dexp (x, rate = 1)

# -------------------------------------------------------------------------


