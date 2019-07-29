
# -------------------------------------------------------------------------

              # Subsetting Vectors # 

# -------------------------------------------------------------------------

# The four main ways to subset a vector include combining square brackets [ ] with:
#   Positive integers
#   Negative integers
#   Logical values
#   Names
# You can also subset with double brackets [[ ]] for simplifying subsets.

# -------------------------------------------------------------------------

v1 = 8:17
names(v1) <- letters[1: length(v1)]
comment(v1) <- "This is a comment for v1"

# -------------------------------------------------------------------------

            # Subsetting with Positive Integers # 

# -------------------------------------------------------------------------

v1
v1[2]
v1[2:4]
v1[c(2,2,4)]

# -------------------------------------------------------------------------

              # Subsetting with Negative Integers # 

# -------------------------------------------------------------------------
        # Subsetting with negative integers will omit the elements 
        # at the specified positions:

# -------------------------------------------------------------------------

v1[-1] # removes the first vector

# -------------------------------------------------------------------------
v1[-c(2,4,6,8)]

# -------------------------------------------------------------------------

            # Subsetting with Logical Values #

# -------------------------------------------------------------------------

# Subsetting with logical values will select the elements
# where the corresponding logical value is TRUE :

# -------------------------------------------------------------------------

v1[ c (TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE)]
v1[v1<12]

v1[v1<12 | v1 > 15]
# -------------------------------------------------------------------------
# if logical vector is shorter than the length of the vector being
# subsetted, it will be recycled to be the same length
v1[c(TRUE, FALSE)]

# -------------------------------------------------------------------------

                    # Subsetting with Names #

# -------------------------------------------------------------------------

# Subsetting with names will return the elements with the matching 
# names specified:


# -------------------------------------------------------------------------

v1["b"]
v1[c("a", "c", "h")]

# -------------------------------------------------------------------------

                  # Simplifying vs. Preserving #

# -------------------------------------------------------------------------

# Simplifying subsets returns the simplest possible data structure that can 
# represent the output. 
# Preserving subsets keeps the structure of the output the same as the input.

# -------------------------------------------------------------------------

# For vectors, subsetting with single brackets [ ] preserves while 
# subsetting with double brackets [[ ]] simplifi es. The change you
# will notice when simplifying vectors is the removal of names.

# -------------------------------------------------------------------------

v1[1] # preserves 
v1[[1]] # simplifies

