
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

          # Theme Elements #

# -------------------------------------------------------------------------

# There are around 40 unique elements that control the appearance of the plot.
# They can be roughly grouped into five categories: plot, axis, legend, panel
# and facet. The following sections describe each in turn.

# -------------------------------------------------------------------------
                      # Plot Elements
# Some elements affect the plot as a whole:
# plot.background element_rect() Plot background
# plot.title element_text() Plot title
# plot.margin margin() Margins around plot

# -------------------------------------------------------------------------

# plot.background draws a rectangle that underlies everything else on the
# plot. By default, ggplot2 uses a white background which ensures that the
# plot is usable wherever it might end up (e.g. even if you save as a png and
# put on a slide with a black background). When exporting plots to use in other
# systems, you might want to make the background transparent with fill =NA. Similarly, if you’re embedding a plot in a system that already has margins
# you might want to eliminate the built-in margins. Note that a small margin
# is still necessary if you want to draw a border around the plot.

# -------------------------------------------------------------------------

library(ggplot2)
df <- data.frame(x = 1:3, y = 1:3)
base <- ggplot(df, aes(x, y)) + geom_point()

# -------------------------------------------------------------------------

base + theme(plot.background = element_rect(colour = "grey50", size = 2))

base + theme(
  plot.background = element_rect(colour = "grey50", size = 2),
  plot.margin = margin(2, 2, 2, 2)
)

# -------------------------------------------------------------------------

base + theme(plot.background = element_rect(fill = "lightblue"))

base + theme(plot.background = element_rect(fill = NA))

# -------------------------------------------------------------------------

        # Axis Elements
# The axis elements control the appearance of the axes:
# axis.line     element_line()  Line parallel to axis (hidden in default themes)
# axis.text     element_text()  Tick labels
# axis.text.x   element_text()  x-axis tick labels
# axis.text.y   element_text()  y-axis tick labels
# axis.title    element_text()  Axis titles 
# axis.title.x  element_text()  x-axis title
# axis.title.y  element_text()  y-axis title 
# axis.ticks    element_line()  Axis tick marks
# axis.ticks.length    unit()   Length of tick marks

# -------------------------------------------------------------------------

df <- data.frame(x = 1:3, y = 1:3)
base <- ggplot(df, aes(x, y)) + geom_point()

# -------------------------------------------------------------------------

# Accentuate the axes
base + theme(axis.line = element_line(colour = "grey50", size = 1))

# Style both x and y axis labels
base + theme(axis.text = element_text(color = "blue", size = 12))

# Useful for long labels
base + theme(axis.text.x = element_text(angle = -90, vjust = 0.5))

base + theme(axis.ticks.length = unit(1, "in"))

# -------------------------------------------------------------------------

# The most common adjustment is to rotate the x-axis labels to avoid long
# overlapping labels. If you do this, note negative angles tend to look best and
# you should set hjust = 0 and vjust = 1 :

# -------------------------------------------------------------------------

df <- data.frame(
  x = c("label", "a long label", "an even longer label"),
  y = 1:3
)
df

# -------------------------------------------------------------------------

base <- ggplot(df, aes(x, y)) + geom_point()
base

base +
  theme(axis.text.x = element_text(angle = -30, vjust = 1, hjust = 0)) +
  xlab(NULL) +
  ylab(NULL)

# -------------------------------------------------------------------------

                  # Legend Elements #

# -------------------------------------------------------------------------

# The legend elements control the appearance of all legends. You can also
# modify the appearance of individual legends by modifying the same elements
# in guide legend() or guide colourbar() .

# -------------------------------------------------------------------------

# legend.background   element_rect()    Legend background
# legend.key          element_rect()    Background of legend keys
# legend.key.size     unit()            Legend key size
# legend.key.height   unit()            Legend key height
# legend.key.width    unit()            Legend key width
# legend.margin       unit()            Legend margin
# legend.text         element_text()    Legend labels
# legend.text.align   0–1               Legend label alignment (0=right, 1=left)
# legend.title        element_text()    Legend name
# legend.title.align  0-1               Legend name alignment Description
#                                       (0 = right, 1 = left)

# -------------------------------------------------------------------------

