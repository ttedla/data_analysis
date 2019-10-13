
              # annonymous functions
#This are fucntions without names
# -------------------------------------------------------------------------

typeof(sum)
typeof(`[`)
formals(sum)
formals(`[`)
body(sum)
environment(sum)

# -------------------------------------------------------------------------

sapply(mtcars, function(x) length(unique(x)))

# -------------------------------------------------------------------------

lapply(mtcars, function(x) length(unique(x)))

# -------------------------------------------------------------------------

unlist(lapply(mtcars, function(x) length(unique(x))))

# -------------------------------------------------------------------------


Filter(function(x) !is.numeric(x), mtcars)

# -------------------------------------------------------------------------

str(mtcars)

# -------------------------------------------------------------------------


df <- data.frame(a = c(1,2,3), b = c("aC", "ab", "ac"), stringsAsFactors = F)

# -------------------------------------------------------------------------
df
str(df)

# -------------------------------------------------------------------------
install.packages("searchable")
# replace a row values that ends with "C" with 
library(searchable)
df[df$b ==(Filter(function(x) endsWith(x, "C"), df$b)), ]["b"] <- "aac"
df
# -------------------------------------------------------------------------
?ignore.case


df[df$b ==(Filter(function(x) endsWith(x, "c"), ignore.case(df$b))), ]["b"]


df[endsWith(tolower(df$b), "c"), ]["b"] <- c("aD", "ad")

df
# -------------------------------------------------------------------------
