
# -------------------------------------------------------------------------

                # Building a Scatterplot # 

# -------------------------------------------------------------------------

          # How are engine size and fuel economy related? #

# -------------------------------------------------------------------------

        # We might create a scatterplot of engine displacement
        # and highway mpg with points coloured by number of cylinders:
        # head(mpg) dataset
# -------------------------------------------------------------------------

library(ggplot2)

ggplot(mpg, aes(displ, hwy, color = factor(cyl))) + 
  geom_point()


# -------------------------------------------------------------------------

      # different plot
x <- ggplot(mpg, aes(displ, hwy, color=factor(cyl)))

# -------------------------------------------------------------------------


# line plot
x + geom_line() + theme(legend.position = "none")

# -------------------------------------------------------------------------

# bar plot 
x + geom_bar(stat = "identity", position = "identity", fill = NA) + theme(legend.position = "none")


# -------------------------------------------------------------------------
# To overlay a per group regression line
ggplot(mpg, aes(displ, hwy, color = factor(cyl))) + 
  geom_point() + 
  geom_smooth(method = "lm")

# -------------------------------------------------------------------------


