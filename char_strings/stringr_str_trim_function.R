
# -------------------------------------------------------------------------

      # Remove Leading and Trailing Whitespace #

# -------------------------------------------------------------------------

# A common task of string processing is that of parsing text into individual 
# words. Often, this results in words having blank spaces (whitespaces) on 
# either end of the word. The str_trim () can be used to remove these spaces:

# -------------------------------------------------------------------------

text <- c ("Text ", " with", " whitespace ", " on", "both ", " sides ")
text
# remove beginning and trailing whitespace # 

# -------------------------------------------------------------------------
# trim whitespace from the right side
str_trim(text, side = "right")

# -------------------------------------------------------------------------

# trim from the left side 
str_trim(text, side = "left")

# -------------------------------------------------------------------------

# trim from both sides
str_trim(text, side = "both")

# -------------------------------------------------------------------------


