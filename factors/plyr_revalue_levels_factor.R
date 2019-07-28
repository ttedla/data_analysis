
# -------------------------------------------------------------------------

            # Revalue Levels # 

# -------------------------------------------------------------------------

# To recode factor levels I usually use the revalue () function from the plyr
# package.

ses <- c ("low", "middle", "low", "low", "low", "low", "middle", "low", "middle",
          "middle", "middle", "middle", "middle", "high", "high", "low", "middle",
          "middle", "low", "high")
ses
ses <- factor(ses, levels = c("low", "middle", "high"), ordered = TRUE)
ses

# -------------------------------------------------------------------------

      # Revalue Levels to 
      # low = small
      # middle = medium
      # high = large

# -------------------------------------------------------------------------

plyr:: revalue (ses, c ("low" = "small", "middle" = "medium", "high" = "large"))

# -------------------------------------------------------------------------


