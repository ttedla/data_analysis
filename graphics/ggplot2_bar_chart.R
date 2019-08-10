
# -------------------------------------------------------------------------

# -------------------------------------------------------------------------
# The variables are mostly self-explanatory:
# - cty and hwy record miles per gallon (mpg) for city and highway driving.
# - displ is the engine displacement in litres.
# - drv is the drivetrain: front wheel (f), rear wheel (r) or four wheel (4).
# - model is the model of car. There are 38 models, selected because they had
#   a new edition every year between 1999 and 2008.
# - class (not shown), is a categorical variable describing the "type" of car:
#   two seater, SUV, compact, etc.

# -------------------------------------------------------------------------
                # Bar Charts #

# -------------------------------------------------------------------------

# The discrete analogue of the histogram is the bar chart, geom bar() . It's easy
# to use:

library(ggplot2)

# -------------------------------------------------------------------------

ggplot(mpg, aes(manufacturer)) + 
  geom_bar()

# -------------------------------------------------------------------------
 
# The other form of bar chart is used for presummarised
# data. For example, you might have three drugs with their average effect

# -------------------------------------------------------------------------

drugs <- data.frame(
  drug = c("a", "b", "c"),
  effect = c(4.2, 9.7, 6.1)
)

# -------------------------------------------------------------------------

head(drugs)

# -------------------------------------------------------------------------

# To display this sort of data, you need to tell geom bar() to not run the
# default stat which bins and counts the data.

# -------------------------------------------------------------------------

ggplot(drugs, aes(drug, effect)) + 
  geom_bar(stat = "identity")

# -------------------------------------------------------------------------

# The same using geom_point()
ggplot(drugs, aes(drug, effect)) + 
  geom_point()
