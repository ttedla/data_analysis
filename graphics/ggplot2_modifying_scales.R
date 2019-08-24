
# -------------------------------------------------------------------------

        # Modifying Scales # 

# -------------------------------------------------------------------------

    # Scales control the mapping from data to aesthetics.
    # Scales also provide the tools that let you read the plot: the axes and legends.


# -------------------------------------------------------------------------

library(ggplot2)
# A scale is required for every aesthetic used on the plot. When you write:
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class))

# What actually happens is this:
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class)) +
  scale_x_continuous() +
  scale_y_continuous() +
  scale_colour_discrete()

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class)) +
  scale_x_continuous("A really awesome x axis ") +
  scale_y_continuous("An amazingly great y axis ")

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_x_continuous("Label 1") +
  scale_x_continuous("Label 2")
#> Scale for 'x' is already present. Adding another scale for 'x',
#> which will replace the existing scale.

# -------------------------------------------------------------------------

# You can also use a different scale altogether:
ggplot(mpg, aes(displ, hwy)) + 
  geom_point(aes(color = class)) + 
  scale_x_sqrt() +
  scale_color_brewer()

# -------------------------------------------------------------------------


