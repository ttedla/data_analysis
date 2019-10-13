
# -------------------------------------------------------------------------

          # Function composition 

# -------------------------------------------------------------------------


# Base R provides two ways to compose multiple function calls. 
# For example, imagine you want to compute the population standard 
# deviation using sqrt() and mean() as building blocks:

# -------------------------------------------------------------------------

square <- function(x) x^2
deviation <- function(x) x - mean(x)

# -------------------------------------------------------------------------

# nesting the function calls
x <- runif(100)
sqrt(mean(square(deviation(x))))


#Or save the intermediate results as variables:
  
out <- deviation(x) 
out <- square(out) 
out <- mean(out)
sqrt(out)

# -------------------------------------------------------------------------


# using magrittr
library(magrittr)

x %>%
  deviation() %>%
  square() %>%
  mean() %>%
  sqrt()
