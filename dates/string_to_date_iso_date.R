
# -------------------------------------------------------------------------

            # Create Dates by Merging Data #


# -------------------------------------------------------------------------

# Sometimes your date data are collected in separate elements. 
# To convert these separate data into one date object incorporate
# the ISOdate () function:

# -------------------------------------------------------------------------

yr <- c ("2012", "2013", "2014", "2015")
mo <- c ("1", "5", "7", "2")
day <- c ("02", "22", "15", "28")

# -------------------------------------------------------------------------

        # ISOdate converts a POSIXct object
ISOdate(year = yr, month = mo, day = day)

# -------------------------------------------------------------------------

        # truncate the unused time data by converting with as.Date
as.Date(ISOdate(year = yr, month = mo, day = day))

# -------------------------------------------------------------------------

# Note that ISODate() also has arguments to accept data for hours, minutes,
# seconds, and time-zone if you need to merge all these separate components.
