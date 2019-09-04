
# -------------------------------------------------------------------------

library(tidyr)
library(DSR)

# -------------------------------------------------------------------------

View(who)

# -------------------------------------------------------------------------

# The most unique feature of who is its coding system. Columns five through sixty encode four separate pieces of information in their column names:


# The first three letters of each column denote whether the column contains new or old cases of TB. In this data set, each column contains new cases.

# The next two letters describe the type of case being counted. We will treat each of these as a separate variable.
# rel stands for cases of relapse
# ep stands for cases of extrapulmonary TB
# sn stands for cases of pulmonary TB that could not be diagnosed by a pulmonary smear (smear negative)
# sp stands for cases of pulmonary TB that could be diagnosed be a pulmonary smear (smear positive)
# The sixth letter describes the sex of TB patients. The data set groups cases by males (m) and females (f).
# 
# The remaining numbers describe the age group of TB patients. The data set groups cases into seven age groups:
# 014 stands for patients that are 0 to 14 years old
# 1524 stands for patients that are 15 to 24 years old
# 2534 stands for patients that are 25 to 34 years old
# 3544 stands for patients that are 35 to 44 years old
# 4554 stands for patients that are 45 to 54 years old
# 5564 stands for patients that are 55 to 64 years old
# 65 stands for patients that are 65 years old or older
# Notice that the who data set is untidy in multiple ways. First, the data appears to contain values in its column names. We can move the values into their own column with gather(). This will make it easy to separate the values combined in each code.

# -------------------------------------------------------------------------

head(who, 1)

who <- gather(who, "code", "value", 5:60)
head(who, 5)

# -------------------------------------------------------------------------

who <- separate(who, code, c("new", "var", "sexage"))
head(who,5)

# -------------------------------------------------------------------------

# The second pass will split sexage after the first character to create a sex column and an age column.

who <- separate(who, sexage, c("sex", "age"), sep = 1)
head(who,5)

# -------------------------------------------------------------------------

table(who$var)

who <- spread(who, var, value)
head(who,5)

# -------------------------------------------------------------------------

# The who data set is now tidy. It is far from sparkling (for example, it contains several redundant columns), but it will now be much easier to work with in R. We will continue to work with this tidy version of who in Section 3.7, where we will remove the redundant columns and calculate new variables.

# -------------------------------------------------------------------------

trt <- dplyr::tibble(
  var = paste0(rep(c("beg", "end"), each = 3), "_", rep(c("a", "b", "c"))),
  val = c(1, 4, 2, 10, 5, 11)
)
trt

# -------------------------------------------------------------------------

separate(trt, var, c("time", "treatment"), "_")

# -------------------------------------------------------------------------

# If the variables are combined in a more complex form, have a look at
#  extract() . Alternatively, you might need to create columns individually your-
#    self using other calculations. A useful tool for this is mutate()

# -------------------------------------------------------------------------

# you typically apply the functions in the same order: gather() , separate() and spread() (although you might not use all three).

# -------------------------------------------------------------------------

bpd <- readr::read_table(
"name   age   start       week1   week2   week3
 Anne   35    2014-03-27  100/80  100/75  120/90
 Ben    41    2014-03-09  110/65  100/65  135/70
 Carl   33    2014-04-02  125/80  <NA>    <NA>
", na = "<NA>")


# -------------------------------------------------------------------------
bpd
names(bpd)
# The first step is to convert from Cartesian to indexed form:
bpd_1 <- gather(bpd, week, bp, week1:week3)
bpd_1

# -------------------------------------------------------------------------

bpd_2 <- separate(bpd_1, bp, into = c("sys", "dia"), sep = "/")
bpd_2

# -------------------------------------------------------------------------

?extract
bpd_3 <- extract(bpd_2, week, "week", "(\\d)", convert = TRUE)
bpd_3

df <- data.frame(x = c(NA, "a-b", "a-d", "b-c", "d-e"))
df
df %>% extract(x, "A", "([[:alnum:]]*)")
df %>% extract(x, c("A", "B"), "([[:alnum:]]+)-([[:alnum:]]+)")


# -------------------------------------------------------------------------
library(dbplyr)
bpd_4 <- arrange(bpd_3, name, week)
bpd_4


# -------------------------------------------------------------------------

scores <- dplyr::data_frame(
  person = rep(c("Greg", "Sally", "Sue"), each = 2),
  time
  = rep(c("pre", "post"), 3),
  test1 = round(rnorm(6, mean = 80, sd = 4), 0),
  test2 = round(jitter(test1, 15), 0)
)
scores

# -------------------------------------------------------------------------

scores_1 <- gather(scores, "test", "score", c(test1, test2))
scores_1

# -------------------------------------------------------------------------

scores_2 <- spread(scores_1, time, score)
scores_2

# -------------------------------------------------------------------------

# An indication that we've a tidy dataset is calculating some basic stats
# diff between pre and post scores
scores_3 <- mutate(scores_2, diff = post-pre)
scores_3

# -------------------------------------------------------------------------

# And it’s similarly easy to plot:

ggplot(scores_3, aes(person, diff, color = test)) +
  geom_hline(size = 2, colour = "white", yintercept = 0) +
  geom_point() +
  geom_path(aes(group = person), colour = "grey50",
            arrow = arrow(length = unit(0.25, "cm")))

# -------------------------------------------------------------------------
