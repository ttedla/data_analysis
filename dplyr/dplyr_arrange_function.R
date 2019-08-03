
# -------------------------------------------------------------------------

library(dplyr)

# -------------------------------------------------------------------------

          # arrange(): arranges rows # 

# -------------------------------------------------------------------------

# The arrange() function in dplyr allows you to arrange 
# the rows in a specified column (values in a row of a column). 
# For example, we can use arrange() function with a column 
# variable to sort the data frame. By default, arrange() orders
# in ascending order. We can arrange by descending order, 
# by using the function desc() with in arrange().

# -------------------------------------------------------------------------

        # Let's get a data from a web-site
my_data <- read.csv("https://raw.githubusercontent.com/guru99-edu/R-Programming/master/lahman-batting.csv")

# -------------------------------------------------------------------------

      # Let's select a couple of vars
# Step 2
my_data_01 <- my_data %>% 
  select(playerID, yearID, AB, teamID, lgID, G, R, HR, SH)

# -------------------------------------------------------------------------

        # Let's save my_data_01 as tibble 
my_data_01 <- as_tibble(my_data_01)

# -------------------------------------------------------------------------

str(my_data_01)

# -------------------------------------------------------------------------

head(my_data_01)

# -------------------------------------------------------------------------

# Let's arrange the data using the G in ascending order 

# -------------------------------------------------------------------------

my_data_01 %>% 
  arrange(G)

# -------------------------------------------------------------------------

        # desc order 

# -------------------------------------------------------------------------

my_data_01 %>% 
  arrange(desc(G))

# -------------------------------------------------------------------------

        # more than one column
my_data_01 %>% 
  arrange(G, HR)

# -------------------------------------------------------------------------

      # descending 
my_data_01 %>% 
  arrange(desc(G, HR))

# -------------------------------------------------------------------------


