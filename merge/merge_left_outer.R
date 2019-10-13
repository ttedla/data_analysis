
# -------------------------------------------------------------------------


# -------------------------------------------------------------------------

# Full match

# -------------------------------------------------------------------------

# A full match returns values that have a counterpart in the 
#destination table. The values that are not match won't be return
#in the new data frame. The partial match, however, return the missing
#values as NA.

# -------------------------------------------------------------------------

# inner join 
# The inner join keyword selects records that have matching 
# values in both tables. To join two datasets, we can use merge() 
# function. We will use three arguments :

# -------------------------------------------------------------------------
# merge(x, y, by.x = x, by.y = y)
#Arguments:
#  -x: The origin data frame
# -y: The data frame to merge
# -by.x: The column used for merging in x data frame. Column x to merge on
# -by.y: The column used for merging in y data frame. Column y to merge on

# -------------------------------------------------------------------------

producers <- data.frame(   
  surname =  c("Spielberg","Scorsese","Hitchcock","Tarantino","Polanski"),    
  nationality = c("US","US","UK","US","Poland"),    
  stringsAsFactors=FALSE)
producers

# -------------------------------------------------------------------------

movies <- data.frame(    
  surname = c("Spielberg",
              "Scorsese",
              "Hitchcock",
              "Hitchcock",
              "Spielberg",
              "Tarantino",
              "Polanski"),    
  title = c("Super 8",
            "Taxi Driver",
            "Psycho",
            "North by Northwest",
            "Catch Me If You Can",
            "Reservoir Dogs","Chinatown"),                
  stringsAsFactors=FALSE)
movies

# -------------------------------------------------------------------------
movies
producers
merge(producers, movies, by.x = "surname", by.y = "surname")

# -------------------------------------------------------------------------

colnames(movies)[colnames(movies) == 'surname'] <- 'name'
movies
merge(producers, movies, by.x = "surname", by.y = "name")


# -------------------------------------------------------------------------

              # partial match

# -------------------------------------------------------------------------

    # # Create a new producer

add_producer <-  c('Lucas', 'US')
#  Append it to the ` producer` dataframe
producers <- rbind(producers, add_producer)
producers
movies
        # left outer
merge(producers, movies, by.x = "surname", by.y = "name", all.x = TRUE)

# -------------------------------------------------------------------------

          # right outer
merge(producers, movies, by.x = "surname", by.y = "name", all.y = TRUE)

# -------------------------------------------------------------------------

        # outer join
merge(producers, movies, by.x = "surname", by.y = "name", all = TRUE)

# -------------------------------------------------------------------------

        ################## cross join
merge(producers, movies, by=NULL)

# -------------------------------------------------------------------------


