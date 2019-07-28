
# -------------------------------------------------------------------------

          # POSIX Character Classes # 

# -------------------------------------------------------------------------

              # POSIX character classes which are
              # expressed in double brackets [[ ]]

# -------------------------------------------------------------------------

    # [[:lower:]]		lower-case letters
    # [[:upper:]]		upper-case letters
    # [[:alpha:]]		alphabetic characters [[:lower:]] + [[:upper:]]
    # [[:digit:]]		numeric values
    # [[:alnum:]]		alphanumeric characters [[:alpha:]] + [[:digit:]]
    # [[:blank:]]		blank characters (space & tab)
    # [[:cntrl:]]		control characters
    # [[:punct:]]		punctuation characters: ! " # % & ' ( ) * + , - . / : ;
    # [[:space:]]		space characters: tab, newline, vertical tab, space, etc	
    # [[:xdigit:]]		hexadecimal digits: 0-9 A B C D E F a b c d e f
    # [[:print:]]		printable characters [[:alpha:]] + [[:punct:]] + space
    # [[:graph:]]		graphical characters [[:alpha:]] + [[:punct:]]

# -------------------------------------------------------------------------

my_text <- "I like beer! #beer, @wheres_my_beer, I like R (v3.2.2) #rrrrrrr2015"

# -------------------------------------------------------------------------

                        # remove space or tabs

# -------------------------------------------------------------------------

gsub(pattern = "[[:blank:]]", replacement = "", my_text )

# -------------------------------------------------------------------------

          # replace punctuation with whitespace

# -------------------------------------------------------------------------

gsub(pattern = "[[:punct:]]", replacement = " ", my_text)

# -------------------------------------------------------------------------

          # remove alphanumeric characters
gsub(pattern = "[[:alnum:]]", replacement = "", my_text)

# -------------------------------------------------------------------------

                    # Quantifiers   #

# -------------------------------------------------------------------------

          # match states that contain z
          # Note that state.name is a built in dataset within R 
          #that contains all the U.S. state names.

# -------------------------------------------------------------------------

states <- state.name

# -------------------------------------------------------------------------

grep(pattern = "z+", states, value = TRUE)

# -------------------------------------------------------------------------

        # match states with two s
grep(pattern = "s{2}", states, value = TRUE)

# -------------------------------------------------------------------------

            #match states with one or two s
grep(pattern = "s{1,2}", states, value = TRUE)

# -------------------------------------------------------------------------


