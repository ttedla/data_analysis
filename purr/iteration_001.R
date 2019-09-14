
# -------------------------------------------------------------------------

        # Iteration with purrr

# -------------------------------------------------------------------------
set.seed(10)
df <- tibble(
  a = rnorm(10), 
  b = rnorm(10), 
  c = rnorm(10), 
  d = rnorm(10) 
  
)

# -------------------------------------------------------------------------

    # compute median for each feature

# -------------------------------------------------------------------------

median(df$a)
median(df$b)
median(df$c)
median(df$d)

# -------------------------------------------------------------------------

# Instead of copying and pasting, we could use a for loop

output <- vector("double", ncol(df))
names(output) <- names(df) 
for (i in seq_along(df)){
  output[[i]] <- median(df[[i]])
}


# -------------------------------------------------------------------------

output

# -------------------------------------------------------------------------

head(mtcars)

# compute the mean of every column in mtcars 

# -------------------------------------------------------------------------

mean_col <- vector("double", ncol(mtcars))

for(i in seq_along(mtcars)){
  mean_col[[i]] <- mean(mtcars[[i]])
}

# -------------------------------------------------------------------------

mean_col

# -------------------------------------------------------------------------

          # determine the type of each col in mtcars

col_type <- vector("character", ncol(mtcars))

for (i in seq_along(mtcars)){
  col_type[[i]] <- typeof(mtcars[[i]])
}
col_type

# -------------------------------------------------------------------------

# compute the number of unique values in each column of iris

# -------------------------------------------------------------------------

head(iris)

# -------------------------------------------------------------------------

n_unique <- vector("integer", ncol(iris))
n_unique

for(i in seq_along(iris)){
  n_unique[[i]] <- length(unique(iris[[i]]))
}


length(unique(iris$Sepal.Length))

# -------------------------------------------------------------------------


