
# -------------------------------------------------------------------------

                # Boxplots and Jittered Points #

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# When a set of data includes a categorical variable and one or more continuous
# variables, you will probably be interested to know how the values of the
# continuous variables vary with the levels of the categorical variable.

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

# Say we're interested in seeing how fuel economy varies within car class. 
# We might start with a scatterplot like this:

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_point()

# -------------------------------------------------------------------------

# Jittering, geom_jitter() , adds a little random noise to the data which can
# help avoid overplotting.

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_jitter()

# -------------------------------------------------------------------------

# Boxplots, geom_boxplot() , summarise the shape of the distribution with a
# handful of summary statistics.

# -------------------------------------------------------------------------
ggplot(mpg, aes(drv, hwy)) + 
  geom_boxplot()

# -------------------------------------------------------------------------

# Violin plots, geom_violin() , show a compact representation of the "density"
# of the distribution, highlighting the areas where more points are found.

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_violin()

# -------------------------------------------------------------------------


