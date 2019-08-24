
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

          # stats 

# -------------------------------------------------------------------------

# A statistical transformation, or stat, transforms the data, typically by sum-
#   marising it in some manner.

# -------------------------------------------------------------------------

ggplot(mpg, aes(trans, cty)) +
  geom_point() +
  stat_summary(geom = "point", fun.y = "mean", colour = "red", size = 4)

# -------------------------------------------------------------------------

ggplot(mpg, aes(trans, cty)) +
  geom_point() +
  geom_point(stat = "summary", fun.y = "mean", colour = "red", size = 4)

# -------------------------------------------------------------------------
# 
# Internally, a stat takes a data frame as input and returns a data frame as
# output, and so a stat can add new variables to the original dataset. 

# -------------------------------------------------------------------------

        # Generated Variables
ggplot(diamonds, aes(price)) + 
  geom_histogram(binwidth = 500)

ggplot(diamonds, aes(price)) + 
  geom_histogram(aes(y = ..density..), binwidth = 500)

# -------------------------------------------------------------------------

      # compare the distribution of price within cut
ggplot(diamonds, aes(price, color=cut)) + 
  geom_freqpoly(binwidth=500) + 
  theme(legend.position = "none")

ggplot(diamonds, aes(price, color=cut)) + 
  geom_freqpoly(aes(y = ..density..), binwidth=500) + 
  theme(legend.position = "none")
