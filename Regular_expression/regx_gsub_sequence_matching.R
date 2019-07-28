
# -------------------------------------------------------------------------

                      # Sequences #

# -------------------------------------------------------------------------

        # \\d ===> match a digit character
        # \\D ===> match a non-digit character
        # \\s ===> match a space character
        # \\S ===> match a non-space character
        # \\w ===> match a word 
        # \\W ===> match a non-word 
        # \\b ===> match a word boundary 
        # \\B ===> match a non-word boundary
        # \\h ===> match a horizontal space
        # \\H ===> match a a non-horizontal space
        # \\v ===> match a vertical space
        # \\d ===> match a non-vertical space

# -------------------------------------------------------------------------
my_text= "I'm working in RStudio v.0.99.484"
    # substitute any digit with an underscore

# -------------------------------------------------------------------------
gsub(pattern = "\\d", replacement = "_", my_text)

# -------------------------------------------------------------------------
        # substitute any non-digit with an underscore

# -------------------------------------------------------------------------

gsub(pattern = "\\D", replacement = "_", my_text)

# -------------------------------------------------------------------------

          # substitute any whitespace with underscore

# -------------------------------------------------------------------------

gsub(pattern = "\\s", replacement = "_", my_text)

# -------------------------------------------------------------------------

          # substitute any wording with underscore

# -------------------------------------------------------------------------

gsub(pattern = "\\w", replacement = "_", my_text)

# -------------------------------------------------------------------------


