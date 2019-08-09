
# -------------------------------------------------------------------------

# mpg includes information about the fuel economy of popular car models
# in 1999 and 2008, collected by the US Environmental Protection Agency

# -------------------------------------------------------------------------

# load the library to access the mpg dataset 
library(ggplot2)

# -------------------------------------------------------------------------

mpg

# -------------------------------------------------------------------------

# The variables are mostly self-explanatory:
  # - cty and hwy record miles per gallon (mpg) for city and highway driving.
  # - displ is the engine displacement in litres.
  # - drv is the drivetrain: front wheel (f), rear wheel (r) or four wheel (4).
  # - model is the model of car. There are 38 models, selected because they had
  #   a new edition every year between 1999 and 2008.
  # - class (not shown), is a categorical variable describing the “type” of car:
  #   two seater, SUV, compact, etc.

# -------------------------------------------------------------------------

              # Key Components # 

# -------------------------------------------------------------------------

# Every ggplot2 plot has three key components:
#     1. data
#     2. A set of aesthetic mappings between variables in the data and visual
#         properties, and
#     3. At least one layer which describes how to render each observation. 
#         Layers are usually created with a geom function.

# -------------------------------------------------------------------------

ggplot(mpg, aes(x = displ, y = hwy)) + 
  geom_point()

# -------------------------------------------------------------------------

# mpg is the data 
# aes(x = displ, y = hwy)) is aesthetic mappings (engine size (x) mapped to 
# fuel economy (y))
# geom_point is a layer describing render (points)

# -------------------------------------------------------------------------
ggplot(mpg, aes(displ, hwy)) + 
  geom_point()

# -------------------------------------------------------------------------
# The plot shows a strong correlation: as the engine size gets bigger, the fuel
# economy gets worse.
# There are also some interesting outliers: some cars with
# large engines get higher fuel economy than average.

# -------------------------------------------------------------------------


