
# -------------------------------------------------------------------------

                # Modifying Theme Components # 

# -------------------------------------------------------------------------

# There are four basic types of built-in element functions: text, lines, 
# rectangles, and blank. Each element function has a set of parameters 
# that control the appearance:

# -------------------------------------------------------------------------
library(ggplot2)

# -------------------------------------------------------------------------


df <- data.frame(x = 1:3, y = 1:3)
base <- ggplot(df, aes(x, y)) + geom_point()

# -------------------------------------------------------------------------

base_t <- base + labs(title = "This is a ggplot") + xlab(NULL) + ylab(NULL)

base_t

# -------------------------------------------------------------------------


base_t + theme(plot.title = element_text(size=16)) 


# -------------------------------------------------------------------------


base_t + theme(plot.title = element_text(face="bold", color = "red")) 

base_t + theme(plot.title = element_text(hjust=1))

# -------------------------------------------------------------------------
# 
# You can control the margins around the text with the margin argument
# and margin() function. margin() has four arguments: the amount of space
# (in points) to add to the top, right, bottom and left sides of the text. Any
# elements not specified default to 0.

# -------------------------------------------------------------------------

# The margins here look asymmetric because there are also plot margins
base_t + theme(plot.title = element_text(margin = margin()))

base_t + theme(plot.title = element_text(margin = margin(t = 10, b = 10)))

base_t + theme(axis.title.y = element_text(margin = margin(r = 10)))

# -------------------------------------------------------------------------
# element_line() draws lines parameterised by colour , size and linetype :

# -------------------------------------------------------------------------
base + theme(panel.grid.major = element_line(colour = "black"))

base + theme(panel.grid.major = element_line(size = 2))

base + theme(panel.grid.major = element_line(linetype = "dotted"))

# -------------------------------------------------------------------------

# element rect() draws rectangles, mostly used for backgrounds, 
# parameterised by fill colour and border colour , size and linetype .

# -------------------------------------------------------------------------

base + theme(plot.background = element_rect(fill = "grey80", colour = NA))

base + theme(plot.background = element_rect(colour = "red", size = 2))

base + theme(panel.background = element_rect(fill = "linen"))

# -------------------------------------------------------------------------

# element_blank() draws nothing. Use this if you don’t want anything drawn,
# and no space allocated for that element. The following example uses
# element_blank() to progressively suppress the appearance of elements we’re
# not interested in. Notice how the plot automatically reclaims the space 
# previously used by these elements: if you don’t want this to happen (perhaps
# because they need to line up with other plots on the page), use colour =
# NA, fill = NA to create invisible elements that still take up space.

# -------------------------------------------------------------------------

base

last_plot() + theme(panel.grid.minor = element_blank())

last_plot() + theme(panel.grid.major = element_blank())

# -------------------------------------------------------------------------

last_plot() + theme(panel.background = element_blank())

last_plot() + theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank()
)

last_plot() + theme(axis.line = element_line(colour = "grey50"))

# -------------------------------------------------------------------------

# To modify theme elements for all future plots, use theme update() . It returns
# the previous theme settings, so you can easily restore the original parameters
# once you’re done.

# -------------------------------------------------------------------------

old_theme <- theme_update(
  plot.background = element_rect(fill = "lightblue3", colour = NA),
  panel.background = element_rect(fill = "lightblue", colour = NA),
  axis.text = element_text(colour = "linen"),
  axis.title = element_text(colour = "linen")
)
base

# -------------------------------------------------------------------------

theme_set(old_theme)
base
