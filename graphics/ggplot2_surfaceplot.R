
# -------------------------------------------------------------------------

            # Surface Plots #

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# ggplot2 does not support true 3d surfaces. However, it does support many
# common tools for representing 3d surfaces in 2d: contours, coloured tiles and
# bubble plots.

# -------------------------------------------------------------------------

ggplot(faithfuld, aes(eruptions, waiting)) + 
  geom_contour(aes(z=density, color=..level..))

# -------------------------------------------------------------------------

ggplot(faithfuld, aes(eruptions, waiting)) +
  geom_raster(aes(fill = density))

# -------------------------------------------------------------------------

# Bubble plots work better with fewer observations
small <- faithfuld[seq(1, nrow(faithfuld), by = 10), ]
head(small,10)
ggplot(small, aes(eruptions, waiting)) +
  geom_point(aes(size = density), alpha = 1/3) +
  scale_size_area()

# -------------------------------------------------------------------------


