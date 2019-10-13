
# -------------------------------------------------------------------------
df1 <- read.csv("~/data_analysis/lookup_table/dataNew.csv", header = T)
df <- read.csv("~/data_analysis/lookup_table/dat_to_rep.csv", header = T)


# df1 is the lookup table
# lookup variable the name of the variable in the parent data (df)
# lookup value is the value in the parent to match agains (df) 
# newVariable is the var to be changed(df) 
# newValue is the value of newVariable matched with 
#source is additional data

# -------------------------------------------------------------------------

# To use a lookup table we need to make a names char
df2$new[df2$id=="2"] <- "Test"
df2$new[df2$id==1]<-"Test1"
df2$df1$newVariable[df2$id %in% df1$lookupValue] <- df1$newValue

# -------------------------------------------------------------------------
df1


x <- c("m", "f", "u", "f", "f", "m", "m")
lookup <- c(m = "Male", f = "Female", u = NA)
lookup[x]
