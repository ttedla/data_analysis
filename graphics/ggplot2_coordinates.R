
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# There are two types of coordinate system. Linear coordinate systems pre-
#   serve the shape of geoms:
#   • coord cartesian() : the default Cartesian coordinate system, where the 2d
# position of an element is given by the combination of the x and y positions.
#   • coord flip() : Cartesian coordinate system with x and y axes flipped.
#   • coord fixed() : Cartesian coordinate system with a fixed aspect ratio.

# -------------------------------------------------------------------------

# On the other hand, non-linear coordinate systems can change the shapes:
#   a straight line may no longer be straight. The closest distance between two
# points may no longer be a straight line.
# • coord map() / coord quickmap() : Map projections.
# • coord polar() : Polar coordinates.
# • coord trans() : Apply arbitrary transformations to x and y positions, after
# the data has been processed by the stat.

# -------------------------------------------------------------------------

          # Linear Coordinate Systems # 

# -------------------------------------------------------------------------

# There are three linear coordinate systems: coord cartesian() , coord flip() ,
# coord fixed() .

# -------------------------------------------------------------------------

        # Zooming into a Plot with coord_cartesian()

# -------------------------------------------------------------------------

#coord_cartesian() has arguments xlim and ylim.

# -------------------------------------------------------------------------

base <- ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth()
base

# -------------------------------------------------------------------------

# Scaling to 5--7 throws away data outside that range
base + scale_x_continuous(limits = c(5, 7))

# -------------------------------------------------------------------------

# Zooming to 5--7 keeps all the data but only shows some of it
base + coord_cartesian(xlim = c(5, 7))

# -------------------------------------------------------------------------

            # Flipping the Axes with coord_flip()

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  geom_smooth()

# -------------------------------------------------------------------------

# Exchanging cty and displ rotates the plot 90 degrees, but the smooth
# is fit to the rotated data.
ggplot(mpg, aes(cty, displ)) +
  geom_point() +
  geom_smooth()

# -------------------------------------------------------------------------

# coord_flip() fits the smooth to the original data, and then rotates
# the output
ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  geom_smooth() +
  coord_flip()

# -------------------------------------------------------------------------


