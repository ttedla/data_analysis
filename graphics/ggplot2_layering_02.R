
# -------------------------------------------------------------------------

library(ggplot2)
library(dplyr)
# -------------------------------------------------------------------------

             # data 
# The data on each layer doesn’t need to be the same, and it’s often useful
# to combine multiple datasets in a single plot.

# -------------------------------------------------------------------------

# Loess short for Local Regression is a non-parametric approach that fits multiple #regressions in local neighborhood. 
mod <- loess(hwy ~ displ, data = mpg)

# generate a sequence of 50 nos using min-max of displ
grid <- tibble(displ = seq(min(mpg$displ), max(mpg$displ), length = 50))

# use the mod to predict a value for hwy
grid$hwy <- predict(mod, newdata = grid)

# grid output 

# -------------------------------------------------------------------------

grid


# -------------------------------------------------------------------------

# Next, I’ll isolate observations that are particularly far away from their
# predicted values:

# -------------------------------------------------------------------------
std_resid <- resid(mod)/ mod$s

outlier <- filter(mpg, abs(std_resid) >2)
outlier

# -------------------------------------------------------------------------

# 
# I’ve generated these datasets because it’s common to enhance the display
# of raw data with a statistical summary and some annotations. With these
# new datasets, I can improve our initial scatterplot by overlaying a smoothed
# line, and labelling the outlying points:

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() + 
  geom_line(data = grid, color="blue", size = 1.5) + 
  geom_text(data = outlier, aes(label=model))


# -------------------------------------------------------------------------

# We could define the same plot in another way, omitting the default dataset, 
# and specifying a dataset for each layer

# -------------------------------------------------------------------------

ggplot(mapping = aes(displ, hwy)) + 
  geom_point(data = mpg) + 
  geom_line(data = grid, color="blue", size=1.5) + 
  geom_text(data = outlier, aes(label = model))
