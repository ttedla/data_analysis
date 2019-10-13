
# -------------------------------------------------------------------------

        # cut function 

# -------------------------------------------------------------------------

clinical.trial <- data.frame(
  patient = 1:100,              
  age = rnorm(100, mean = 60, sd = 8),
  year.enroll = sample(paste("19", 85:99, sep = ""),100, replace = TRUE))

# -------------------------------------------------------------------------

str(clinical.trial)
names(clinical.trial)

# -------------------------------------------------------------------------

# We can make age a factor 

# -------------------------------------------------------------------------

# Let's use cut to break up age into 4 intervals.

# -------------------------------------------------------------------------

c1 <- cut(clinical.trial$age, breaks = 4)
table(c1)


# -------------------------------------------------------------------------

# year.enroll is a factor, so must convert to numeric first!

# -------------------------------------------------------------------------

c2 <- cut(as.numeric(as.character(clinical.trial$year.enroll)), breaks = 3)
table(c2)

# -------------------------------------------------------------------------

# specify break points explicitly using seq function

# -------------------------------------------------------------------------

seq(30,80,10)

c1 <- cut(clinical.trial$age, breaks = seq(30,80, by = 10))
table(c1)



df <- clinical.trial
str(clinical.trial)


# -------------------------------------------------------------------------

age.cat <- function(x, lower = 0, upper, by = 10,
                    sep = "-", above.char = "+") {
  
  labs <- c(paste(seq(lower, upper - by, by = by),
                  seq(lower + by - 1, upper - 1, by = by),
                  sep = sep),
            paste(upper, above.char, sep = ""))
  
  cut(floor(x), breaks = c(seq(lower, upper, by = by), Inf),
      right = FALSE, labels = labs)
}


table(age.cat(clinical.trial$age, upper =70))
age.cat(clinical.trial$age, upper = 70)


# -------------------------------------------------------------------------

table(age.cat(clinical.trial$age, lower = 30, upper = 70, by = 5))
