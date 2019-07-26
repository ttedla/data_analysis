# -------------------------------------------------------------------------
              # Uniform distribution # 
              # a type of probability distribution in which all outcomes are #
              # equally likely; each variable has the same probability that # 
              # it will be the outcome. ... A coin also has a uniform # 
              # distribution because the probability of getting either heads # 
              # or tails in a coin toss is the same. #

# -------------------------------------------------------------------------
          # generate n random numbers between the default values of 0 and 1 
          # runif (n)

runif(5) # generate 5 numbers between 0 and 1

        # generate n random numbers between 0 and 25
runif (10, min = 0, max = 25) # generate 10 random numbers between 0 and 25


# -------------------------------------------------------------------------

# generate n random numbers between 0 and 25 (with replacement)
#sample (0:25, n, replace = TRUE)
sample(0:25, 10, replace = TRUE)
