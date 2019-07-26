
# -------------------------------------------------------------------------
 
    # The cumulative distribution function (CDF) calculates the cumulative 
    # probability for a given x-value. ... You can also use this information 
    # to determine the probability that an observation will be greater than a 
    #certain value, or between two values.

# -------------------------------------------------------------------------

          # generate CDF probabilities for value(s) in vector q
          #pnorm (q, mean = 0, sd = 1)

# -------------------------------------------------------------------------

              # Let's create a random number from a normal distribution 
x <- rnorm(30, mean = 100, sd=15)


# -------------------------------------------------------------------------

            # Now we can  calculate the cumulative probability 
            # for the vectors in x 
y <- pnorm(x, mean = 100, sd=15)


# -------------------------------------------------------------------------

        # generate quantile for probabilities in vector y
qnorm(y, mean = 100, sd=15)


# -------------------------------------------------------------------------

        # generate density function probabilites for value(s) in vector x
dnorm(x, mean = 100, sd=15)


# -------------------------------------------------------------------------


