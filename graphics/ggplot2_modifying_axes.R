
# -------------------------------------------------------------------------

library(ggplot2)

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

          # Modifying the Axes # 

# -------------------------------------------------------------------------

ggplot(mpg, aes(cty, hwy)) + 
  geom_point(alpha = 1/3)

# -------------------------------------------------------------------------

ggplot(mpg, aes(cty, hwy)) + 
  geom_point(alpha = 1/3) + 
  xlab("city driving (mpg)") + 
  ylab("highway driving (mpg)")

# -------------------------------------------------------------------------

# Remove x-axis label with NULL

# -------------------------------------------------------------------------

ggplot(mpg, aes(cty, hwy)) + 
  geom_point(alpha=1/3) + 
  xlab(NULL) + 
  ylab(NULL)

# -------------------------------------------------------------------------

            # xlim() and ylim() modify the limits of axes:# 

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_jitter(width = 0.5)

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_jitter(width = 0.5) + 
  xlim("f", "r") + 
  ylim(20, 30)

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv, hwy)) + 
  geom_jitter(width = 0.5, na.rm = TRUE) + 
  ylim(20, 30)

# -------------------------------------------------------------------------


