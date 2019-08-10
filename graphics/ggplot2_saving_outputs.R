
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
                # Output # 

# -------------------------------------------------------------------------

p <- ggplot(mpg, aes(displ, hwy, color=factor(cyl))) + 
  geom_point()

# -------------------------------------------------------------------------

# render it on screen #
print(p)

# -------------------------------------------------------------------------

# save png to disk
ggsave("plot.png", width = 5, height = 5)

# -------------------------------------------------------------------------

# briefly describe the structure with summary
summary(p)

# -------------------------------------------------------------------------

# Save a cached copy of it to disk, with saveRDS() . This saves a complete
# copy of the plot object, so you can easily re-create it with readRDS() .

# -------------------------------------------------------------------------

saveRDS(p, "plot.rds")
q <- readRDS("plot.rds")

# -------------------------------------------------------------------------


