
# -------------------------------------------------------------------------


library(ggplot2)

# -------------------------------------------------------------------------

          # Missing Facetting Variables #

# -------------------------------------------------------------------------

# If you are using facetting on a plot with multiple datasets, what happens
# when one of those datasets is missing the facetting variables? This situation
# commonly arises when you are adding contextual information that should be
# the same in all panels. For example, imagine you have a spatial display of
# disease faceted by gender. What happens when you add a map layer that
# does not contain the gender variable? Here ggplot will do what you expect:
#   it will display the map in every facet: missing facetting variables are treated
# like they have all values.

# -------------------------------------------------------------------------

df1 <- data.frame(x = 1:3, y = 1:3, gender = c("f", "f", "m"))
df2 <- data.frame(x = 2, y = 2)

# -------------------------------------------------------------------------

df1

# -------------------------------------------------------------------------

df2

# -------------------------------------------------------------------------

ggplot(df1, aes(x, y)) +
  geom_point(data = df2, colour = "red", size = 3) +
  geom_point() +
  facet_wrap(~gender)
