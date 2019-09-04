
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

          # Color - discrete

# -------------------------------------------------------------------------

# There are four colour scales for discrete data.

# -------------------------------------------------------------------------

df <- data.frame(x = c("a", "b", "c", "d"), y = c(3, 4, 1, 2))

# -------------------------------------------------------------------------

df

# -------------------------------------------------------------------------

bars <- ggplot(df, aes(x, y, fill = x)) +
  geom_bar(stat = "identity") +
  labs(x = NULL, y = NULL) +
  theme(legend.position = "none")
bars

# -------------------------------------------------------------------------
# 
# The default colour scheme, scale colour hue() , picks evenly spaced hues
# around the HCL colour wheel. This works well for up to about eight
# colours, but after that it becomes hard to tell the different colours apart.
# You can control the default chroma and luminance, and the range of hues,
# with the h , c and l arguments:

# -------------------------------------------------------------------------

bars + scale_fill_hue(c = 40)

# -------------------------------------------------------------------------

bars + scale_fill_hue(c = c(180, 300))

# -------------------------------------------------------------------------
# 
# One disadvantage of the default colour scheme is that because the colours
# all have the same luminance and chroma, when you print them in black
# and white, they all appear as an identical shade of grey.

# -------------------------------------------------------------------------
# 
# scale colour brewer() uses handpicked “ColorBrewer”. 
# For
# categorical data, the palettes most of interest are ‘Set1’ and ‘Dark2’
# for points and ‘Set2’, ‘Pastel1’, ‘Pastel2’ and ‘Accent’ for areas. Use
# RColorBrewer::display.brewer.all() to list all palettes.

# -------------------------------------------------------------------------

bars + scale_fill_brewer(palette = "Set1")

bars + scale_fill_brewer(palette = "Dark2")

bars + scale_fill_brewer(palette = "Set2")

bars + scale_fill_brewer(palette = "Accent")

# -------------------------------------------------------------------------

# scale colour grey() maps discrete data to grays, from light to dark.
bars + scale_fill_grey()

bars + scale_fill_grey(start = 0.5, end = 1)

bars + scale_fill_grey(start = 0, end = 0.5)

# -------------------------------------------------------------------------

# scale colour manual() is useful if you have your own discrete colour palette.
# The following examples show colour palettes inspired by Wes Anderson
# movies, as provided by the wesanderson package, https://github.com/
#   karthik/wesanderson. These are not designed for perceptual uniformity,
# but are fun!

# -------------------------------------------------------------------------
install.packages("wesanderson")
library(wesanderson)
bars + scale_fill_manual(values = wes_palette("GrandBudapest1"))
bars + scale_fill_manual(values = wes_palette("Royal1"))
bars + scale_fill_manual(values = wes_palette("Cavalcanti1"))

?wes_palette

# -------------------------------------------------------------------------

# Bright colours work best with points
df <- data.frame(x = 1:3 + runif(30), y = runif(30), z = c("a", "b", "c"))

# -------------------------------------------------------------------------

point <- ggplot(df, aes(x, y)) +
  geom_point(aes(colour = z)) +
  theme(legend.position = "none") +
  labs(x = NULL, y = NULL)

# -------------------------------------------------------------------------

point + scale_colour_brewer(palette = "Set1")
point + scale_colour_brewer(palette = "Set2")
point + scale_colour_brewer(palette = "Pastel1")

# -------------------------------------------------------------------------

# Subtler colours work better with areas
df <- data.frame(x = 1:3, y = 3:1, z = c("a", "b", "c"))
area <- ggplot(df, aes(x, y)) +
  geom_bar(aes(fill = z), stat = "identity") +
  theme(legend.position = "none") +
  labs(x = NULL, y = NULL)
area + scale_fill_brewer(palette = "Set1")
area + scale_fill_brewer(palette = "Set2")
area + scale_fill_brewer(palette = "Pastel1")

# -------------------------------------------------------------------------


