
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# Polar Coordinates with coord polar() # 

# -------------------------------------------------------------------------

# The theta argument determines which position variable is
# mapped to angle (by default, x) and which to radius.

# -------------------------------------------------------------------------

# The code below shows how we can turn a bar into a pie chart or a bullseye
# chart by changing the coordinate system.

# -------------------------------------------------------------------------

base <- ggplot(mtcars, aes(factor(1), fill = factor(cyl))) +
  geom_bar(width = 1) +
  theme(legend.position = "none") +
  scale_x_discrete(NULL, expand = c(0, 0)) +
  scale_y_continuous(NULL, expand = c(0, 0))
base

# -------------------------------------------------------------------------

# Pie chart
base + coord_polar(theta = "y")


# -------------------------------------------------------------------------

# The bullseye chart
base + coord_polar()

# -------------------------------------------------------------------------


