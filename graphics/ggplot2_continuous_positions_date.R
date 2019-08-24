
# -------------------------------------------------------------------------

          # Scales Toolbox # 

# -------------------------------------------------------------------------

# Scales can be divided roughly into four
# families:
#   • Continuous position scales used to map integer, numeric, and date/time
# data to x and y position.
# • Colour scales, used to map continuous and discrete data to colours.
# • Manual scales, used to map discrete variables to your choice of size, line
# type, shape or colour.
# • The identity scale, paradoxically used to plot variables without scaling
# them. This is useful if your data is already a vector of colour names.

# -------------------------------------------------------------------------

          # Continuous Position Scales # 

# -------------------------------------------------------------------------

# Every plot has two position scales, x and y. The most common continu-
# ous position scales are scale_x_continuous() and scale_y_continuous() , which
# linearly map data to the x and y axis. The most interesting variations are
# produced using transformations. Every continuous scale takes a trans argu-
#   ment, allowing the use of a variety of transformations:

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# Convert from fuel economy to fuel consumption
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_y_continuous(trans = "reciprocal")
# compare it to 
ggplot(mpg, aes(displ, hwy)) +
  geom_point()


# -------------------------------------------------------------------------

# Log transform x and y axes
ggplot(diamonds, aes(price, carat)) +
  geom_bin2d() +
  scale_x_continuous(trans = "log10") +
  scale_y_continuous(trans = "log10")

ggplot(diamonds, aes(price, carat)) +
  geom_bin2d() 

# -------------------------------------------------------------------------
# 
# Date and date/time data are continuous variables with special labels. gg-
#   plot2 works with Date (for dates) and POSIXct (for date/times) classes: if your
# dates are in a different format you will need to convert them with as.Date()
# or as.POSIXct() .
# scale_x_date() and scale_x_datetime() work similarly to
# scale_x_continuous() but have special date breaks and date labels arguments
# that work in date-friendly units:

# • date breaks and date minor breaks() allows you to position breaks by date
# units (years, months, weeks, days, hours, minutes, and seconds). For ex-
#   ample, date breaks = "2 weeks" will place a major tick mark every two
# weeks.
# • date labels controls the display of the labels using the same formatting
# strings as in strptime() and format() :
# -------------------------------------------------------------------------

base <- ggplot(economics, aes(date, psavert)) +
  geom_line(na.rm = TRUE) +
  labs(x = NULL, y = NULL)

base # Default breaks and labels

base + scale_x_date(date_labels ="%y", date_breaks = "5 years") 


# -------------------------------------------------------------------------

base + scale_x_date(
  limits = as.Date(c("2004-01-01", "2005-01-01")),
  date_labels = "%b %y",
  date_minor_breaks = "1 month"
)


# -------------------------------------------------------------------------

base + scale_x_date(
  limits = as.Date(c("2004-01-01", "2004-06-01")),
  date_labels = "%m/%d",
  date_minor_breaks = "2 weeks"
)
