
# -------------------------------------------------------------------------

        # aesthetic mappings 

# -------------------------------------------------------------------------
        
# aes() , describe how variables are
# mapped to visual properties or aesthetics. aes() takes a sequence of
# aesthetic-variable pairs like this:

# -------------------------------------------------------------------------

  # aes(x = displ, y = hwy, colour = class) equivalent to 
  # aes(displ, hwy, colour = class)

# -------------------------------------------------------------------------
# While you can do data manipulation in aes() , e.g. aes(log(carat),
# log(price)) , it’s best to only do simple calculations. It’s better to move com-
# plex transformations out of the aes() call and into an explicit dplyr::mutate()
# call,

# -------------------------------------------------------------------------

# Never refer to a variable with $ (e.g., diamonds$carat ) in aes() . This breaks
# containment, so that the plot no longer contains everything it needs, and
# causes problems if ggplot2 changes the order of the rows, as it does when
# facetting.

# -------------------------------------------------------------------------

# Specifying the Aesthetics in the Plot vs. in the Layers

# -------------------------------------------------------------------------
library(ggplot2)
            # aesthetics inside aes
ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point()
          
          # aesthetics inside a layer 
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class))
      
    # in both 
ggplot(mpg, aes(displ)) +
  geom_point(aes(y = hwy, colour = class))

    # inside another layer 
ggplot(mpg) +
  geom_point(aes(displ, hwy, colour = class))

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy, colour = class)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(colour = class)) +
  geom_smooth(method = "lm", se = FALSE) +
  theme(legend.position = "none")
