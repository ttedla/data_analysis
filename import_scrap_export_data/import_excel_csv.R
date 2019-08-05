
# -------------------------------------------------------------------------

        # Importing Tabular and Excel Files Stored Online #

# -------------------------------------------------------------------------

# the url for the online CSV
url <- "https://www.data.gov/media/federal-agency-participation.csv"
url1 <- "https://s3.amazonaws.com/bsp-ocsit-prod-east-appdata/datagov/wordpress/agency-participation.csv"
# -------------------------------------------------------------------------

# use read.csv to import
data_gov <- read.csv(url1, stringsAsFactors = FALSE)

# -------------------------------------------------------------------------

# for brevity I only display fi rst 6 rows
data_gov[1:6, c(1,3:4,5)]

# -------------------------------------------------------------------------


