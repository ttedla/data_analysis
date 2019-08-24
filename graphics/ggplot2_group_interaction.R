
# -------------------------------------------------------------------------

          # Collective Geoms # 

# -------------------------------------------------------------------------

# Geoms can be roughly divided into individual and collective geoms. An in-
#   dividual geom draws a distinct graphical object for each observation (row).
# For example, the point geom draws one point per row. A collective geom
# displays multiple observations with one geometric object. This may be a re-
#   sult of a statistical summary, like a boxplot, or may be fundamental to the
# display of the geom, like a polygon. Lines and paths fall somewhere in be-
#   tween: each line is composed of a set of straight segments, but each segment
# represents two points.

# -------------------------------------------------------------------------

# How do we control the assignment of observations to
# graphical elements? This is the job of the group aesthetic.

# -------------------------------------------------------------------------
# By default, the group aesthetic is mapped to the interaction of all discrete
# variables in the plot.

# -------------------------------------------------------------------------

data(Oxboys, package = "nlme")
head(Oxboys)

# -------------------------------------------------------------------------

            # Multiple Groups, One Aesthetic #

# -------------------------------------------------------------------------

ggplot(Oxboys, aes(age, height, group = Subject)) +
  geom_point() +
  geom_line()

# -------------------------------------------------------------------------

# If a group isn't defined by a single variable, but instead by a combination
# of multiple variables, use interaction() to combine them, e.g. aes(group =
# interaction(school id, student id)) .

