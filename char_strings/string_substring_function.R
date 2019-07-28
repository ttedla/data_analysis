
# -------------------------------------------------------------------------

    # substring()

# -------------------------------------------------------------------------

# The purpose of substring () is to extract and replace substrings with only a
# specifi ed starting point. substring () also allows you to extract/replace 
# in a recursive fashion:

# -------------------------------------------------------------------------

alphabet <- paste (LETTERS, collapse = "")

# -------------------------------------------------------------------------

alphabet
# extract 18th through last character
substring(alphabet, first = 18)

# -------------------------------------------------------------------------

# recursive extraction; specify start position only
substring(alphabet, first = 18:24)

# -------------------------------------------------------------------------

# recursive extraction; specify start and stop positions

substring(alphabet, first = 1:5, last = 3:7)

# -------------------------------------------------------------------------


