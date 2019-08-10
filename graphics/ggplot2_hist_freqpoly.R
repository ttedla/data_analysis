
# -------------------------------------------------------------------------

          # Histograms and Frequency Polygons # 

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
library(ggplot2)

# -------------------------------------------------------------------------
 
# Histograms and frequency polygons show the distribution of a single numeric
# variable. They provide more information about the distribution of a single
# group than boxplots do, at the expense of needing more space.

# -------------------------------------------------------------------------

ggplot(mpg, aes(hwy)) + 
  geom_histogram()

# -------------------------------------------------------------------------

      # frequency polygon

# -------------------------------------------------------------------------

ggplot(mpg, aes(hwy)) + 
  geom_freqpoly()

# -------------------------------------------------------------------------

# You can control the width of the bins with the binwidth argument (if you
# don't want evenly spaced bins you can use the breaks argument). It is very
# important to experiment with the bin width. The default just splits your
# data into 30 bins, which is unlikely to be the best choice. You should always
# try many bin widths, and you may find you need multiple bin widths to tell
# the full story of your data.

# -------------------------------------------------------------------------
ggplot(mpg, aes(hwy)) + 
  geom_freqpoly(binwidth = 2.5)

ggplot(mpg, aes(hwy)) + 
  geom_freqpoly(binwidth=1)

# -------------------------------------------------------------------------

# To compare the distributions of different subgroups, you can map
# a categorical variable to either fill (for geom histogram() ) or colour (for
# geom freqpoly() ). It’s easier to compare distributions using the frequency
# polygon because the underlying perceptual task is easier. You can also use
# facetting: this makes comparisons a little harder, but it’s easier to see the
# distribution of each group.

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, color=drv)) + 
geom_freqpoly(binwidth = 0.5)

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, fill=drv)) + 
  geom_histogram(binwidth = 0.5) + 
  facet_wrap(~drv, ncol = 1)


# -------------------------------------------------------------------------


