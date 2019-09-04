# ggplot Axes texts 

# -------------------------------------------------------------------------

library(ggplot2)

base <- ggplot(economics, aes(date, psavert)) +
  geom_line(na.rm = TRUE) 

# -------------------------------------------------------------------------

# The default Axes Text position 
base + theme(axis.title.y = element_text( hjust = .5), axis.title.x = element_text( hjust = .5))

# move it up to the right side
base + theme(axis.title.y = element_text( hjust = 1), axis.title.x = element_text( hjust = 1))


# -------------------------------------------------------------------------

# move it up to the left side
base + theme(axis.title.y = element_text( hjust = 0), axis.title.x = element_text( hjust = 0))

