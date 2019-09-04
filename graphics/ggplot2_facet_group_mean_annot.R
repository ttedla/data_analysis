
# -------------------------------------------------------------------------

        # Grouping vs. Facetting # 

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# With facetting, each group is
# quite far apart in its own panel, and there is no overlap between the groups.
# This is good if the groups overlap a lot, but it does make small differences
# harder to see. When using aesthetics to differentiate groups, the groups are
# close together and may overlap, but small differences are easier to see.

# -------------------------------------------------------------------------

df <-data.frame(
    x = rnorm(120, c(0, 2, 4)),
    y = rnorm(120, c(1, 2, 1)),
    z = letters[1:3]
  )
head(df, 5)

# -------------------------------------------------------------------------

ggplot(df, aes(x, y)) +
  geom_point(aes(colour = z))

# -------------------------------------------------------------------------

ggplot(df, aes(x, y)) +
  geom_point() +
  facet_wrap( ~z)

# -------------------------------------------------------------------------

# Comparisons between facets often benefit from some thoughtful annotation. Forexample, in this case we could show the mean of each group in every
# panel.

# -------------------------------------------------------------------------
library(dplyr)
df_sum <- df %>%
  group_by(z) %>%
  summarise(x = mean(x), y = mean(y)) %>%
  rename(z2 = z)

# -------------------------------------------------------------------------

head(df_sum)

# -------------------------------------------------------------------------

ggplot(df, aes(x, y)) +
  geom_point() +
  geom_point(data = df_sum, aes(colour = z2), size = 4) +
  facet_wrap(~z)

# -------------------------------------------------------------------------

# Another useful technique is to put all the data in the background of each
# panel:

# -------------------------------------------------------------------------

df2 <- dplyr::select(df, -z)

# -------------------------------------------------------------------------

ggplot(df, aes(x, y)) +
  geom_point(data = df2, colour = "grey70") +
  geom_point(aes(colour = z)) +
  facet_wrap( ~z)

# -------------------------------------------------------------------------


