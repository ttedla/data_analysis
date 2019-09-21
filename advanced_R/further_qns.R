df <- data.frame(id = letters[1:10],
                 a = c(1,2,3,4,5,7,7,8,9,10), 
                 b = c(2,3,3,5,5,7,9,8,7,1), 
                 c = c(1,3,2,4,5,7,2,4,9,1), 
                 stringsAsFactors = F)
df1 <- df[2:ncol(df)]


freq_count <- function(x) {
  uniq <- unique(x)
  freq_occ <- tabulate(match(x, uniq))
  #I(matrix(uniq[freq_occ==max(freq_occ)], max(freq_occ)))
  I(matrix(c(uniq[freq_occ==max(freq_occ)],max(freq_occ))))
}


# -------------------------------------------------------------------------
data.frame(a = mylist, y = I(list(1:2, 1:3, 1:4)))
df1
?apply
args(freq_count)
df1$new <- apply(df1, 1, freq_count) 
df1[1, "new"][[1]][lengths(df1[1, "new"])]
df1  
lengths(df1[7, "new"])
ncol(df1) -1!=lengths(df1[7, "new"])
str(df1)
mydf <- data.frame(a = mylist, y = I(list(1:2, 1:3, 1:4)))

args(sum)
test_fn <- function(df1, n) {
  df1[n, "new"][[1]][lengths(df1[n, "new"])]
}
ifelse((test_fn(df1,7) == 1), df1[7, "new"], "NA")

df1[3, "new"][[]]
lengths(df1[3, "new"])
df1

library(dplyr)
near(sqrt(2)^2, 2)

df1$new <- apply(df1, 1, table)
str(df1)
(df1[7, "new"])
df1 <- df2
table(I(matrix((df1[7,]))))

my_df <- df1["new"] 
dput(my_df)
my_df[7,1]
as.data.frame.matrix(df1[7, "new"])
?table
filter(df1, new >1)
df1[,df1[3, "new"][[1]][1]>1]
df1[3,]
df1[df1[1,"a"]==1]
dput(df1$new)

as.integer(names(df1[4, "new"][[1]][1])) >=2
df1[, "new"][df1[ ,"new"][[1]][] >=2]
df1
as.integer(names(df1[, "new"][[1]][df1[, "new"][[1]][]==3]))
df1[4, "new"][[1]]
df1[, "new"]
df1
df1$new
df1$new
df1[10,]
dput(head(df1))

class(df1[4, "new"][[1]])[1]

df1
class(sapply(df1$new, function(x) as.numeric(names(x[x >= 2]))))

df1[4, "new"][[1]][]>=2
as.integer(names(df1[6, "new"][[1]][df1[6, "new"][[1]][]>=2]))
COND <- 2
df1$eq.3 <- ifelse(unlist(sapply(df1$new, function(x) as.numeric(names(x[x ==3])))), NA,T)

sapply(ifelse(list, function), T, F)
df1
subset(df1, name %in% names(df1[, "new"][df1[, "new"] < 3]))
(df1[1, "new"])

# -------------------------------------------------------------------------

df <- data.frame(id=seq(1,15,1),time=c(50, 101, 45, 35, 200, 78, 30, 149, 156,58, 39, 10, 65, 38, 20), test = c(F,T,F,F,T,F,F,T,T,F,F,F,F,F,F))
df
library(ggplot2)
ggplot(data=df) +
  geom_segment(aes(x=as.factor(id), xend=as.factor(id), y=0, yend=time), size = 4) +
  facet_grid(test~., scales = "free", space = "free") +
  coord_flip()


ggplot(data=df, aes(x=as.factor(id), y=time)) +
  geom_segment(aes(xend=id, y=0, yend=time), size = 4) +
  facet_grid(test~., scales = "free", space = "free") +
  coord_flip()
str(df)

ggplot(data=df) +
  geom_segment(aes(x=as.factor(id), xend=as.factor(id), y=0, yend=time), size = 4) +
  facet_grid(test~., scales = "free", space = "free") +
  coord_flip()


df <- data.frame(Year = c(2001, 2000, 2003), 
                 `US$` = c(12, 13, 14),
                 Euros = c(13, 15, 19), 
                 Country = c("US", "UK", "China"), 
                 Regions = c("America", "Europe", "Asia"))

attributes(structure(1:5 , comment="my_attr"))
args(structure)
structure(1:6, dim = 2:3)


mostatt(structure(1:5 , comment="my_attr"))
?attributes
str(1:5, comment = "x")
x <- 1:10
attr(x,"dim") <- c(2, 5)
attributes(x)
?structure
?structure
structure(x)
?comment
attributes(structure(1:5, attributes = "my_attr"))
print("A")

structure(1:5, attributes = "my_attr")

attributes(structure(1:5, attributes = "my_attr"))
  
structure(1:5, attributes = "my_attr")
attributes(structure(1:5, attributes = "my_attr"))
attributes(structure(1:5, attributes = "my_attr"))
