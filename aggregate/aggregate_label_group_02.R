
# -------------------------------------------------------------------------
    # aggregate, simplify and name the grouping column

head(iris)

# -------------------------------------------------------------------------

            # calculate the mean of each observation based on their specieies 

aggregate(iris[, c(1:ncol(iris)-1)], list(Species = iris$Species), mean, simplify = T)

# column goes from 1 to 4
head(iris[1:4]) 
head(iris[1:(ncol(iris)-1)])

# -------------------------------------------------------------------------

avg_per_specis <- aggregate(x = iris[1:4], by = list(Species = iris$Species), FUN=mean)
avg_per_specis

# -------------------------------------------------------------------------


