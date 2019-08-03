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

# Minimum and maximum per playerID

# -------------------------------------------------------------------------

my_data_arranged %>%
  group_by(playerID) %>%
  summarise(min_hr = min(G), max_hr = max(G))

# -------------------------------------------------------------------------


