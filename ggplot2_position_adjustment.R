
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

          # Position Adjustments # 

# -------------------------------------------------------------------------

# • position_stack() : stack overlapping bars (or areas) on top of each other.
# • position_fill() : stack overlapping bars, scaling so the top is always at 1.
# • position_dodge() : place overlapping bars (or boxplots) side-by-side.

# -------------------------------------------------------------------------
dplot <- ggplot(diamonds, aes(color, fill = cut)) +
  xlab(NULL) + ylab(NULL) + theme(legend.position = "none")

# -------------------------------------------------------------------------

# position stack is the default for bars, so geom_bar()
# is equivalent to geom_bar(position = "stack").

# -------------------------------------------------------------------------

dplot + geom_bar()
dplot + geom_bar(position = "fill")
dplot + geom_bar(position = "dodge")

# -------------------------------------------------------------------------

dplot + geom_bar(position = "identity", alpha = 1/2, color="grey50")


# -------------------------------------------------------------------------

ggplot(diamonds, aes(color, colour = cut)) +
  geom_line(aes(group = cut), stat = "count") +
  xlab(NULL) + ylab(NULL) +
  theme(legend.position = "none")

# -------------------------------------------------------------------------
# 
# There are three position adjustments that are primarily useful for points:
#   • position nudge() : move points by a fixed offset.
# • position jitter() : add a little random noise to every position.
# • position jitterdodge() : dodge points within groups, then add a little ran-
#   dom noise.

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy)) +
  geom_point(position = "jitter")

ggplot(mpg, aes(displ, hwy)) +
  geom_point(position = position_jitter(width = 0.05, height = 0.5))


# -------------------------------------------------------------------------

# geom_jitter provides a consistent shortcut 
ggplot(mpg, aes(displ, hwy)) +
  geom_jitter(width = 0.05, height = 0.5)
