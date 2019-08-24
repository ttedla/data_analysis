
# -------------------------------------------------------------------------

            # Diamonds Data # 

# -------------------------------------------------------------------------

diamonds

# -------------------------------------------------------------------------

            # Displaying Distributions # 
# There are a number of geoms that can be used to display distributions, depending on the dimensionality of the distribution, whether it is continuous
# or discrete, and whether you are interested in the conditional or joint distribution. For 1d continuous distributions the most important geom is the histogram, geom_histogram() :

# -------------------------------------------------------------------------

ggplot(diamonds, aes(depth)) + 
  geom_histogram()

# -------------------------------------------------------------------------

ggplot(diamonds, aes(depth)) + 
  geom_histogram(binwidth = 0.1) + 
  xlim(55,70)

# -------------------------------------------------------------------------

# To compare the distribution between groups, few of the options are:
#   • Show small multiples of the histogram, facet wrap( ̃ var) .
#   • Use colour and a frequency polygon, geom freqpoly() .
#   • Use a “conditional density plot”, geom histogram(position = "fill") .

# -------------------------------------------------------------------------

ggplot(diamonds, aes(depth)) +
  geom_freqpoly(aes(colour = cut), binwidth = 0.1, na.rm = TRUE) +
  xlim(58, 68) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

ggplot(diamonds, aes(depth)) +
  geom_histogram(aes(fill = cut), binwidth = 0.1, position = "fill",
                 na.rm = TRUE) +
  xlim(58, 68) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------

# density = (Count/total_count)*bin_width

# -------------------------------------------------------------------------

ggplot(diamonds, aes(depth)) +
  geom_density(na.rm = TRUE) +
  xlim(58, 68) +
  theme(legend.position = "none")
ggplot(diamonds, aes(depth, fill = cut, colour = cut)) +
  geom_density(alpha = 0.2, na.rm = TRUE) +
  xlim(58, 68) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------
# The histogram, frequency polygon and density display a detailed view of
# the distribution. However, sometimes you want to compare many distributions, and it’s useful to have alternative options that sacrifice quality for
# quantity. Here are three options:
#     • geom_boxplot() : the box-and-whisker plot shows five summary statistics
#       along with individual "outliers". It displays far less information than       a histogram, but also takes up much less space.
# You can use boxplot with both "categorical and continuous x". 
# For continuous x, you’ll also need to set the group aesthetic to define how the x variable is broken up into bins. A useful helper function is cut_width() :

# -------------------------------------------------------------------------

ggplot(diamonds, aes(clarity, depth)) + 
  geom_boxplot()

# for a continuous x (carat)
ggplot(diamonds, aes(carat, depth)) + 
  geom_boxplot(aes(group = cut_width(carat, 0.1))) + 
  xlim(NA, 2.05)

# -------------------------------------------------------------------------

# • geom_violin() : the violin plot is a compact version of the density plot. The underlying computation is the same, but the results are displayed in a
# similar fashion to the boxplot:

# -------------------------------------------------------------------------

ggplot(diamonds, aes(clarity, depth)) + 
  geom_violin()

# continuous x 
ggplot(diamonds, aes(carat, depth)) + 
  geom_violin(aes(group=cut_width(carat, 0.1))) + 
  xlim(NA, 2.05)

# -------------------------------------------------------------------------



  