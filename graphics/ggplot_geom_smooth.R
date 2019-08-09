
# -------------------------------------------------------------------------

              # Plot Geoms #

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# 1. geom_smooth() fits a smoother to the data and displays the smooth and its
#               standard error.
# 2. geom_boxplot() produces a box-and-whisker plot to summarise the distribution
#               of a set of points.
# 3. geom_histogram() and geom freqpoly() show the distribution of continuous
#               variables.
# 4. geom_bar() shows the distribution of categorical variables.
# 5. geom_path() and geom_line() draw lines between the data points. A line plot
#     is constrained to produce lines that travel from left to right, while paths
#     can go in any direction. Lines are typically used to explore how things
#     change over time.

# -------------------------------------------------------------------------

      # Adding a Smoother to a Plot #

# -------------------------------------------------------------------------

# If you have a scatterplot with a lot of noise, it can be hard to see the dominant
# pattern. In this case it’s useful to add a smoothed line to the plot with
# geom_smooth() :

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth()

# -------------------------------------------------------------------------

# This overlays the scatterplot with a smooth curve, including an assessment
# of uncertainty in the form of point-wise confidence intervals shown in grey. If
# you’re not interested in the confidence interval, 
# turn it off with geom smooth(se = FALSE) .

# -------------------------------------------------------------------------
# Turining off point wise confidence interval
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth(se=FALSE)

# -------------------------------------------------------------------------
# An important argument to geom_smooth() is the method , which allows you
# to choose which type of model is used to fit the smooth curve:
#  --> method = "loess" , the default for small n, uses a smooth local regression
# (as described in ?loess ). The wiggliness of the line is controlled by the span
# parameter, which ranges from 0 (exceedingly wiggly) to 1 (not so wiggly).

# -------------------------------------------------------------------------

?loess

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth(span=0.2)

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) + 
  geom_point()+
  geom_smooth(span=1)

# -------------------------------------------------------------------------

# Loess does not work well for large datasets (it’s O(n^2 ) in memory), so an
# alternative smoothing algorithm is used when n is greater than 1000.
# *** method = "gam" fits a generalised additive model provided by the mgcv
# package. You need to first load mgcv, then use a formula like 
# formula = y ~ s(x) or y ~ s(x, bs = "cs") (for large data). This is what ggplot2 
# uses when there are more than 1000 points.

# -------------------------------------------------------------------------
# to add generalised additive model
library(mgcv)

# -------------------------------------------------------------------------
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth(method = "gam", formula = y ~ s(x))

# -------------------------------------------------------------------------

# method = "lm" fits a linear model, giving the line of best fit.
ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth(method = "lm")

# -------------------------------------------------------------------------

# method = "rlm" works like lm() , but uses a robust fitting algorithm so that
# outliers don’t affect the fit as much. It’s part of the MASS package, so
# remember to load that first.
library(MASS)

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_smooth(method = "rlm")

# -------------------------------------------------------------------------


