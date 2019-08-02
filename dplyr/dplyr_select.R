
# -------------------------------------------------------------------------

library(tidyverse)

# -------------------------------------------------------------------------

glimpse(msleep)

# -------------------------------------------------------------------------

            # Selecting columns #

# -------------------------------------------------------------------------

# To select a few columns just add their names in the select statement. 
# The order in which you add them, will determine the order in which they
# appear in the output.

# -------------------------------------------------------------------------

msleep %>% select(name, genus, sleep_total, awake) %>% glimpse()

# -------------------------------------------------------------------------

          ############## selecting using start:end # 

# -------------------------------------------------------------------------

msleep %>% select(name:order, sleep_total:sleep_cycle) %>% glimpse()

# -------------------------------------------------------------------------
              # You can also deselect chunks of columns. # 

# -------------------------------------------------------------------------

msleep %>% select(-conservation, -(sleep_total:awake)) %>% glimpse()

# -------------------------------------------------------------------------

          # It’s even possible to deselect a whole chunk, 
          # and then re-add a column again.

# -------------------------------------------------------------------------

msleep %>% select(-(name:awake), conservation) %>% glimpse()

# -------------------------------------------------------------------------

            # Selecting columns based on partial column names

# -------------------------------------------------------------------------

# If you have a lot of columns with a similar structure you can use 
# partial matching by adding starts_with(), ends_with() or contains() 
# in your select statement.

# -------------------------------------------------------------------------

msleep %>% select(starts_with("sleep")) %>% glimpse()

# -------------------------------------------------------------------------
msleep %>% select(contains("eep"), ends_with("wt")) %>% glimpse()

# -------------------------------------------------------------------------

              # Selecting columns based on regex

# -------------------------------------------------------------------------

# If you have similar patterns that are not entirely the same you can use any 
# regular expression inside matches(). The below sample code will add any column
# that contains an 'o', followed by one or more other letters, and 'er'.

# -------------------------------------------------------------------------
msleep %>% select(matches("o.+er")) %>% glimpse()

# -------------------------------------------------------------------------

        # Selecting columns based pre-identified columns #

# -------------------------------------------------------------------------
# You can set up column names upfront, and then refer to them inside
# a select() statement by either wrapping them inside one_of() or by
# using the !! operator.

# -------------------------------------------------------------------------

classification <- c("name", "genus", "vore", "order", "conservation")
msleep %>% select(!!classification) %>% glimpse()

# -------------------------------------------------------------------------

        # Selecting columns by their data type #

# -------------------------------------------------------------------------

# The select_if function allows you to pass functions which return logical 
# statements. For instance you can select all string columns by using 
# select_if(is.character). Similarly, you can add is.numeric, is.integer, 
# is.double, is.logical, is.factor. If you have date columns, you can load
# the lubridate package, and use is.POSIXt or is.Date.

# -------------------------------------------------------------------------

msleep %>% select_if(is.numeric) %>% glimpse()

# -------------------------------------------------------------------------

# You can also select the negation but in this case you will need to add a tilde 
# to ensure that you still pass a function to select_if. The select_all/if/at
# functions require that a function is passed as an argument. If you have to add
# any negation or arguments, you will have to wrap your function inside funs()
# or add a tilde before to remake it a function.

# -------------------------------------------------------------------------

msleep %>% select_if(~!is.numeric(.)) %>% glimpse()

# -------------------------------------------------------------------------

          # Selecting columns by logical expressions

# -------------------------------------------------------------------------

          # In fact, select_if allows you to select based on any logical 
          # function, not just based on data type.

# -------------------------------------------------------------------------

msleep %>% select_if(is.numeric) %>% select_if(~mean(., na.rm = TRUE) >10)

# -------------------------------------------------------------------------
# Another useful function for select_if is n_distinct(), which counts the 
# amount of distinct values that can be found in a column. To return the 
# columns that have less than 20 distinct answers for instance you pass
# ~n_distinct(.) < 20 within the select_if statement. Given that 
# n_distinct(.) < 20 is not a function, you will need to put a tilde in front.


# -------------------------------------------------------------------------

msleep %>% select_if(~n_distinct(.)<10)

