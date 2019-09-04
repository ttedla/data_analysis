
# -------------------------------------------------------------------------

library(ggplot2)
library(maps)
library(mapproj)
# -------------------------------------------------------------------------

      # Map Projections with coord_map()

# -------------------------------------------------------------------------

# coord quickmap() is a quick and dirty approximation that sets the aspect
# ratio to ensure than 1m of latitude and 1m of longitude are the same
# distance in the middle of the plot. These is a reasonable place to start for
# smaller regions, and is very faster.

# -------------------------------------------------------------------------

# Prepare a map of NZ
nzmap <- ggplot(map_data("nz"), aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  xlab(NULL) + ylab(NULL)

# -------------------------------------------------------------------------
# Plot it in cartesian coordinates
nzmap

# -------------------------------------------------------------------------

# With the aspect ratio approximation
nzmap + coord_quickmap()

# -------------------------------------------------------------------------

world <- map_data("world")
worldmap <- ggplot(world, aes(long, lat, group = group)) +
  geom_path() +
  scale_y_continuous(NULL, breaks = (-2:3) * 30, labels = NULL) +
  scale_x_continuous(NULL, breaks = (-4:4) * 45, labels = NULL)

# -------------------------------------------------------------------------

worldmap + coord_map()
# Some crazier projections
worldmap + coord_map("ortho")
worldmap + coord_map("stereographic")
