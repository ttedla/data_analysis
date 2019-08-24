
# -------------------------------------------------------------------------


          # overplotting

# -------------------------------------------------------------------------

# The following code shows some options for 2000 points sampled from a bivariate 
# normal distribution.

# -------------------------------------------------------------------------

df <- data.frame(x = rnorm(2000), y=rnorm(2000))
head(df)

# -------------------------------------------------------------------------
library(ggplot2)
norm <- ggplot(df , aes(x, y)) + xlab(NULL) + ylab(NULL) 

norm + geom_point()

# -------------------------------------------------------------------------

          # Hallow circles
norm + geom_point(shape = 1)

# -------------------------------------------------------------------------

          # pixel sized
norm + geom_point(shape=".")

# -------------------------------------------------------------------------
# 
# For larger datasets with more overplotting, you can use alpha blending
# (transparency) to make the points transparent. If you specify alpha as a
# ratio, the denominator gives the number of points that must be overplotted
# to give a solid colour. Values smaller than  ~̃1/500 are rounded down to
# zero, giving completely transparent points.

norm + geom_point(alpha = 1/3)
norm + geom_point(alpha=1/5)
norm + geom_point(alpha = 1/10)

# -------------------------------------------------------------------------

# Bin the points and count the number in each bin, then visualise that count
# (the 2d generalisation of the histogram), geom bin2d() .
norm + geom_bin2d()
norm + geom_bin2d(bins = 10)

# -------------------------------------------------------------------------

        # less visually distractive 
library(hexbin)
norm + geom_hex()
norm + geom_hex(bins=10)

# -------------------------------------------------------------------------
