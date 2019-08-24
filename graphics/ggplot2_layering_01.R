
# -------------------------------------------------------------------------

       # Building plot Layer by Layer 

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

      # Building a plot with default dataset and aesthetics 

# -------------------------------------------------------------------------

p <- ggplot(mpg, aes(displ, hwy))
p # there is nothing to see (we need to add a a layer)

# -------------------------------------------------------------------------
p + geom_point()

# -------------------------------------------------------------------------

# geom point() is a shortcut. Behind the scenes it calls the layer() function
# to create a new layer:
p + layer(
  mapping = NULL,
  data = NULL,
  geom = "point",
  stat = "identity",
  position = "identity"
)

# -------------------------------------------------------------------------


