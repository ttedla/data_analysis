
# -------------------------------------------------------------------------

# String Manipulation with Base R


# -------------------------------------------------------------------------

# To convert all upper case characters to lower case use tolower () :
x <- "Learning To MANIPULATE strinGS in R"
tolower(x)

# -------------------------------------------------------------------------

#To convert all lower case characters to upper case use toupper () :
toupper(x)

# -------------------------------------------------------------------------

# Simple Character Replacement
# To replace a character (or multiple characters) in a string 
#you can use chartr () :

# -------------------------------------------------------------------------

# replace 'A' with 'a'
x <- "This is A string."
chartr(old = "A", new = "a", x)

# -------------------------------------------------------------------------

# multiple character replacements
# replace any 'd' with 't' and any 'z' with 'a'

# -------------------------------------------------------------------------

y <- "Tomorrow I plzn do lezrn zbout dexduzl znzlysis."
chartr(old = "dz", new = "ta", y)

# -------------------------------------------------------------------------

# Remark: Note that chartr () replaces every identifi ed letter for replacement so the only
# time I use it is when I am certain that I want to change every possible occurrence of
# a letter.
