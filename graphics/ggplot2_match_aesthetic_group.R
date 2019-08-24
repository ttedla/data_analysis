
# -------------------------------------------------------------------------

          # Matching Aesthetics to Graphic Objects #

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------
data(Oxboys, package = "nlme")

# -------------------------------------------------------------------------
df <- data.frame(x = 1:3, y = 1:3, colour = c(1,3,5))

# -------------------------------------------------------------------------

head(df)

# -------------------------------------------------------------------------

ggplot(df, aes(x, y, colour = factor(colour))) +
  geom_line(aes(group = 1), size = 2) +
  geom_point(size = 5)

# -------------------------------------------------------------------------

ggplot(df, aes(x,y, color=colour)) + 
  geom_line(aes(group=1), size=2) + 
  geom_point(size=5)

# -------------------------------------------------------------------------

xgrid <- with(df, seq(min(x), max(x), length = 50))

# -------------------------------------------------------------------------


interp <- data.frame(
  x = xgrid,
  y = approx(df$x, df$y, xout = xgrid)$y,
  colour = approx(df$x, df$colour, xout = xgrid)$y
)

# -------------------------------------------------------------------------

head(interp)

# -------------------------------------------------------------------------

ggplot(interp, aes(x, y, color=colour)) + 
  geom_line(size=2)+
  geom_point(data = df, size=5)

# -------------------------------------------------------------------------

ggplot(mpg, aes(class)) +
  geom_bar()


# -------------------------------------------------------------------------

ggplot(mpg, aes(class, fill = drv)) +
  geom_bar()

# -------------------------------------------------------------------------

ggplot(mpg, aes(class, fill=hwy)) + 
  geom_bar()

# -------------------------------------------------------------------------

ggplot(mpg, aes(class, fill=hwy, group=hwy)) + 
  geom_bar()

# -------------------------------------------------------------------------

ggplot(mpg, aes(as.integer(mpg$displ), cty, group=factor(as.integer(mpg$displ)) )) +
  geom_boxplot()

# -------------------------------------------------------------------------

ggplot(mpg, aes(drv)) +
  geom_bar()
ggplot(mpg, aes(drv, fill = hwy, group = hwy)) +
  geom_bar()
library(dplyr)
mpg2 <- mpg %>% arrange(hwy) %>% mutate(id = seq_along(hwy))
ggplot(mpg2, aes(drv, fill = hwy, group = id)) +
  geom_bar()

# -------------------------------------------------------------------------


