
# -------------------------------------------------------------------------

            # Regex Functions
                      # Pattern Matching

# -------------------------------------------------------------------------

        # grep () , grepl () , and regexpr ()
        

# -------------------------------------------------------------------------

    # To find a pattern in a character vector and to have the 
    # element values or indices as the output use grep () :

# -------------------------------------------------------------------------

    # use the built in data set state.division
head(as.character(state.division))

# -------------------------------------------------------------------------

      # find the elements which match the pattern "North"

# -------------------------------------------------------------------------
grep(pattern = "North", state.division)
# to see the values use value=True
grep(pattern = "North", state.division, value = TRUE)

# -------------------------------------------------------------------------

# use the invert argument to show the non-matching pair of south and north

# -------------------------------------------------------------------------

grep("North | South", state.division, invert = TRUE)

# -------------------------------------------------------------------------

    #To fi nd a pattern in a character vector and 
    #to have logical (TRUE/FALSE) out- puts use grepl () :

# -------------------------------------------------------------------------

grepl("North | South", state.division)

# -------------------------------------------------------------------------

# wrap in sum() to get the count of matches
sum(grepl("North | South", state.division))

# -------------------------------------------------------------------------

    #To find exactly where the pattern exists in a string use regexpr () :
x <- c ("v.111", "0v.11", "00v.1", "000v.", "00000")
regexpr("v.", x)
                #Note that the value −1 means there is no match.
                # The second element (attribute “match length”) provides
                # the length of the match. The third element 
                # (attribute “useBytes”) has a value TRUE
                # meaning matching was done byte-by-byte rather 
                # than character-by-character.
# -------------------------------------------------------------------------


