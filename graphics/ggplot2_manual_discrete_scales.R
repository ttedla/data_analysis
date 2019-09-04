
# -------------------------------------------------------------------------

 # The Manual Discrete Scale # 

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# The discrete scales, scale linetype() , scale shape() , and scale size discrete()
# basically have no options. These scales are just a list of valid values that are
# mapped to the unique discrete values.

# -------------------------------------------------------------------------

# If you want to customise these scales, you need to create your own new
# scale with the manual scale: scale shape manual() , scale linetype manual() ,
# scale colour manual() . The manual scale has one important argument, values ,
# where you specify the values that the scale should produce.

# -------------------------------------------------------------------------

plot <- ggplot(msleep, aes(brainwt, bodywt)) +
  scale_x_log10() +
  scale_y_log10()

# -------------------------------------------------------------------------

plot

# -------------------------------------------------------------------------

plot +
  geom_point(aes(colour = vore)) +
  scale_colour_manual(
    values = c("red", "orange", "green", "blue"),
    na.value = "grey50"
  )

# -------------------------------------------------------------------------

colours <- c(
  carni = "red",
  insecti = "orange",
  herbi = "green",
  omni = "blue"
)

# -------------------------------------------------------------------------

plot +
  geom_point(aes(colour = vore)) +
  scale_colour_manual(values = colours)

# -------------------------------------------------------------------------

huron <- data.frame(year = 1875:1972, level = as.numeric(LakeHuron))
head(huron)

# -------------------------------------------------------------------------
# The following example shows a creative use of scale colour manual() to
# display multiple variables on the same plot and show a useful legend. In most
# other plotting systems, you’d colour the lines and then add a legend:

ggplot(huron, aes(year)) +
  geom_line(aes(y = level + 5), colour = "red") +
  geom_line(aes(y = level - 5), colour = "blue")

# -------------------------------------------------------------------------
# That doesn’t work in ggplot because there’s no way to add a legend man-
#   ually. Instead, give the lines informative labels:

# -------------------------------------------------------------------------

ggplot(huron, aes(year)) +
  geom_line(aes(y = level + 5, colour = "above")) +
  geom_line(aes(y = level - 5, colour = "below"))
# -------------------------------------------------------------------------
#And then tell the scale how to map labels to colours:
ggplot(huron, aes(year)) +
  geom_line(aes(y = level + 5, colour = "above")) +
  geom_line(aes(y = level - 5, colour = "below")) +
  scale_colour_manual("Direction",
                      values = c("above" = "red", "below" = "blue")
  )

# -------------------------------------------------------------------------

        # The Identity Scale #

# -------------------------------------------------------------------------

# The identity scale is used when your data is already scaled, when the data and
# aesthetic spaces are the same.

# -------------------------------------------------------------------------

# luv colours contains the locations of all R’s built-in
# colours in the LUV colour space (the space that HCL is based on). A legend is
# unnecessary, because the point colour represents itself: the data and aesthetic
# spaces are the same.

# -------------------------------------------------------------------------

head(luv_colours)
ggplot(luv_colours, aes(u, v)) +
  geom_point(aes(colour = col), size = 3) +
  scale_color_identity() +
  coord_equal()
