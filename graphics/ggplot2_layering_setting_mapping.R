
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

              # Setting vs. Mapping

# -------------------------------------------------------------------------
# If you want appearance to be governed by a variable, put the specification
# inside aes() ; if you want override the default size or colour, put the value
# outside of aes() .
  
# sets the color to darkblue (outside aes)
ggplot(mpg, aes(cty, hwy)) +
  geom_point(colour = "darkblue")

# maps the color to a variable inside aes
ggplot(mpg, aes(cty, hwy)) +
  geom_point(aes(colour = "darkblue"))

# -------------------------------------------------------------------------
 
# A third approach is to map the value, but override the default scale:

ggplot(mpg, aes(cty, hwy)) +
  geom_point(aes(colour = "darkblue")) +
  scale_colour_identity()
# -------------------------------------------------------------------------
# It’s sometimes useful to map aesthetics to constants. For example, if you
# want to display multiple layers with varying parameters, you can “name”
# each layer:

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(aes(colour = "loess"), method = "loess", se = FALSE) +
  geom_smooth(aes(colour = "lm"), method = "lm", se = FALSE) +
  labs(colour = "Method")

# -------------------------------------------------------------------------

