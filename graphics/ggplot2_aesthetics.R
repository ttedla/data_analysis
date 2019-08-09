
# -------------------------------------------------------------------------

          # Colour, Size, Shape and Other Aesthetic Attributes

# -------------------------------------------------------------------------
library(ggplot2)

# -------------------------------------------------------------------------

# To add additional variables to a plot, we can use other aesthetics like colour,
# shape, and size

# -------------------------------------------------------------------------

# aes(displ, hwy, colour = class)
# aes(displ, hwy, shape = drv)
# aes(displ, hwy, size = cyl)

# -------------------------------------------------------------------------

# to learn more about the outlying classes we could map class variable to color

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, cty, color=class)) + 
  geom_point()

# -------------------------------------------------------------------------

# The legend allows us to read data values from the colour, showing us that 
# the group of cars with unusually high fuel economy for their engine size 
# are two seaters: cars with big engines, but lightweight bodies.

# -------------------------------------------------------------------------

# If you want to set an aesthetic to a fixed value, without scaling it, do so
# in the individual layer outside of aes() . Compare the following two plots:

# -------------------------------------------------------------------------
ggplot(mpg, aes(displ, hwy)) + geom_point(aes(colour = "blue"))

#The value "blue" is scaled to a pinkish colour, and a legend is added.
# -------------------------------------------------------------------------


ggplot(mpg, aes(displ, hwy)) + geom_point(color="blue")

# The points are given the R colour blue. 
# -------------------------------------------------------------------------

