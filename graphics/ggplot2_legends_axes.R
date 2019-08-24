
# -------------------------------------------------------------------------

          # Guides: Legends and Axes # 

# -------------------------------------------------------------------------

        # Scale Title #

# -------------------------------------------------------------------------

# The first argument to the scale function, name , is the axes/legend title. You
# can supply text strings (using \n for line breaks) or mathematical expressions
# in quote() (as described in ?plotmath ):

# -------------------------------------------------------------------------

df <- data.frame(x = 1:2, y = 1, z = "a")
df

# -------------------------------------------------------------------------

p <- ggplot(df, aes(x,y)) + geom_point()

p + scale_x_continuous("X axis")

p + scale_x_continuous(quote(a + mathematical ^ expression))

# -------------------------------------------------------------------------

p <- ggplot(df, aes(x, y)) + geom_point(aes(color = z))

p + xlab("X axis") + 
  ylab(" Y axis")

p + labs( x = "X axis", "Y axis", color = "Color \nlegend")

# -------------------------------------------------------------------------
# 
# There are two ways to remove the axis label. Setting it to "" omits the
# label, but still allocates space; NULL removes the label and its space. Look
# closely at the left and bottom borders of the following two plots.

# -------------------------------------------------------------------------

p <- ggplot(df, aes(x, y)) + 
  geom_point() + 
  theme(plot.background = element_rect(color="grey50"))

p + labs(x = "", y="")

p + labs(x = NULL, y= NULL)
