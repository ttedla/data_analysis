setwd("~/data_analysis/")
# -------------------------------------------------------------------------

# Function in summarise() #

# -------------------------------------------------------------------------

library(dplyr)
library(ggplot2)
# -------------------------------------------------------------------------
my_data <- read.csv("./data/batting_data.csv", header = T, stringsAsFactors = F)
my_data <- as_tibble(my_data)

# -------------------------------------------------------------------------

# select playerID, yearID, AB, teamID, lgID, G, R, HR, SH and 
# arrange using playerID, teamID, yearID

# -------------------------------------------------------------------------

my_data_arranged <- my_data %>%
  select(playerID, yearID, AB, teamID, lgID, G, R, HR, SH) %>%
  arrange(playerID, teamID, yearID)

# -------------------------------------------------------------------------

        # Sum
# Another useful function to aggregate the variable is sum().
# 
# You can check which leagues have the more homeruns.


# -------------------------------------------------------------------------
my_data_arranged %>%
  group_by(lgID) %>%
  summarise(Sum_home_run=sum(HR))

# -------------------------------------------------------------------------


