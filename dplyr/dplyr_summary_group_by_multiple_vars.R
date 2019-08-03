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
              # A summary statistic can be realized among multiple groups. #

# -------------------------------------------------------------------------

            # group_by(yearID, teamID): Group by year and team
            # summarise(mean_games = mean(G)): Summarize the number of game player  
            # arrange(desc(teamID, yearID)): Sort the data by team and year

# -------------------------------------------------------------------------

my_data_arranged %>%
  group_by(yearID, teamID) %>% 
  summarise(mean_games = mean(G)) %>%
  arrange(desc(teamID, yearID))

# -------------------------------------------------------------------------


