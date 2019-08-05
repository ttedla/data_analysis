
# -------------------------------------------------------------------------

setwd("~/data_analysis/")

# -------------------------------------------------------------------------

        # Importing Zip file #

# -------------------------------------------------------------------------

# url location 
url <- "http://www.bls.gov/cex/pumd/data/comma/diary14.zip"

# -------------------------------------------------------------------------

# download .zip fi le and unzip contents

# -------------------------------------------------------------------------
# download .zip fi le and unzip contents

download.file(url, destfile = "~/data_analysis/data/dataset.zip", mode = "wb")

# -------------------------------------------------------------------------

unzip("~/data_analysis/data/dataset.zip", exdir = "~/data_analysis/data/")

# -------------------------------------------------------------------------
# assess the fi les contained in the .zip file which
# unzips as a folder named "diary14"

list.files("./data/diary14/")

# -------------------------------------------------------------------------

# alternatively, if we know the fi le we want prior to unzipping
# we can extract the fi le without unzipping using unz():
zip_data <- read.csv(unz("dataset.zip", "diary14/expd141.csv"))

# -------------------------------------------------------------------------
# to temporarily download the .zip file, extract the desired data, 
#and then discard the .zip fi le.

# -------------------------------------------------------------------------

# Create a temp. fi le name
temp <- tempfile ()

# -------------------------------------------------------------------------

# Use download.fi le() to fetch the fi le into the temp. fi le
download.file ("http://www.bls.gov/cex/pumd/data/comma/diary14.zip",temp)

# -------------------------------------------------------------------------
# Use unz() to extract the target file from temp. file
zip_data2 <- read.csv(unz(temp, "diary14/expd141.csv"))

# -------------------------------------------------------------------------

# Remove the temp file via unlink()
unlink (temp)

# -------------------------------------------------------------------------

zip_data2[1:5, 1:10]

# -------------------------------------------------------------------------


