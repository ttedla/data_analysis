
# -------------------------------------------------------------------------

          # Dealing with Missing Values #

# -------------------------------------------------------------------------

          # Testing for Missing Values #

# -------------------------------------------------------------------------

# To identify missing values use is.na() which returns a logical vector with TRUE
# in the element locations that contain missing values represented by NA . is.na ()
# will work on vectors , lists , matrices, and data frames .

# -------------------------------------------------------------------------

# vector with missing data
x <- c (1:4, NA, 6:7, NA)
x
is.na(x)

# -------------------------------------------------------------------------

# data frame with missing data
df <- data.frame (col1 = c (1:3, NA),
                  col2 = c ("this", NA,"is", "text"),
                  col3 = c (TRUE, FALSE, TRUE, TRUE),
                  col4 = c (2.5, 4.2, 3.2, NA),
                  stringsAsFactors = FALSE)

# -------------------------------------------------------------------------

# identify NAs in full data frame
is.na (df)

# -------------------------------------------------------------------------

# identify NAs in specific data frame column
is.na (df$col4)

# -------------------------------------------------------------------------

# To identify the location or the number of NAs we can leverage the which () and
# sum () functions:

# -------------------------------------------------------------------------

# identify location of NAs in vector
which(is.na(x))

# -------------------------------------------------------------------------

# identify count of NAs in data frame
sum(is.na(df))

# -------------------------------------------------------------------------

              # Recoding Missing Values #

# -------------------------------------------------------------------------

# To recode missing values; or recode specific indicators that represent missing values,
# we can use normal subsetting and assignment operations. For example, we can recode
# missing values in vector x with the mean values in x by fi rst subsetting the vector to
# identify NA s and then assign these elements a value. Similarly, if missing values are
# represented by another value (i.e. 99 ) we can simply subset the data for the elements
# that contain that value and then assign a desired value to those elements.

# -------------------------------------------------------------------------

# recode missing values with the mean
x[is.na(x)] <- mean(x, na.rm = TRUE)
round(x,2)

# -------------------------------------------------------------------------

# data frame that codes missing values as 99
df <- data.frame (col1 = c (1:3, 99), col2 = c (2.5, 4.2, 99, 3.2))
df

# -------------------------------------------------------------------------

# change 99 s to NAs
df[df==99] <- NA
df

# -------------------------------------------------------------------------

          # Excluding Missing Values #

# -------------------------------------------------------------------------

# We can exclude missing values in a couple different ways. First, if we want to
# exclude missing values from mathematical operations use the na.rm = TRUE
# argument. If you do not exclude these values most functions will return an NA .

# -------------------------------------------------------------------------

# A vector with missing values
x <- c (1:4, NA, 6:7, NA)
mean(x)

# -------------------------------------------------------------------------

# excluding NA values will calculate the mathematical
# operation for all non-missing values

mean(x, na.rm = TRUE)

# -------------------------------------------------------------------------

# To subset our data to obtain complete observations, those observations (rows)
# in our data that contain no missing data. We can do this a few different ways.

# -------------------------------------------------------------------------

# data frame with missing values
df <- data.frame (col1 = c (1:3, NA),
                  col2 = c ("this", NA,"is", "text"),
                  col3 = c (TRUE, FALSE, TRUE, TRUE),
                  col4 = c (2.5, 4.2, 3.2, NA),
                  stringsAsFactors = FALSE)
df

# -------------------------------------------------------------------------

# To find complete cases we can leverage the complete.cases () function
complete.cases(df)
# subset with complete.cases to get complete cases
df[complete.cases(df), ]
# or subset with `!` operator to get incomplete cases
df[!complete.cases(df), ]

# -------------------------------------------------------------------------

# A shorthand alternative is to simply use na.omit () to omit all rows containing
# missing values.

# -------------------------------------------------------------------------

na.omit(df)
