
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

          # Facetting # 

# -------------------------------------------------------------------------
  
# There are three types of facetting:
#   • facet null() : a single plot, the default.
#   • facet wrap() : “wraps” a 1d ribbon of panels into 2d.
#   • facet grid() : produces a 2d grid of panels defined by variables which form
# the rows and columns.

# -------------------------------------------------------------------------

# Faceted plots have the capability to fill up a lot of space, so for this chapter
# we will use a subset of the mpg dataset that has a manageable number of
# levels: three cylinders (4, 6, 8), two types of drive train (4 and f), and six
# classes.

mpg2 <- subset(mpg, cyl != 5 & drv %in% c("4", "f") & class != "2seater")

# -------------------------------------------------------------------------

                  # Facet Wrap #

# -------------------------------------------------------------------------

# This is useful if you have a single variable
# with many levels and want to arrange the plots in a more space efficient
# manner.

# -------------------------------------------------------------------------

# You can control how the ribbon is wrapped into a grid with ncol , nrow,
# as.table and dir . ncol and nrow control how many columns and rows (you 
# only need to set one). as.table controls whether the facets are laid out like
# a table ( TRUE ), with highest values at the bottom-right, or a plot ( FALSE ),
# with the highest values at the top-right. dir controls the direction of wrap:
#   horizontal or vertical.

# -------------------------------------------------------------------------

base <- ggplot(mpg2, aes(displ, hwy)) +
  geom_blank() +
  xlab(NULL) +
  ylab(NULL)
base

# -------------------------------------------------------------------------

base + facet_wrap(~class, ncol = 3)

base + facet_wrap(~class, ncol = 3, as.table = FALSE)

base + facet_wrap(~class, nrow = 3)

base + facet_wrap(~class, nrow = 3, dir = "v")

# -------------------------------------------------------------------------

            # Facet Grid #

# -------------------------------------------------------------------------

# facet grid() lays out plots in a 2d grid, as defined by a formula:
# .~ a spreads the values of a across the columns. This direction
# facilitates comparisons of y position, because the vertical scales are aligned.

# -------------------------------------------------------------------------

base + facet_grid(. ~ cyl)

# -------------------------------------------------------------------------

# b ~ . spreads the values of b down the rows. This direction facilitates
# comparison of x position because the horizontal scales are aligned. This
# makes it particularly useful for comparing distributions.

# -------------------------------------------------------------------------

base + facet_grid(drv ~.)

# -------------------------------------------------------------------------

# a ~ b spreads a across columns and b down rows. You’ll usually want to
# put the variable with the greatest number of levels in the columns, to take
# advantage of the aspect ratio of your screen.

# -------------------------------------------------------------------------

base + facet_grid(drv ~ cyl)


# -------------------------------------------------------------------------
# 
# You can use multiple variables in the rows or columns, by “adding” them
# together, e.g. a + b  ̃ c + d . Variables appearing together on the rows or
# columns are nested in the sense that only combinations that appear in the
# data will appear in the plot. Variables that are specified on rows and columns
# will be crossed: all combinations will be shown, including those that didn’t
# appear in the original dataset: this may result in empty panels.

# -------------------------------------------------------------------------

            # Controlling Scales #

# -------------------------------------------------------------------------

# For both facet wrap() and facet grid() you can control whether the position
# scales are the same in all panels (fixed) or allowed to vary between panels
# (free) with the scales parameter:
# 
# scales =   "fixed" : x and y scales are fixed across all panels.
# scales =   "free_x" : the x scale is free, and the y scale is fixed.
# scales =   "free_y" : the y scale is free, and the x scale is fixed.   
# scales =   "free" : x and y scales vary across panels.

# -------------------------------------------------------------------------

# facet_grid() imposes an additional constraint on the scales: all panels in
# a column must have the same x scale, and all panels in a row must have the
# same y scale. This is because each column shares an x axis, and each row
# shares a y axis.
# Fixed scales make it easier to see patterns across panels; free scales make
# it easier to see patterns within panels.

# -------------------------------------------------------------------------

p <- ggplot(mpg2, aes(cty, hwy)) +
  geom_abline() +
  geom_jitter(width = 0.1, height = 0.1)
p

# -------------------------------------------------------------------------

p + facet_wrap(~cyl)

# -------------------------------------------------------------------------

p + facet_wrap(~cyl, scales = "free")

# -------------------------------------------------------------------------

# Free scales are also useful when we want to display multiple time series that
# were measured on different scales. To do this, we first need to change from
# ‘wide’ to ‘long’ data, stacking the separate variables into a single column. An
# example of this is shown below with the long form of the economics data,

# -------------------------------------------------------------------------

economics_long
ggplot(economics_long, aes(date, value)) + 
  geom_line() + 
  facet_wrap(~variable, scales = "free_y", ncol = 1)

# -------------------------------------------------------------------------

# facet grid() has an additional parameter called space , which takes the
# same values as scales . When space is “free”, each column (or row) will have
# width (or height) proportional to the range of the scale for that column (or  row). This makes the scaling equal across the whole plot: 1 cm on each panel
# maps to the same range of data. (This is somewhat analogous to the ‘sliced’
# axis limits of lattice.) For example, if panel a had range 2 and panel b had
# range 4, one-third of the space would be given to a, and two-thirds to b. This
# is most useful for categorical scales, where we can assign space proportionally
# based on the number of levels in each facet, as illustrated below.

# -------------------------------------------------------------------------

mpg2$model <- reorder(mpg2$model, mpg2$cty)
mpg2$manufacturer <- reorder(mpg2$manufacturer, -mpg2$cty)

ggplot(mpg2, aes(cty, model)) +
  geom_point() +
  facet_grid(manufacturer  ~., scales = "free", space = "free") +
  theme(strip.text.y = element_text(angle = 0))

# -------------------------------------------------------------------------


