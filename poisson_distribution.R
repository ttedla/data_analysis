
# -------------------------------------------------------------------------

# The Poisson distribution is a discrete probability distribution that expresses 
# the probability of a given number of events occurring in a fi xed interval of 
# time and/or space if these events occur with a known average rate and 
# independently of the time since the last event.

# -------------------------------------------------------------------------

      # generate a vector of length n displaying the random number of
      # events occurring when lambda (mean rate) equals 4. 
        #rpois (n, lambda = 4)

# -------------------------------------------------------------------------

x <- rpois(6, lambda = 4)


# -------------------------------------------------------------------------

# generate CDF probabilities for value(s) in vector q when lambda
# (mean rate) equals 4.

# -------------------------------------------------------------------------

ppois (x, lambda = 4)


# -------------------------------------------------------------------------

    # generate quantile for probabilities in vector p when lambda
    # (mean rate) equals 4.
        #qpois (p, lambda = 4)

# -------------------------------------------------------------------------
qpois(0.9, lambda = 4)

# -------------------------------------------------------------------------

# generate density function probabilites for value(s) in vector x
# when lambda (mean rate) equals 4.

# -------------------------------------------------------------------------
dpois (x, lambda = 4)

# -------------------------------------------------------------------------

