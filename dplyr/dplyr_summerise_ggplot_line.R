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

        # Basic function #

# -------------------------------------------------------------------------

    # We can proceed in two steps to generate a date frame from a summary:

          # Step 1: Store the data frame for further use
          # Step 2: Use the dataset to create a line plot

# -------------------------------------------------------------------------
    # Step 1) You compute the average number of games played by year.

avg_num_games <- my_data_arranged %>%
  group_by(yearID) %>% 
  summarise(avg_g_played = mean(G))

# -------------------------------------------------------------------------

        # Step 2) Plot the summary statistic and see the trend



ggplot(avg_num_games, aes(x=yearID, y=avg_g_played)) + 
  geom_line() + 
  theme_bw() + 
  labs(
    x = "Year", 
    y = "Average games played", 
    title = "Avg games played from 1871 - 2016"
  )

# -------------------------------------------------------------------------


