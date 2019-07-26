
# -------------------------------------------------------------------------

        # A binomial experiment is a statistical experiment that 
        # has the following properties: The experiment consists 
        # of n repeated trials. Each trial can result in just two 
        # possible outcomes. We call one of these outcomes a success 
        # and the other, a failure. The probability of success, denoted by P, 
        # is the same on every trial.

# -------------------------------------------------------------------------

          # generate a vector of length n displaying the number of successes
          # from a trial size = 100 with a probability of success = 0.5
          # rbinom (n, size = 100, prob = 0.5)
x <- rbinom(10, size=100, prob = 0.5)

# -------------------------------------------------------------------------

          # generate CDF probabilities for value(s) in vector x

y <- pbinom (x, size = 100, prob = 0.5)

# -------------------------------------------------------------------------

          # generate quantile for probabilities in vector y
qbinom (y, size = 100, prob = 0.5)


# -------------------------------------------------------------------------

        # generate density function probabilites for value(s) in vector x
dbinom (x, size = 100, prob = 0.5)
