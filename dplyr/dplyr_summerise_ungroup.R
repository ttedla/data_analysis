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

# Ungroup
# Last but not least, you need to remove the grouping before
# you want to change the level of the computation.


# -------------------------------------------------------------------------

my_data_arranged %>%
  filter(HR > 0) %>%   # filter where HR > 0 
  group_by(playerID) %>%  # group by ID where HR >0 
  summarise(avg_HR_Game = sum(HR)/sum(G)) %>% # compute sum(HR)/sum(G)
  ungroup() %>% # ungroup avg_HR_Game
  summarise(avg_HR = mean(avg_HR_Game))  # do a mean of avg_HR_Game


# -------------------------------------------------------------------------


