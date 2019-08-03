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

str(my_data_arranged)

# -------------------------------------------------------------------------

            # Change playerID and lglID to factor

# -------------------------------------------------------------------------

my_data_arranged <- my_data_arranged %>%
  mutate(playerID = as.factor(playerID), lgID = as.factor(lgID))

# -------------------------------------------------------------------------

str(my_data_arranged)

# -------------------------------------------------------------------------

          # Summarise() #

# -------------------------------------------------------------------------

summarise(my_data_arranged, mean_run = mean(R))

summarise(my_data_arranged, mean_SH = mean(SH, na.rm = T), mean_Game = mean(G))

# -------------------------------------------------------------------------

            # Group_by vs no group_by

# -------------------------------------------------------------------------

      # The function summerise() without group_by() does not make any sense.
      # It creates summary statistic by group. 
      # group_by works perfectly with all the other 
      # verbs (i.e. mutate(), filter(), arrange(), ...).
# -------------------------------------------------------------------------
        # compute the mean of average home run (HR) 
        # for the different groups lgID groups 
my_data_arranged %>%
  group_by(lgID) %>%
  summarise(mean_run = mean(HR))

# -------------------------------------------------------------------------

      # The pipe operator works with ggplot() as well. 
