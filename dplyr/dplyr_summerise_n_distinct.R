setwd("~/data_analysis/")
# -------------------------------------------------------------------------

# R Aggregate Function: Summarise & Group_by() #

# -------------------------------------------------------------------------

library(dplyr)

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

# The pipe operato (%>%) r works with ggplot() as well. You can easily show 
# the summary statistic with a graph. All the steps are pushed inside
# the pipeline until the grap is plot. It seems more visual to see the
# average homerun by league with a bar char. The code below demonstrates
# the power of combining group_by(), summarise() and ggplot() together.

# -------------------------------------------------------------------------

              # Distinct number of observation #

# The function n() returns the number of observations in a current group. 
# A closed function to n() is n_distinct(), which count the number of 
# unique values. 
# 
# In the next example, you add up the total of players a team
# recruited during the all periods.

# -------------------------------------------------------------------------

my_data_arranged %>%
  group_by(teamID) %>%
  summarise(no_players = n_distinct(playerID)) %>%
  arrange(desc(no_players))
