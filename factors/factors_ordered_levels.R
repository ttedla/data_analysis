
# -------------------------------------------------------------------------

          # Ordering Levels       #

# -------------------------------------------------------------------------

# when not specified the default puts order as alphabetical
gender <- factor ( c ("male", "female", "female", "male", "female"))
gender # levels: female, male
# -------------------------------------------------------------------------
# specifying order
gender <- factor(c("male", "female", "female", "male","female"), 
                 levels = c("male", "female"))
gender # levels male, female

# -------------------------------------------------------------------------
# We can also create ordinal factors in which a specific order is desired
# by using the ordered = TRUE argument. This will be reflected in the output
# of the levels as shown below in which low < middle < high :

# -------------------------------------------------------------------------

ses <- c ("low", "middle", "low", "low", "low", "low", "middle", "low", 
          "middle", "middle", "middle", "middle", "middle", "high", "high", 
          "low", "middle","middle", "low", "high")

ses <- factor(ses, levels = c("low", "middle", "high"), ordered = TRUE)
class(ses)
ses

# -------------------------------------------------------------------------

# you can also reverse the order of levels if desired
factor(ses, levels=rev(levels(ses)))

# -------------------------------------------------------------------------


