
# -------------------------------------------------------------------------

            # Time Series with Line and Path Plots #

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
# Line and path plots are typically used for time series data. 
# Line plots usually have time on the x-axis, showing how
# a single variable has changed over time. Path plots show how two variables
# have simultaneously changed over time, with time encoded in the way that
# observations are connected.

# -------------------------------------------------------------------------

str(economics)

# -------------------------------------------------------------------------

# The economics dataset, which contains economic
# data on the US measured over the last 40 years.

# -------------------------------------------------------------------------

# Let's plot the rate of unemployement and un-employed. 

# -------------------------------------------------------------------------

ggplot(economics, aes(date, unemploy/pop)) + 
  geom_line()

# -------------------------------------------------------------------------

ggplot(economics, aes(date, uempmed)) + 
  geom_line()+
  geom_path()

# -------------------------------------------------------------------------
# 
# Below we plot unemployment rate vs. length of unemployment and join
# the individual observations with a path. Because of the many line crossings,
# the direction in which time flows isn’t easy to see in the first plot. In the
# second plot, we colour the points to make it easier to see the direction of
# time.

# -------------------------------------------------------------------------

ggplot(economics, aes(unemploy/pop, uempmed)) + 
  geom_path() + 
  geom_point()

# -------------------------------------------------------------------------

year <- function(x) as.POSIXlt(x)$year + 1900

# -------------------------------------------------------------------------

ggplot(economics, aes(unemploy/pop, uempmed)) + 
  geom_path(color="grey50") + 
  geom_point(aes(color=year(date)))

# -------------------------------------------------------------------------

ggplot(mpg, aes(cty, hwy)) + 
geom_point()
ggplot(mpg, aes(reorder(class, hwy), hwy)) + geom_boxplot()
