
# -------------------------------------------------------------------------

        # Converting Strings to Dates #

# -------------------------------------------------------------------------

# When date and time data are impo rted into R they will often default 
# to a character string . This requires us to convert strings to dates. 
# We may also have multiple strings that we want to merge to create a date
# variable.

# -------------------------------------------------------------------------

# To convert a string that is already in a date format (YYYY-MM-DD) into a date
# object use as.Date () :

x <- c ("2015-07-01", "2015-08-01", "2015-09-01")
as.Date(x)

# -------------------------------------------------------------------------

# There are multiple formats that dates can be in; for a complete list of 
# formatting code options in R type ?strftime in your console .

y <- c ("07/01/2015", "07/01/2015", "07/01/2015")
as.Date(y, format = "%m/%d/%y")

# -------------------------------------------------------------------------

        # using the lubridate package: # 

# -------------------------------------------------------------------------

library(lubridate)
ymd(x)
mdy(y)

# -------------------------------------------------------------------------

# One of the many benefi ts of the lubridate package is that 
# it automatically recognizes the common separators used when 
# recording dates ("-", "/", ".", and ""). As a result, you only
# need to focus on specifying the order of the date elements to
# determine the parsing function applied

# -------------------------------------------------------------------------

        # Some of the parse functions: 
        #       ymd()
        #       ydm()
        #       mdy()
        #       dmy()
        #       hm()
        #       hms()
        #       ymd_hms()

# -------------------------------------------------------------------------


