
# -------------------------------------------------------------------------

      # Dealing with Time Zones and Daylight Savings # 

# -------------------------------------------------------------------------

# To change the time zone for a date /time we can use the 
# with_tz () function which will also update the clock time
# to align with the updated time zone:

# -------------------------------------------------------------------------

library (lubridate)

# -------------------------------------------------------------------------

time <- now ()
time

# -------------------------------------------------------------------------

# change time zone to MST 
with_tz (time, tzone = "MST")

# -------------------------------------------------------------------------

# If the time zone is incorrect or for some reason you need to change
# the time zone without changing the clock time you can force it with
# force_tz () :

# -------------------------------------------------------------------------

time
force_tz(time, tzone = "MST")

# -------------------------------------------------------------------------

# We can also easily work with daylight savings times 
# to eliminate impacts on date /time calculations:

# -------------------------------------------------------------------------

# an example of a daylight savings time
ds <- ymd_hms ("2015-03-08 01:59:59", tz = "US/Eastern")
# adding a second adds an extra hour
ds + dseconds(1)

# -------------------------------------------------------------------------
# add a duration of 2 hours will refl ect actual daylight savings clock time
# that occurred 2 hours after 01:59:59 on 2015-03-08
ds + dhours(2)
