
# -------------------------------------------------------------------------

          # prefix form

# -------------------------------------------------------------------------

# As illustrated by the following chunk, arguments are matched by exact name, 
# then with unique prefixes, and finally by position.

k01 <- function(abcdef, bcde1, bcde2) {
  list(a = abcdef, b1 = bcde1, b2 = bcde2)
}
str(k01(1,2,3))
str(k01(2,3,abcdef = 1))

# -------------------------------------------------------------------------

# Can abbreviate long argument names:

str(k01(2,3,a=1))

# -------------------------------------------------------------------------

# But this doesn't work because abbreviation is ambiguous
str(k01(1,3,b=1))

# -------------------------------------------------------------------------


