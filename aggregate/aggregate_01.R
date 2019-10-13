
# -------------------------------------------------------------------------

              # aggregate 

# -------------------------------------------------------------------------

  #To perform aggregation, we need to specify three things in the code:
  
          # The data that we want to aggregate
          # The variable to group by within the data
          # The calculation to apply to the groups (what you want to find out)

# -------------------------------------------------------------------------

          # aggregate(data, by, FUN)
              # data is the dataframe
              # by is a list of variable to group by
              # FUN is an argument applied to all cols in the grouped data
              # FUN can be user defined 
# -------------------------------------------------------------------------
head(iris)
# calculate mean per Species
aggregate(iris, by = iris$Species, FUN = mean)
################## produces error by must be a list to correct

# -------------------------------------------------------------------------


aggregate(iris, by = list(iris$Species), FUN = mean)

# this too produce a warning since it tries to calculate mean for the factor
# to fix remove the factor column from being calculated
# ncol(df) - refers the last col
# -------------------------------------------------------------------------

aggregate(iris[-ncol(iris)], by = list(iris$Species), FUN = mean)


# -------------------------------------------------------------------------

# Write a fucntion to return the 2-nd largest in a df

second_largest <- function(df, sort){
  apply(df, 2, sort)[2,]
}

apply(df, 2, sort)

df <- data.frame(a = seq(10), 
                 b = rev(seq(10)))

df_sort <- apply(df, 2, sort)

str(second_largest(df, sort))
# -------------------------------------------------------------------------
str(second_largest(iris, sort))

# -------------------------------------------------------------------------
