
# -------------------------------------------------------------------------

  # Pattern Replacement Functions

# -------------------------------------------------------------------------

        # To replace the fi rst matching occurrence of a pattern use sub() :
new <- c ("New York", "new new York", "New New New York")

# -------------------------------------------------------------------------

      # Default is case sensitive - replace "New" with "Old"
sub(pattern = "New", replacement = "Old", new)

# -------------------------------------------------------------------------

        # use 'ignore.case = TRUE' to disable case sensitivity
sub(pattern = "New", replacement = "Old", new, ignore.case = TRUE)

# -------------------------------------------------------------------------

    # To replace all matching occurrences of a pattern use gsub () :

gsub(pattern = "New", replacement = "Old", new)


# -------------------------------------------------------------------------
      # use ignore.case = TRUE to disable case sensitivity

# -------------------------------------------------------------------------

gsub(pattern = "New", replacement = "Old", new, ignore.case = TRUE)

# -------------------------------------------------------------------------


