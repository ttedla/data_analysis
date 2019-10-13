
# -------------------------------------------------------------------------

          # merge intro

# -------------------------------------------------------------------------

df1 <- data.frame(Make = c("Honda", "BMW"), 
                  Num.Models = c(63, 10))
df2 <- data.frame(Make = c("Ford", "Tesla"), 
                  Num.Models = c(26, 4))

# -------------------------------------------------------------------------

          # rbind - creates duplicated rows 
          # must have equal no of cols
          
rbind(df1,df2)

            # reordering the df doesn't affect rbind
df1_reordered <- df1[, c(2,1)]
rbind(df1_reordered, df2)            

# -------------------------------------------------------------------------
models <- rbind(df1,df2)
names(models)

sales <- data.frame(Make = models$Make)
sales$Make = models$Make
sales$Sales <- c(119157, 25908, 188328, 29975)
sales

# -------------------------------------------------------------------------


cbind(models, sales)

# creates redundant colummn

# -------------------------------------------------------------------------

3. Functionals
4. split
5. reshape data (melt)


