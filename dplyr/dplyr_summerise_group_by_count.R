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

# Count
# Count observations by group is always a good idea. With R, 
# you can aggregate the the number of occurence with n().
# 
# For instance, the code below computes the number of years played by each player.



# -------------------------------------------------------------------------

my_data_arranged %>%
  group_by(playerID) %>%
  summarise(no_years = n()) %>%
  arrange(no_years)

# -------------------------------------------------------------------------
