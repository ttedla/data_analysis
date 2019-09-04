
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# Unlike linear coordinates, non-linear coordinates can change the shape of
# geoms. For example, in polar coordinates a rectangle becomes an arc; in a
# map projection, the shortest path between two points is not necessarily a
# straight line. The code below shows how a line and a rectangle are rendered
# in a few different coordinate systems.

# -------------------------------------------------------------------------

rect <- data.frame(x = 50, y = 50)
line <- data.frame(x = c(1, 200), y = c(100, 1))
rect
line

# -------------------------------------------------------------------------

base <- ggplot(mapping = aes(x, y)) +
  geom_tile(data = rect, aes(width = 50, height = 50)) +
  geom_line(data = line) +
  xlab(NULL) + ylab(NULL)
base

# -------------------------------------------------------------------------

base + coord_polar("x")

base + coord_polar("y")

base + coord_flip()

base + coord_trans(y = "log10")

base + coord_fixed()

# -------------------------------------------------------------------------
      ################# polar transformation 
# 1. We start with a line parameterised by its two endpoints:

df <- data.frame(r = c(0, 1), theta = c(0, 3 / 2 * pi))
df


# -------------------------------------------------------------------------

ggplot(df, aes(r, theta)) +
  geom_line() +
  geom_point(size = 2, colour = "red")

# -------------------------------------------------------------------------
# 2. We break it into multiple line segments, each with two endpoints.

interp <- function(rng, n) {
  seq(rng[1], rng[2], length = n)
}

munched <- data.frame(
  r = interp(df$r, 15),
  theta = interp(df$theta, 15)
)

# -------------------------------------------------------------------------

ggplot(munched, aes(r, theta)) +
  geom_line() +
  geom_point(size = 2, colour = "red")

# -------------------------------------------------------------------------

# 3. We transform the locations of each piece:
transformed <- transform(munched,
                         x = r * sin(theta),
                         y = r * cos(theta)
)

# -------------------------------------------------------------------------

ggplot(transformed, aes(x, y)) +
  geom_path() +
  geom_point(size = 2, colour = "red") +
  coord_fixed()

# -------------------------------------------------------------------------

# Linear model on original scale is poor fit
base <- ggplot(diamonds, aes(carat, price)) +
  stat_bin2d() +
  geom_smooth(method = "lm") +
  xlab(NULL) +
  ylab(NULL) +
  theme(legend.position = "none")
base

# -------------------------------------------------------------------------

# Better fit on log scale, but harder to interpret
base +
  scale_x_log10() +
  scale_y_log10()

# -------------------------------------------------------------------------

# Fit on log scale, then backtransform to original.
# Highlights lack of expensive diamonds with large carats
pow10 <- scales::exp_trans(10)
base +
  scale_x_log10() +
  scale_y_log10() +
  coord_trans(x = pow10, y = pow10)

# -------------------------------------------------------------------------


