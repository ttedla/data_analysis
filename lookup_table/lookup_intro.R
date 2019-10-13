
# -------------------------------------------------------------------------

        # Lookup table


# -------------------------------------------------------------------------

# Let's use postal_df dataset
postal_df <- read.csv("~/data_analysis/lookup_table/postal_df.csv", header = T, stringsAsFactors = FALSE)
states_code <- read.csv("~/data_analysis/lookup_table/states_code.csv", header = T, stringsAsFactors = F)


# -------------------------------------------------------------------------

# A lookup table/named vector has 
# >> values as the vector, and 
# >> keys as the names.

# -------------------------------------------------------------------------

# So let's first make a vector of the values, which are in the PostalCode column:
getPostalCodes <- postal_df$PostalCode

# -------------------------------------------------------------------------

# add names from the state column

# -------------------------------------------------------------------------

names(getPostalCodes) <- postal_df$State

# -------------------------------------------------------------------------

# To use this named vector as a lookup table, 
# the format is 
          # >>>> lookupvector['key'] >>>



# -------------------------------------------------------------------------
str(getPostalCodes)
getPostalCodes['Arkansas']

# -------------------------------------------------------------------------

# To return just the value, without the key, add the 
# unname function to that value you get back:

# -------------------------------------------------------------------------

unname(getPostalCodes['Arkansas'])

getPostalCodes[['Arkansas']]

# -------------------------------------------------------------------------

# -------------------------------------------------------------------------

names(states_code)

getStatest <- states_code$FIPS
names(getStatest) <- states_code$State
getStatest

get_state_fips <- function(state, lookupvector = getStatest) {
  fipscode <- unname(lookupvector[state])
  return(fipscode)
}

get_value <- function(mykey, mylookupvector){
  myvalue <- mylookupvector[mykey]
  myvalue <- unname(myvalue)
  return(myvalue)
}

getPostalCodes
# -------------------------------------------------------------------------

get_value("Arkansas", getPostalCodes)

get_state_fips("Texas")

# -------------------------------------------------------------------------



