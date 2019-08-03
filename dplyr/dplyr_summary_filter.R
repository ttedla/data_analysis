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

#                           Filter #
# Before you intend to do an operation, you can filter the dataset. 
# The dataset starts in 1871, and the analysis does not need the 
# years prior to 1980.

# -------------------------------------------------------------------------

my_data_arranged %>%
  filter(yearID > 1980) %>% 
  group_by(yearID) %>% 
  summarise(mean_game_year = mean(G))

# -------------------------------------------------------------------------


