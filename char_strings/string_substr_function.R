
# -------------------------------------------------------------------------

                    # Extract/ Replace Substrings ## 

# -------------------------------------------------------------------------

# To extract or replace substrings in a character vector there are 
# three prima ry base R functions to use: substr () , substring () , 
# and strsplit () . The purpose of substr () is to extract and replace 
# substrings with specifi ed starting and stopping characters:

# -------------------------------------------------------------------------

alphabet <- paste (LETTERS, collapse = "")
alphabet

# -------------------------------------------------------------------------

# extract 18th character in string
substr(alphabet, start = 18, stop = 18)

# -------------------------------------------------------------------------


# extract 18-24th characters in string
substr(alphabet, start = 18, stop = 24)

# -------------------------------------------------------------------------

# replace 19-24th characters with `R`
substr(alphabet, start = 18, stop = 24) <- "RRRRRR"
alphabet

# -------------------------------------------------------------------------


