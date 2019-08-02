
# -------------------------------------------------------------------------

              # Doing repetitive tasks # 

# -------------------------------------------------------------------------

setwd("~/data_analysis/")

# -------------------------------------------------------------------------

# Let's read some data 

my_data <- read.csv("./data/seed_root_herbivores.csv", header = TRUE, stringsAsFactors = FALSE)

# -------------------------------------------------------------------------

head(my_data)
str(my_data)
# -------------------------------------------------------------------------
    # Let's change the Plot var to factor

my_data$Plot <- factor(my_data$Plot, levels = unique(my_data$Plot))

# -------------------------------------------------------------------------
head(my_data)
str(my_data)

# -------------------------------------------------------------------------

      # What if we wanted to get the mean of each of the column: 
                  # No.stems
                  # Height
                  # Weight
                  # Seed.heads
                  # Seeds.in.25.heads.

# -------------------------------------------------------------------------

mean.no.stems <- mean(my_data$No.stems)
mean.height <- mean(my_data$Height)
mean.weight <- mean(my_data$Weight)
mean.seed.heads <- mean(my_data$Seed.heads)
mean.seeds.25.heads <- mean(my_data$Seeds.in.25.heads)

# -------------------------------------------------------------------------

# Notice the pattern though — we are taking each column in turn and applying
# the same function to it. 

# -------------------------------------------------------------------------

# The function that we will use is sapply. It takes as its first argument
# a list, and applies a function to each element in turn.

# -------------------------------------------------------------------------
        # As a simple example, here is a little list with toy data:

# -------------------------------------------------------------------------
obj <- list(a = 1:5, b = c(1, 5, 6), c = c(pi, exp(1)))

# -------------------------------------------------------------------------

obj
names(obj)
attributes(obj)

# -------------------------------------------------------------------------

        # Can you compute the lenght of each element in a list ? 

# -------------------------------------------------------------------------

length(obj) # This computes the lenght of the list entirely

      # using sapply we can compute the length of each list element 
sapply(obj, length)

# -------------------------------------------------------------------------

    # To compute the sum of each of the list elements 
round(sapply(obj, sum), 2)

# -------------------------------------------------------------------------

    # To compute the variance 
round(sapply(obj, var), 2)

# -------------------------------------------------------------------------

# To compute the mean of the variables in our data frame 
# No.stems", "Height", "Weight", "Seed.heads", "Seeds.in.25.heads"

# -------------------------------------------------------------------------

# store the variables as a vector 
response.vars <- c("No.stems", "Height", "Weight", "Seed.heads", "Seeds.in.25.heads")

# -------------------------------------------------------------------------

my_data[response.vars] # this returs the vars (cols) from the data frame 

sapply(my_data[response.vars], mean)


# -------------------------------------------------------------------------

        # compute the coef variation for the vars 

# -------------------------------------------------------------------------

# The coefficient of variation is defined as the standard deviation
# (square root of the variance) divided by the mean: 

        # Let's write a function for the coef.vars 
coef.var <- function(x)
{
  sqrt(var(x))/mean(x)
}

# -------------------------------------------------------------------------

sapply(my_data[response.vars], coef.var)


# -------------------------------------------------------------------------

        # and look for the largest variable?
cvs <- sapply(my_data[response.vars], coef.var)  
which.max(cvs)  

# -------------------------------------------------------------------------

      # For the min
which.min(cvs)

# -------------------------------------------------------------------------

class(lapply(obj, sum))
class(sapply(obj, sum))

# -------------------------------------------------------------------------

# sapply simplifies the result while lapply presevers and return a list back

# -------------------------------------------------------------------------

# For example, suppose we wanted to double all the elements in obj. 
# We can’t just multiply this list by 2:

# -------------------------------------------------------------------------

double.result <- function(x)
{
  2*x
}

# -------------------------------------------------------------------------

lapply(obj, double.result)

# -------------------------------------------------------------------------

obj2 <- list(a = 1:3, b = c(1, 5, 6), c = c(pi, exp(1), log(10)))

# -------------------------------------------------------------------------

lapply(obj2, double.result) # preserves the result as list

# -------------------------------------------------------------------------
sapply(obj2, double.result) # return a matrix (simplifies the result)

# -------------------------------------------------------------------------



