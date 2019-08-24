
# -------------------------------------------------------------------------

          # Statistical Summaries #

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# shows how we can count the number of diamonds in each bin;
ggplot(diamonds, aes(color)) + 
  geom_bar()


# -------------------------------------------------------------------------
# shows how we can compute the average price.
ggplot(diamonds, aes(color, price)) + 
  geom_bar(stat = "summary_bin", fun.y=mean)

# -------------------------------------------------------------------------

ggplot(diamonds, aes(table, depth)) + 
  geom_bin2d(binwidth=1, na.rm = TRUE) + 
  xlim(50,70) + 
  ylim(50, 70)

# -------------------------------------------------------------------------

ggplot(diamonds, aes(table, depth, z=price)) + 
  geom_raster(binwidth = 1, stat = "summary_2d", fun=mean, na.rm=TRUE) + 
  xlim(50,70) + 
  ylim(50,70)

# -------------------------------------------------------------------------

