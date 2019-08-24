
# -------------------------------------------------------------------------

      # Breaks and Labels


# -------------------------------------------------------------------------

# The breaks argument controls which values appear as tick marks on axes
# and keys on legends. Each break has an associated label, controlled by the
# labels argument.

# -------------------------------------------------------------------------

# If you set labels , you must also set breaks ; otherwise, if
# data changes, the breaks will no longer align with the labels.

# -------------------------------------------------------------------------

df <- data.frame(x = c(1, 3, 5) * 1000, y = 1)
df

# -------------------------------------------------------------------------

axs <- ggplot(df, aes(x, y)) + 
  geom_point() + 
  labs( x = NULL, y = NULL)

# -------------------------------------------------------------------------

axs

axs + scale_x_continuous(breaks =c(2000, 4000))

axs + scale_x_continuous(breaks = c(2000, 4000), labels = c("2K", "4K"))

# -------------------------------------------------------------------------

leg <- ggplot(df, aes(y, x, fill = x)) + 
  geom_tile() + 
  labs(x = NULL, y = NULL, fill = "Color\nlegend")

leg

# -------------------------------------------------------------------------

leg + scale_fill_continuous(breaks = c(2000, 4000))

leg + scale_fill_continuous(breaks = c(2000, 4000), labels = c("2K", "4K"))

# -------------------------------------------------------------------------
# 
# If you want to relabel the breaks in a categorical scale, you can use a
# named labels vector:

# -------------------------------------------------------------------------

df
df2 <- data.frame(x = 1:3, y = c("a", "b", "c"))
df2

# -------------------------------------------------------------------------

ggplot(df2, aes(x, y)) + 
  geom_point()

ggplot(df2, aes(x,y)) + 
  geom_point() + 
  scale_y_discrete(labels = c(a = "apple", b = "banana", c = "carrot"))

# -------------------------------------------------------------------------

# To suppress breaks (and for axes, grid lines) or labels, set them to NULL :
axs + scale_x_continuous(breaks = NULL)
axs + scale_x_continuous(labels = NULL)

leg + scale_fill_continuous(breaks = NULL)

leg + scale_fill_continuous(labels = NULL)

# -------------------------------------------------------------------------
# 
# The scales package provides a number
# of useful labelling functions:
#   • scales::comma format() adds commas to make it easier to read large num-
#   bers.
# • scales::unit format(unit, scale) adds a unit suffix, optionally scaling.
# • scales::dollar format(prefix, suffix) displays currency values, rounding
# to two decimal places and adding a prefix or suffix.
# • scales::wrap format() wraps long labels into multiple lines.
# See the documentation of the scales package for more details.

# -------------------------------------------------------------------------

axs + scale_y_continuous(labels = scales::percent_format())

axs + scale_y_continuous(labels = scales::dollar_format("$"))

leg + scale_y_continuous(labels = scales::unit_format("k", 1e-3))


# -------------------------------------------------------------------------

# You can adjust the minor breaks (the faint grid lines that appear between 
# the major grid lines) by supplying a numeric vector of positions to the
# minor breaks argument. This is particularly useful for log scales:

# -------------------------------------------------------------------------

df <- data.frame(x = c(2, 3, 5, 10, 200, 3000), y = 1)
df

ggplot(df, aes(x, y)) +
  geom_point() +
  scale_x_log10()

# -------------------------------------------------------------------------

mb <- as.numeric(1:10 %o% 10 ^ (0:4))
mb

ggplot(df, aes(x, y)) +
  geom_point() +
  scale_x_log10(minor_breaks = log10(mb))
