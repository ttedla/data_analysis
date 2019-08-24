
# -------------------------------------------------------------------------

        # Color

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# There are quite
# a few different ways of mapping values to colours in ggplot2: four different
# gradient-based methods for continuous values, and two methods for mapping
# discrete values.

# -------------------------------------------------------------------------

erupt <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  scale_x_continuous(NULL, expand = c(0, 0)) +
  scale_y_continuous(NULL, expand = c(0, 0)) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

erupt

# -------------------------------------------------------------------------

erupt + scale_fill_gradient(low = "white", high = "black")

# -------------------------------------------------------------------------
# 
# Use munsell::hue slice("5Y") to see the valid chroma and
# luminance values for a given hue.

munsell::hue_slice("5Y")

# -------------------------------------------------------------------------

erupt + scale_fill_gradient(
  low = munsell::mnsl("5G 9/2"),
  high = munsell::mnsl("5G 6/8")
)

# -------------------------------------------------------------------------
# 
# scale colour gradient2() and scale fill gradient2() : a three-colour gradi-
#   ent, low-med-high (red-white-blue). As well as low and high colours, these
# scales also have a mid colour for the colour of the midpoint. The midpoint
# defaults to 0, but can be set to any value with the midpoint argument.

# -------------------------------------------------------------------------

mid <- median(faithfuld$density)
erupt + scale_fill_gradient2(midpoint = mid)

# -------------------------------------------------------------------------
# 
# scale colour gradientn() and scale fill gradientn() : a custom n-colour
# gradient. This is useful if you have colours that are meaningful for your
# data

# -------------------------------------------------------------------------

erupt + scale_fill_gradientn(colours = terrain.colors(7))
erupt + scale_fill_gradientn(colours = colorspace::heat_hcl(7))
erupt + scale_fill_gradientn(colours = colorspace::diverge_hcl(7))

# -------------------------------------------------------------------------
# 
# By default, colours will be evenly spaced along the range of the data. To
# make them unevenly spaced, use the values argument, which should be a
# vector of values between 0 and 1.

# -------------------------------------------------------------------------
# 
# scale color distiller() and scale fill gradient() apply the Color-
#   Brewer colour scales to continuous data. You use it the same way as
# scale fill brewer() , described below:

# -------------------------------------------------------------------------

erupt + scale_fill_distiller()
erupt + scale_fill_distiller(palette = "RdPu")
erupt + scale_fill_distiller(palette = "YlOrBr")

# -------------------------------------------------------------------------

# All continuous colour scales have an na.value parameter that controls what
# colour is used for missing values (including values outside the range of the
# scale limits). By default it is set to grey, which will stand out when you use
# a colourful scale. If you use a black and white scale, you might want to set it
# to something else to make it more obvious.

# -------------------------------------------------------------------------

df <- data.frame(x = 1, y = 1:5, z = c(1, 3, 2, NA, 5))
p <- ggplot(df, aes(x, y)) + geom_tile(aes(fill = z), size = 5)
p
# Make missing colours invisible
p + scale_fill_gradient(na.value = NA)
# Customise on a black and white scale
p + scale_fill_gradient(low = "black", high = "white", na.value = "red")

# -------------------------------------------------------------------------


