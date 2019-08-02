
# -------------------------------------------------------------------------

          # Select columns # 

# -------------------------------------------------------------------------

library(dplyr)

# -------------------------------------------------------------------------

      # The flight data is found in nycflights13

# -------------------------------------------------------------------------

library(nycflights13)

# -------------------------------------------------------------------------

flights %>% 
  select(carrier, origin, dest, tailnum, 
         dep_delay, dep_time, arr_delay, arr_time) %>%
  head(10)

# -------------------------------------------------------------------------

                # Filter with a value

# -------------------------------------------------------------------------

# Let’s say you want to see only the flights of United Airline (UA). 
# You can run something like below.

flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, 
         arr_delay, arr_time) %>%
  filter(carrier=="UA")

# -------------------------------------------------------------------------

# And now, let’s find the flights that are of United Airline (UA) and left 
# JFK. You can use ‘&’ operator as AND and ‘|’ operator
# as OR to connect multiple filter conditions. This time we’ll use ‘&’.

# -------------------------------------------------------------------------

flights %>% 
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, 
         arr_delay, arr_time) %>%
  filter(carrier=="UA" & origin == "JFK")


# -------------------------------------------------------------------------

# Or, you might want to see only the flights that left JFK 
# but are not of United Airline (UA). You can use ‘!=’ operator as ‘not equal’.
flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time) %>% 
  filter(carrier!="UA" & origin == "JFK")

# -------------------------------------------------------------------------


