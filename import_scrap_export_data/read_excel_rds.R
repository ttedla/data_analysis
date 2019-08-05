
# -------------------------------------------------------------------------
setwd("~/data_analysis/")

# -------------------------------------------------------------------------


library(xlsx)

# -------------------------------------------------------------------------
    # read in fi rst worksheet using a sheet index or name

my_xlsx <- read.xlsx("./data/my_data.xlsx", sheetName = "Sheet2")
head(my_xlsx)

# -------------------------------------------------------------------------

# read in data and change class type
mydata_sheet1.2 <- read.xlsx ("mydata.xlsx", sheetName = "Sheet1",
                              stringsAsFactors = FALSE,
                              colClasses = c ("double", "character",
                                              "logical"))

# -------------------------------------------------------------------------

# by default keepFormula is set to FALSE so only
# the formula output will be read in
read.xlsx ("mydata.xlsx", sheetName = "Sheet4")

# -------------------------------------------------------------------------

# changing the keepFormula to TRUE will display the equations
read.xlsx ("mydata.xlsx", sheetName = "Sheet4", keepFormulas = TRUE)

# -------------------------------------------------------------------------

        # readxl Package #

# -------------------------------------------------------------------------

library(readxl)

# -------------------------------------------------------------------------

my_data <- read_excel("./data/my_data.xlsx", sheet = "Sheet2")
my_data

# -------------------------------------------------------------------------


mydata_ex <- read_excel ("mydata.xlsx", sheet = "Sheet5",
                         col_types = c ("numeric", "blank", "numeric",
                                        "date", "blank"))

# -------------------------------------------------------------------------

# change variable 3 to a logical variable
mydata_ex$`variable 3` <- as.logical (mydata_ex$`variable 3`)


# -------------------------------------------------------------------------

      #Load Data f rom Saved R Object File

# -------------------------------------------------------------------------

# There are three primary ways that people tend
# to save R data/objects: as .RData, .rda, or as .rds fi les.

# -------------------------------------------------------------------------

load ("mydata.RData")
load (fi le = "mydata.rda")
name <- readRDS ("mydata.rds")
