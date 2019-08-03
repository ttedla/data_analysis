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



        # You will do the following step:
        # 
        #         Step 1: Select data frame
        #         Step 2: Group data
        #         Step 3: Summarize the data
        #         Step 4: Plot the summary statistics

# -------------------------------------------------------------------------
# compute the mean of average home run (HR) 
# for the different groups lgID groups 
# plot the result

# -------------------------------------------------------------------------


library(ggplot2)
# Step 1
my_data_arranged %>% 
  # Step 2
  group_by(lgID) %>%
  # Step 3
  summarise(mean_home_run = mean(HR)) %>%
  # Step 4
  ggplot(aes(x = lgID, y=mean_home_run, fill=lgID)) + 
  geom_bar(stat = "identity") + 
  theme_classic() + 
  labs(
    x = "Baseball league", 
    y = "Average home run", 
    title = paste("Example group_by() with summerise()")
  )
