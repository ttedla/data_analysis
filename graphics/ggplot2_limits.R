
# -------------------------------------------------------------------------

          # Limits # 

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

df <- data.frame(x = 1:3, y = 1:3)
base <- ggplot(df, aes(x, y)) + geom_point()

# -------------------------------------------------------------------------

base

# -------------------------------------------------------------------------

base + scale_x_continuous(limits = c(1.5, 2.5))

# -------------------------------------------------------------------------

base + scale_x_continuous(limits = c(0,4))

# -------------------------------------------------------------------------

# xlim(10, 20) : a continuous scale from 10 to 20
# ylim(20, 10) : a reversed continuous scale from 20 to 10
# xlim("a", "b", "c") : a discrete scale
# xlim(as.Date(c("2008-05-01", "2008-08-01"))) : a date scale from May 1 to
# August 1 2008.

# -------------------------------------------------------------------------

base + xlim(0,4)
base + xlim(4,0)
base + lims(x = c(0,4))

# -------------------------------------------------------------------------
# 
# The range of the axes actually extends a little bit past the limits that you’ve specified. This ensures
# that the data does not overlap the axes. To eliminate this space, set expand
# = c(0, 0) . This is useful in conjunction with geom raster() :

# -------------------------------------------------------------------------

ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  scale_x_continuous(expand = c(0,0)) +
  scale_y_continuous(expand = c(0,0)) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

# By default, any data outside the limits is converted to NA . This means that
# setting the limits is not the same as visually zooming in to a region of the plot.
# To do that, you need to use the xlim and ylim arguments to coord cartesian().
# This performs purely visual zooming and does not
# affect the underlying data. You can override this with the oob (out of bounds)
# argument to the scale. The default is scales::censor() which replaces any
# value outside the limits with NA . Another option is scales::squish() which
# squishes all values into the range:

# -------------------------------------------------------------------------

df <- data.frame(x = 1:5)
df
# -------------------------------------------------------------------------


p <- ggplot(df, aes(x, 1)) + geom_tile(aes(fill = x), colour = "white")

p

# -------------------------------------------------------------------------

p + scale_fill_gradient(limits = c(2, 4))
p + scale_fill_gradient(limits = c(2, 4), oob = scales::squish)

# -------------------------------------------------------------------------


