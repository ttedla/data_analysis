
# -------------------------------------------------------------------------

# A regular expression (aka regex) is a sequence of characters that 
# define a search pattern, mainly for use in pattern matching with 
# text strings.

# -------------------------------------------------------------------------


          # Metacharacters#

# -------------------------------------------------------------------------
        #Metacharacters consist of non-alphanumeric symbols such as:
        #. \ | ( ) [ { $ * + ?

# -------------------------------------------------------------------------

# To match metacharacters in R you need to escape them with a double backslash
# "\\".

# -------------------------------------------------------------------------
                # substitute $ with !              #

# -------------------------------------------------------------------------

sub(pattern = "\\$", replacement = "\\!", "I Love You R$")

# -------------------------------------------------------------------------

                  # substitute ^ with carrot #

# -------------------------------------------------------------------------

text= "My daughter has a ^ with almost every meal!"
sub(pattern = "\\^", replacement = "carrot", text)

# -------------------------------------------------------------------------

            # substitute \\ with whitespace #

# -------------------------------------------------------------------------

text = "I\\need\\space"
sub(pattern = "\\\\", replacement = " ", text)
gsub(pattern = "\\\\", replacement = " ", text)

# -------------------------------------------------------------------------


