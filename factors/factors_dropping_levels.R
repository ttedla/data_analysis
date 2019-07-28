
# -------------------------------------------------------------------------

            # Dropping Levels   # 

# -------------------------------------------------------------------------

        # When you want to drop unused factor levels , use droplevels () : 


# -------------------------------------------------------------------------

ses <- c ("low", "middle", "low", "low", "low", "low", "middle", "low", "middle",
          "middle", "middle", "middle", "middle", "high", "high", "low", "middle",
          "middle", "low", "high")
ses <- factor(ses, levels = c("low", "middle", "high"), ordered = TRUE)
ses1 <- plyr::revalue(ses, c("low" = "small", "middle" = "medium", "high"="large"))
ses1
ses

# -------------------------------------------------------------------------
summary(ses)
summary(ses1)

# -------------------------------------------------------------------------

          # Dropping Levels # 

# -------------------------------------------------------------------------

      # When you want to drop unused factor levels , use droplevels () :
ses2 <- ses[ses != "middle"]
ses2
summary(ses2)

# -------------------------------------------------------------------------

        # # you can drop that level if desired
droplevels(ses2)
summary(ses2)
