
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# The theming system is composed of four main components:
#   • Theme elements specify the non-data elements that you can control. For
# example, the plot.title element controls the appearance of the plot title;
# axis.ticks.x , the ticks on the x axis; legend.key.height , the height of the
# keys in the legend.
# • Each element is associated with an element function, which describes
# the visual properties of the element. For example, element text() sets the
# font size, colour and face of text elements like plot.title .
# • The theme() function which allows you to override the default
# theme elements by calling element functions, like theme(plot.title =
# element text(colour = "red")) .
# • Complete themes, like theme grey() set all of the theme elements to values
# designed to work together harmoniously.
# For example, imagine you’ve made the following plot of your data.

# -------------------------------------------------------------------------

base <- ggplot(mpg, aes(cty, hwy, color = factor(cyl))) +
  geom_jitter() +
  geom_abline(colour = "grey50", size = 2)
base

# -------------------------------------------------------------------------

labelled <- base +
  labs(
    x = "City mileage/gallon",
    y = "Highway mileage/gallon",
    colour = "Cylinders",
    title = "Highway and city mileage are highly correlated"
  ) +
  scale_colour_brewer(type = "seq", palette = "Spectral")
labelled

# -------------------------------------------------------------------------

styled <- labelled +
  theme_bw() +
  theme(
    plot.title = element_text(face = "bold", size = 12),
    legend.background = element_rect(fill = "white", size = 4, colour = "white"),
    legend.justification = c(0, 1),
    legend.position = c(0, 1),
    axis.ticks = element_line(colour = "grey70", size = 0.2),
    panel.grid.major = element_line(colour = "grey70", size = 0.2),
    panel.grid.minor = element_blank()
  )
styled

# -------------------------------------------------------------------------

