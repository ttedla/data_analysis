
# -------------------------------------------------------------------------
        #subset application
#Lookup tables (character subsetting)

# Character matching is a powerful way to create lookup tables. 
# Say you want to convert abbreviations:

# -------------------------------------------------------------------------

x <- c("m", "f", "u", "f", "f", "m", "m")
x

# -------------------------------------------------------------------------
lookup <- c(m = "Male", f = "Female", u = NA)
lookup

# -------------------------------------------------------------------------

lookup[x]

# -------------------------------------------------------------------------

# If you don't want names use unname
unname(lookup[x])

# -------------------------------------------------------------------------

# Matching and merging by hand (integer subsetting)

# You can also have more complicated lookup tables with 
# multiple columns of information. For example, suppose we have
# a vector of integer grades, and a table that describes 
# their properties

# -------------------------------------------------------------------------

grades <- c(1, 2, 2, 3, 1)
grades

info <- data.frame(
  grade = 3:1,
  desc = c("Excellent", "Good", "Poor"),
  fail = c(F, F, T)
)
info

# -------------------------------------------------------------------------

# Then, let’s say we want to duplicate the info table so that 
# we have a row for each value in grades.

# An elegant way to do this is by combining match() and integer subsetting 

# match(needles, haystack) returns the position where each needle is found in the haystack.
#match(a,b) = return the postion where a is found in b

# -------------------------------------------------------------------------
id <- match(grades, info$grade)
info[id, ]

# This removes duplicated grade values
info[info$grade %in% grades,]


# -------------------------------------------------------------------------

# Random samples and bootstraps (integer subsetting)

#You can use integer indices to randomly sample or bootstrap a vector
# or data frame. Just use sample(n) to generate a random permutation of 1:n, 
# and then use the results to subset the values:

# -------------------------------------------------------------------------

df <- data.frame(x = c(1, 2, 3, 1, 2), y = 5:1, z = letters[1:5])
df
df[]

# -------------------------------------------------------------------------

#Randomly reorder 
df[sample(nrow(df)),]
#Select 3 random rows 
df[sample(nrow(df), 3),]

# select 6 bootstrap replicates 
df[sample(nrow(df),6, replace = TRUE),]

# -------------------------------------------------------------------------

      # Ordering (integer subsetting)
# order() takes a vector as its input and returns an 
# integer vector describing how to order the subsetted vector
x <- c("b", "c", "a")
order(x)
x[order(x)]
x[c(3,1,2)]

# -------------------------------------------------------------------------

# To break ties, you can supply additional variables to order(). You can also #change the order from ascending to descending by using 
#decreasing = TRUE. By #default, any missing values will be put 
#at the end of the vector; however, you can remove them with 
#na.last = NA or put them at the front with na.last = FALSE.

# -------------------------------------------------------------------------

# Randomly reorder df
df2 <- df[sample(nrow(df)), 3:1]
df2
# order the row using var x
df2[order(df2$x),]

# order the column names
df2[, order(names(df2))]

# -------------------------------------------------------------------------

#Expanding aggregated counts (integer subsetting)

#Sometimes you get a data frame where identical rows 
#have been collapsed into one and a count column has been added. 
#rep() and integer subsetting make it easy to uncollapse, 
#because we can take advantage of rep()s vectorisation: 
#rep(x, y) repeats x[i] y[i] times.

# -------------------------------------------------------------------------

df <- data.frame(x = c(2, 4, 1), y = c(9, 11, 6), n = c(3, 5, 1))
df
rep(1:nrow(df), df$n)
df[rep(1:nrow(df), df$n), ]

# -------------------------------------------------------------------------

#Removing columns from data frames (character )
#There are two ways to remove columns from a data frame.
#You can set individual columns to NULL:
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df$z <- NULL
df

# -------------------------------------------------------------------------

# Or you can subset to return only the columns you want:
df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df[c("x", "y")]

# If you only know the columns you don’t want, 
# use set operations to work out which columns to keep:
  
df[setdiff(names(df), "z")]  

# -------------------------------------------------------------------------

#Selecting rows based on a condition (logical subsetting)

# -------------------------------------------------------------------------

# Because logical subsetting allows you to easily combine conditions 
# from multiple columns, it’s probably the most commonly used 
# technique for extracting rows out of a data frame.


# -------------------------------------------------------------------------

head(mtcars)
mtcars[mtcars$gear ==5, ]
mtcars[mtcars$gear==5 & mtcars$cyl == 4, ]

# -------------------------------------------------------------------------

# Remember to use the vector boolean operators & and |, 
# not the short-circuiting scalar operators && and ||, 
# which are more useful inside if statements. And don’t 
# forget De Morgan’s laws, which can be useful to simplify negations:
  
# !(X & Y) is the same as !X | !Y
# !(X | Y) is the same as !X & !Y
# For example, !(X & !(Y | Z)) 
# simplifies to !X | !!(Y|Z), and then to !X | Y | Z.


# -------------------------------------------------------------------------

#Boolean algebra versus sets (logical and integer )


# -------------------------------------------------------------------------

# Using set operations is more effective when:
#   
#   You want to find the first (or last) TRUE.
# 
# You have very few TRUEs and very many FALSEs; a set representation may be #faster and require less storage.

# -------------------------------------------------------------------------

# which() allows you to convert a Boolean representation to an integer #representation. There’s no reverse operation in base R but we can easily #create one:
 
x <- sample(10) < 4 
x  
which(x)
unwich <- function(x,n){
  out <- rep_len(FALSE, n)
  out[x] <- TRUE
  out
}
unwich(which(x),10)
which(x)
x

# -------------------------------------------------------------------------

#Let’s create two logical vectors and their integer equivalents, and then #explore the relationship between Boolean and set operations.

(x1 <- 1:10 %% 2 == 0)
(x2 <- which(x1))
(y1 <- 1:10 %%5 == 0)
(y2 <- which(y1))


# -------------------------------------------------------------------------

x1 & y1
intersect(x2,y2)

# -------------------------------------------------------------------------

union(x2,y2)

# -------------------------------------------------------------------------
x1 & !y1

# -------------------------------------------------------------------------

xor(x1,y1)

# -------------------------------------------------------------------------

setdiff(union(x2,y2), intersect(x2,y2))

# -------------------------------------------------------------------------


