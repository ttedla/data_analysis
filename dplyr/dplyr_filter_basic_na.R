
# -------------------------------------------------------------------------

library(dplyr)

# -------------------------------------------------------------------------

              # Filtering with multiple values # 

# -------------------------------------------------------------------------

# What if you want to see only the data for the flights that are of either 
# United Airline (UA) or American Airline (AA)? You can use ‘%in%’ for this,
# just like the IN operator in SQL.

flights %>% 
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time) %>%
  filter(carrier %in% c("UA", "AA"))

# -------------------------------------------------------------------------

# We can’t really tell if it’s working or not by looking at the first 10 rows.
# Let’s run count() function to summarize this quickly.

# -------------------------------------------------------------------------

flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time) %>%
  filter(carrier %in% c("UA", "AA")) %>%
  count(carrier)

# -------------------------------------------------------------------------

# What if you want to see the flight that are not United Airline (UA)
# and American Airline (AA) this time ? It’s actually very simple with
# R and dplyr. Here’s a magic one letter you can use with any condition
# to reverse the effect. It’s ‘!’ (exclamation mark). And, it goes like this.

# -------------------------------------------------------------------------

flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time) %>%
  filter(!carrier %in% c("UA", "AA")) %>%
  count(carrier)

# -------------------------------------------------------------------------

              # Filtering out NA values #

# -------------------------------------------------------------------------

flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time)

# locating columns with NA
colnames(flights)[ apply(flights, 2, anyNA) ]

# -------------------------------------------------------------------------
# When you look closer you’d notice that there are some NA values in 
# arr_delay column. You can get rid of them easily with ‘is.na()’ function,
# which would return TRUE if the value is NA and FALSE otherwise.

# -------------------------------------------------------------------------
flights %>%
  select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
         arr_time) %>% 
  filter(is.na(arr_delay))

# -------------------------------------------------------------------------

# It looks like all the values in arr_delay are now NA, which is opposite of
# what I hoped. Well, as you saw already we can now try the 
# ‘!’ (exclamation mark) function again like below.


# -------------------------------------------------------------------------

flights %>% select(carrier, origin, dest, tailnum, dep_delay, dep_time, arr_delay, 
                   arr_time) %>% 
  filter(!is.na(arr_delay))

# -------------------------------------------------------------------------


