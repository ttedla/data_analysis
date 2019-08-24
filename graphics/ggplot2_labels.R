
# -------------------------------------------------------------------------

              # Labels # 

# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# geom_text() , which adds labels at the specified x and y positions.

# -------------------------------------------------------------------------

# family gives the name of a font. There are only three fonts that are 
# guaranteed to work everywhere: "sans" (the default), "serif", or "mono":

# -------------------------------------------------------------------------

df <- data.frame(x = 1, y = 3:1, family = c("sans", "serif", "mono"))

# -------------------------------------------------------------------------

df

# -------------------------------------------------------------------------

ggplot(df, aes(x,y)) + 
  geom_text(aes(label=family, family=family))

# -------------------------------------------------------------------------

# fontface specifies the face: "plain" (the default), "bold" or "italic".

# -------------------------------------------------------------------------

df <- data.frame(x = 1, y = 3:1, face = c("plain", "bold", "italic"))
head(df)

# -------------------------------------------------------------------------

ggplot(df, aes(x,y)) + 
  geom_text(aes(label=face, fontface=face))

# -------------------------------------------------------------------------

# You can adjust the alignment of the text with the hjust ("left", "center",
# "right", "inward", "outward") and vjust ("bottom", "middle", "top", "in-
# ward", "outward") aesthetics. The default alignment is centered. One of
# the most useful alignments is “inward”: it aligns text towards the middle
# of the plot:

# -------------------------------------------------------------------------

df <- data.frame(
  x = c(1, 1, 2, 2, 1.5),
  y = c(1, 2, 1, 2, 1.5),
  text = c(
    "bottom-left", "bottom-right",
    "top-left", "top-right", "center"
  )
)
head(df)

# -------------------------------------------------------------------------

ggplot(df, aes(x,y)) + 
  geom_text(aes(label=text))

# -------------------------------------------------------------------------

ggplot(df, aes(x,y)) + 
  geom_text(aes(label=text), vjust = "inward", hjust="inward")

# -------------------------------------------------------------------------

# size controls the font size.
# angle specifies the rotation of the text in degrees.

# -------------------------------------------------------------------------

# Often you want to label existing points on the plot. You don't want the
# text to overlap with the points (or bars etc), so it's useful to offset the text
# a little. The nudge_x and nudge_y parameters allow you to nudge the text a
# little horizontally or vertically:

# -------------------------------------------------------------------------

df <- data.frame(trt = c("a", "b", "c"), resp = c(1.2, 3.4, 2.5))

# -------------------------------------------------------------------------

head(df)

# -------------------------------------------------------------------------

ggplot(df, aes(resp, trt)) + 
  geom_point() + 
  geom_text(aes(label=paste0("(", resp, ")")), nudge_y = -0.25) + 
  xlim(1,3.6)

# -------------------------------------------------------------------------

# A variation on geom_text() is geom_label(): it draws a rounded rectangle
# behind the text. This makes it useful for adding labels to plots with busy
# backgrounds:

# -------------------------------------------------------------------------


label <- data.frame(
  waiting = c(55, 80),
  eruptions = c(2, 4.3),
  label = c("peak one", "peak two")
)
label

# -------------------------------------------------------------------------

head(faithfuld)

# -------------------------------------------------------------------------

ggplot(faithfuld, aes(waiting, eruptions)) + 
  geom_tile(aes(fill = density)) + 
  geom_label(data = label, aes(label=label))

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy, color=class)) + geom_point()

# -------------------------------------------------------------------------

ggplot(mpg, aes(displ, hwy, color=class)) + 
  geom_point(show.legend = FALSE) + 
  directlabels::geom_dl(aes(label=class), method="smart.grid")

# -------------------------------------------------------------------------


