
# -------------------------------------------------------------------------

# Layers and Legends

# -------------------------------------------------------------------------
# 
# A legend may need to draw symbols from multiple layers. For example, if
# you’ve mapped colour to both points and lines, the keys will show both
# points and lines. If you’ve mapped fill colour, you get a rectangle.

# -------------------------------------------------------------------------

# By default, a layer will only appear if the corresponding aesthetic is
# mapped to a variable with aes() . You can override whether or not a layer
# appears in the legend with show.legend : FALSE to prevent a layer from ever
# appearing in the legend; TRUE forces it to appear when it otherwise wouldn’t.
# Using TRUE can be useful in conjunction with the following trick to make
# points stand out:

# -------------------------------------------------------------------------
df <- data.frame(x = 1:3, y = 1:3, z = c("a", "b", "c"))
df

ggplot(df, aes(y, y)) +
  geom_point(size = 4, colour = "grey20") + 
  geom_point(aes(colour =z), size=2)

# -------------------------------------------------------------------------

ggplot(df, aes(y, y)) + 
  geom_point( size = 4, color = "grey20", show.legend = TRUE) + 
  geom_point(aes(color=z), size=2)

# -------------------------------------------------------------------------

norm <- data.frame(x = rnorm(1000), y = rnorm(1000))

norm$z <- cut(norm$x, 3, labels = c("a", "b", "c"))

ggplot(norm, aes(x,y)) + 
  geom_point(aes(color = z), alpha = 0.1)

ggplot(norm, aes(x,y)) + 
  geom_point(aes(color = z), alpha = 0.1) + 
  guides(color = guide_legend(override.aes = list(alpha =1)))

# -------------------------------------------------------------------------

ggplot(df, aes(x,y)) + geom_point(aes(color=z))

ggplot(df, aes(x,y)) + geom_point(aes(shape = z))

ggplot(df, aes(x,y)) + geom_point(aes(shape = z, color =z))

# -------------------------------------------------------------------------
        # Legend Layout 

# -------------------------------------------------------------------------
# 
# A number of settings that affect the overall display of the legends are 
# controlled through the theme system. 

# -------------------------------------------------------------------------


df <- data.frame(x = 1:3, y = 1:3, z = c("a", "b", "c"))

df

base <- ggplot(df, aes(x,y)) + 
  geom_point(aes(color = z), size = 3) + 
  #labs(xlab = NULL, ylab = NULL)
  xlab(NULL) + 
  ylab(NULL)

base + theme(legend.position = "right") #default
base + theme(legend.position = "bottom")
base + theme(legend.position = "none")

# -------------------------------------------------------------------------
# 
# • legend.direction : layout of items in legends (“horizontal” or “vertical”).
# • legend.box : arrangement of multiple legends (“horizontal” or “vertical”).
# • legend.box.just : justification of each legend within the overall bounding
# box, when there are multiple legends (“top”, “bottom”, “left”, or “right”).

# -------------------------------------------------------------------------

base <- ggplot(df, aes(x, y)) +
  geom_point(aes(colour = z), size = 3)

base + theme(legend.position = c(0,1), legend.justification = c(0,1))

base + theme(legend.position = c(0.5, 0.5), legend.justification = c(0.5, 0.5))

base + theme(legend.position = c(1,0), legend.justification = c(1,0))

# -------------------------------------------------------------------------

# There’s also a margin around the legends, which you can suppress with
# legend.margin = unit(0, "mm") .

# -------------------------------------------------------------------------

