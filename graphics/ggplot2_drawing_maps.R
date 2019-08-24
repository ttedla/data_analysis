
# -------------------------------------------------------------------------

              # Drawing Maps #

# -------------------------------------------------------------------------

          # Vector Boundaries #

# -------------------------------------------------------------------------

# Vector boundaries are defined by a data frame with one row for each "corner" of 
# a geographical region like a country, state, or county. It requires four variables:
#   • lat and long , giving the location of a point.
#   • group , a unique identifier for each contiguous region.
#   • id , the name of the region.

# -------------------------------------------------------------------------

library(ggplot2)
library(dplyr)
# -------------------------------------------------------------------------

mi_counties <- map_data("county", "michigan") %>%
  select(lon = long, lat, group, id = subregion)

# -------------------------------------------------------------------------

head(mi_counties)

# -------------------------------------------------------------------------

ggplot(mi_counties, aes(lon, lat)) +
  geom_polygon(aes(group = group)) +
  coord_quickmap()

# -------------------------------------------------------------------------

ggplot(mi_counties, aes(lon, lat)) +
  geom_polygon(aes(group = group), fill = NA, colour = "grey50") +
  coord_quickmap()

# -------------------------------------------------------------------------

library(USAboundaries)
# generate a spatial data 
c18 <- us_boundaries(as.Date("1820-01-01"))
# convert it to dataframe
c18df <- fortify(c18)

# -------------------------------------------------------------------------

head(c18df, 2)

# -------------------------------------------------------------------------
# unweighted
ggplot(midwest, aes(percwhite, percbelowpoverty)) +
  geom_point()

# -------------------------------------------------------------------------

# Weight by population
ggplot(midwest, aes(percwhite, percbelowpoverty)) +
  geom_point(aes(size = poptotal / 1e6)) +
  scale_size_area("Population\n(millions)", breaks = c(0.5, 1, 2, 4))

# -------------------------------------------------------------------------

# Unweighted
ggplot(midwest, aes(percwhite, percbelowpoverty)) +
  geom_point() +
  geom_smooth(method = lm, size = 1)

# -------------------------------------------------------------------------

# Weighted by population
ggplot(midwest, aes(percwhite, percbelowpoverty)) +
  geom_point(aes(size = poptotal / 1e6)) +
  geom_smooth(aes(weight = poptotal), method = lm, size = 1) +
  scale_size_area(guide = "none")

# -------------------------------------------------------------------------

# weighted vs un-weighted histogram
ggplot(midwest, aes(percbelowpoverty)) +
  geom_histogram(binwidth = 1) +
  ylab("Counties")

# -------------------------------------------------------------------------

ggplot(midwest, aes(percbelowpoverty)) +
  geom_histogram(aes(weight = poptotal), binwidth = 1) +
  ylab("Population (1000s)")

# -------------------------------------------------------------------------


