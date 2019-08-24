
# -------------------------------------------------------------------------

        # Guide Functions

# -------------------------------------------------------------------------

# guide_colourbar() and guide_legend() , offer additional
# control over the fine details of the legend. Legend guides can be used for any
# aesthetic (discrete or continuous) while the colour bar guide can only be used
# with continuous colour scales.

# -------------------------------------------------------------------------

# You can override the default guide using the guide argument of the corre-
#   sponding scale function, or more conveniently, the guides() helper function.
# guides() works like labs() : you can override the default guide associated with
# each aesthetic.

# -------------------------------------------------------------------------
library(ggplot2)

df <- data.frame(x = 1, y = 1:3, z = 1:3)

df

# -------------------------------------------------------------------------


base <- ggplot(df, aes(x,y)) + geom_raster(aes(fill = z))
base

# -------------------------------------------------------------------------

base + scale_fill_continuous(guide = guide_legend())

# -------------------------------------------------------------------------

base + guides(fill = guide_legend())

# -------------------------------------------------------------------------

        # guide legend() 
# The legend guide displays individual keys in a table. The most useful 
# options are:
#   • nrow or ncol which specify the dimensions of the table. byrow controls how
# the table is filled: FALSE fills it by column (the default), TRUE fills it by row.

# -------------------------------------------------------------------------

df <- data.frame(x = 1, y = 1:4, z = letters[1:4])

df

# -------------------------------------------------------------------------

# Base plot
p <- ggplot(df, aes(x, y)) + geom_raster(aes(fill = z))

p

# -------------------------------------------------------------------------

p + guides(fill = guide_legend(ncol = 2))


# -------------------------------------------------------------------------

p + guides(fill = guide_legend(ncol = 2, byrow = TRUE))

# -------------------------------------------------------------------------

# • reverse reverses the order of the keys. This is particularly useful when
# you have stacked bars because the default stacking and legend orders are
# different:

# -------------------------------------------------------------------------

p <- ggplot(df, aes(1, y)) + geom_bar(stat = "identity", aes(fill = z))

p

p + guides(fill = guide_legend(reverse = TRUE))

# -------------------------------------------------------------------------

          # guide_colourbar()

# -------------------------------------------------------------------------


# The colour bar guide is designed for continuous ranges of colors—as its name
# implies, it outputs a rectangle over which the color gradient varies. The most
# important arguments are:
#   • barwidth and barheight (along with default.unit ) allow you to specify the
# size of the bar. These are grid units, e.g. unit(1, "cm") .
# • nbin controls the number of slices. You may want to increase this from the
# default value of 20 if you draw a very long bar.
# • reverse flips the colour bar to put the lowest values at the top.
# These options are illustrated below:
# 

# -------------------------------------------------------------------------

df <- data.frame(x = 1, y = 1:4, z = 4:1)

df
p <- ggplot(df, aes(x, y)) + geom_tile(aes(fill = z))

p
p + guides(fill = guide_colorbar(reverse = TRUE))

p + guides(fill = guide_colorbar(barheight = unit(4, "cm")))