df <- data.frame(x = 1:4, y = 1:4, z = rep(c("a", "b"), each = 2))
df
base <- ggplot(df, aes(x, y, colour = z)) + geom_point()
base

# -------------------------------------------------------------------------

base + theme(
  legend.background = element_rect(
    fill = "lemonchiffon",
    colour = "grey50",
    size = 1
  )
)

# -------------------------------------------------------------------------

base + theme(
  legend.key = element_rect(color = "grey50"),
  legend.key.width = unit(0.9, "cm"),
  legend.key.height = unit(0.75, "cm")
)

base + theme(
  legend.text = element_text(size = 15),
  legend.title = element_text(size = 15, face = "bold")
)

# -------------------------------------------------------------------------

base + theme(
  legend.margin = unit(0.5, 'in')
)

base + theme(
  legend.title.align = 0.3
)

# -------------------------------------------------------------------------

          # Panel Elements #
# Panel elements control the appearance of the plotting panels:

# -------------------------------------------------------------------------

# panel.background    element_rect()    Panel background (under data) 
# panel.border        element_rect()    Panel background (over data)
# panel.grid.major    element_line()    Major grid lines
# panel.grid.major.x  element_line()    Vertical major grid lines
# panel.grid.major.y  element_line()    Horizontal major grid lines
# panel.grid.minor    element_line()    Minor grid lines
# panel.grid.minor.x  element_line()    Vertical minor grid lines
# panel.grid.minor.y  element_line()    Horizontal minor grid lines
# aspect.ratio        numeric           Plot aspect ratio

# -------------------------------------------------------------------------

# The main difference between panel.background and panel.border is that the
# background is drawn underneath the data, and the border is drawn on top
# of it. For that reason, you’ll always need to assign fill = NA when overriding
# panel.border .

# -------------------------------------------------------------------------

base <- ggplot(df, aes(x, y)) + geom_point()
base

# Modify background
base + theme(panel.background = element_rect(fill = "lightblue"))

base + theme(panel.border = element_rect(fill= "lightblue"))

# -------------------------------------------------------------------------
base
# Tweak major grid lines
base + theme(
  panel.grid.major = element_line(color = "gray60", size = 0.8),
  panel.grid.minor = element_line(color = "blue", size=.5, linetype = "dotted")
  )
# Just in one direction
base + theme(
  panel.grid.major.x = element_line(color = "gray60", size = 0.8)
)

# -------------------------------------------------------------------------

# Note that aspect ratio controls the aspect ratio of the panel, not the overall
# plot:

# -------------------------------------------------------------------------

base2 <- base + theme(plot.background = element_rect(colour = "grey50"))
base2

# -------------------------------------------------------------------------

# Wide screen
base2 + theme(aspect.ratio = 9 / 16)
# Long and skiny
base2 + theme(aspect.ratio = 2 / 1)
# Square
base2 + theme(aspect.ratio = 1)

# -------------------------------------------------------------------------

            # Facetting Elements

# -------------------------------------------------------------------------

# The following theme elements are associated with faceted ggplots:

# strip.backgroun   elemenet_rect()   Background of panel strips    
# strip.text        element_text()    Strip text
# strip.text.x      element_text()    Horizontal strip text
# strip.text.y      element_text()    Vertical strip text
# panel.margin      unit()            Margin between facets
# panel.margin.x    unit()            Margin between facets(vertical)
# panel.margin.y    unit()            Margin between facets(horizontal)

# -------------------------------------------------------------------------

df <- data.frame(x = 1:4, y = 1:4, z = c("a", "a", "b", "b"))
df

base_f <- ggplot(df, aes(x, y)) + geom_point() + facet_wrap( ~z)
base_f

base_f + theme(panel.margin = unit(0.5, "in"))
base_f + theme(panel.spacing = unit(0.5, 'in'))

# -------------------------------------------------------------------------

base_f + theme(
  strip.background = element_rect(fill = "grey20", color = "grey80", size = 1),
  strip.text = element_text(colour = "white")
)

base_f + theme(
  strip.background = element_rect(fill = "lightblue", color = "blue", size = 1),
  strip.text = element_text(colour = "black")
)

# -------------------------------------------------------------------------


