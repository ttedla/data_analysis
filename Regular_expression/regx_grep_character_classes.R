
# -------------------------------------------------------------------------

            # Character Classes #

# -------------------------------------------------------------------------

# To match one of several characters in a specified set we can enclose 
# the characters of concern with square brackets [ ] . In addition, to 
# match any characters not in a specifi ed character set we can include
# the caret ^ at the beginning of the set within the brackets.

# -------------------------------------------------------------------------

x <- c ("RStudio", "v.0.99.484", "2015", "09-22-2015", "grep vs. grepl")

# -------------------------------------------------------------------------
      # find any strings with numeric values between 0-9
grep(pattern = "[0-9]", x, value = TRUE)
      # to get the index only
grep(pattern = "[0-9]", x)

# -------------------------------------------------------------------------

# find any strings with numeric values between 6-9

# -------------------------------------------------------------------------

grep(pattern = "[6-9]", x, value = TRUE)

# -------------------------------------------------------------------------

      # find any strings with the character R or r
grep(pattern = "[Rr]", x, value = TRUE)

# -------------------------------------------------------------------------

      # find any strings that have non-alphanumeric characters
grep(pattern = "[^0-9a-zA-Z]", x, value = TRUE)

