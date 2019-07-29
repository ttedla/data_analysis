
# -------------------------------------------------------------------------

        # Creating Date Sequences # 

# -------------------------------------------------------------------------

# To create a sequence of dates we can leverage the seq () function. 
# As with numeric vectors, you have to specify at least three of the
# four arguments (from, to, by, and length.out ).


# -------------------------------------------------------------------------

seq ( as.Date ("2010-1-1"), as.Date ("2015-1-1"), by = "years")

# -------------------------------------------------------------------------

seq ( as.Date ("2015/1/1"), as.Date ("2015/12/30"), by = "quarter")

# -------------------------------------------------------------------------

seq ( as.Date ('2015-09-15'), as.Date ('2015-09-30'), by = "2 days")

# -------------------------------------------------------------------------

# Using the lubridate package is very similar. The only difference is lubridate
# changes the way you specify the fi rst two arguments in the seq () function.

# -------------------------------------------------------------------------

library(lubridate)

# -------------------------------------------------------------------------
        # 3 years from 2015/1/1 to 2015/12/30
seq ( ymd ("2015/1/1"), ymd ("2015/12/30"), by = "quarter")

# -------------------------------------------------------------------------
        # by 2 days from 15 sep to 30 sep in 2015
seq ( ymd('2015-09-15'), ymd('2015-09-30'), by = "2 days")

# -------------------------------------------------------------------------

# Creating sequences with time is very similar; however, we need to make sure our
# date object is POSIXct rather than just a Date object (as produced by as.Date):

# -------------------------------------------------------------------------
    # every hour from mid night to 12 on the 1st of 2015
seq(as.POSIXct("2015-1-1 0:00"), as.POSIXct("2015-1-1 12:00"), by = "hour")


# -------------------------------------------------------------------------

          # # with lubridate
seq(ydm_hm("2015-1-1 0:00"), ydm_hm("2015-1-1 12:00"), by="hour")
