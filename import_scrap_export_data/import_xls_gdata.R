
# -------------------------------------------------------------------------

      # importing xls using gdata

# -------------------------------------------------------------------------

library(gdata)

# -------------------------------------------------------------------------

# the url for the online Excel file
url <- "http://www.huduser.org/portal/datasets/fmr/fmr2015f/FY2015F_4050_Final.xls"

# -------------------------------------------------------------------------

# use read.xls to import
rents <- read.xls(url)

# -------------------------------------------------------------------------

rents[1:6, 1:10]

# -------------------------------------------------------------------------


