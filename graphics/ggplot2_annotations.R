
# -------------------------------------------------------------------------

library(ggplot2)

# -------------------------------------------------------------------------

# Annotations add metadata to your plot. But metadata is just data, so you
# can use:
#   • geom_text() to add text descriptions or to label points Most plots will
# not benefit from adding text to every single observation on the plot, but
# labelling outliers and other important points is very useful.
#   • geom_rect() to highlight interesting rectangular regions of the plot.
# geom_rect() has aesthetics xmin , xmax , ymin and ymax .
#   • geom_line(), geom_path() and geom segment() to add lines. All these geoms
# have an arrow parameter, which allows you to place an arrowhead on the
# line. Create arrowheads with arrow() , which has arguments angle , length ,
# ends and type .
#   • geom_vline() , geom_hline() and geom_abline() allow you to add reference
# lines (sometimes called rules), that span the full range of the plot.
# -------------------------------------------------------------------------

# To show off the basic idea, we’ll draw a time series of unemployment:

# -------------------------------------------------------------------------

ggplot(economics, aes(date, unemploy)) + 
  geom_line()

# -------------------------------------------------------------------------

presidential <- subset(presidential, start > economics$date[1])
head(presidential)

# -------------------------------------------------------------------------

ggplot(economics) +
  geom_rect(
    aes(xmin = start, xmax = end, fill = party),
    ymin = -Inf, ymax = Inf, alpha = 0.2,
    data = presidential
  ) +
  geom_vline(
    aes(xintercept = as.numeric(start)),
    data = presidential,
    colour = "grey50", alpha = 0.5
  ) +
    geom_text(
    aes(x = start, y = 2500, label = name),data = presidential,
    size = 3, vjust = 0, hjust = 0, nudge_x = 50
  ) +
  geom_line(aes(date, unemploy)) +
  scale_fill_manual(values = c("blue", "red"))

# -------------------------------------------------------------------------
# To add a single annotation #

# -------------------------------------------------------------------------

yrng <- range(economics$unemploy)
xrng <- range(economics$date)

caption <- paste(strwrap("Unemployement rates in the US have varied 
                         a lot over the years", 40), collapse="\n")
ggplot(economics, aes(date, unemploy)) + 
  geom_line()+
  geom_text(
    aes(x, y, label=caption), 
    data = data.frame(x=xrng[1], y=yrng[2], caption= caption), 
    hjust=0, vjust=1, size=4
  )
# or 
ggplot(economics, aes(date, unemploy)) + 
  geom_line() + 
  annotate("text", x = xrng[1], y=yrng[2], label= caption, 
           hjust=0, vjust=1, size=4)

# -------------------------------------------------------------------------

# Annotations, particularly reference lines, are also useful when comparing
# groups across facets. In the following plot, it’s much easier to see the subtle
# differences if we add a reference line.

# -------------------------------------------------------------------------

ggplot(diamonds, aes(log10(carat), log10(price))) + 
  geom_bin2d() + 
  facet_wrap(~cut, nrow = 1)

# -------------------------------------------------------------------------

mod_coef <- coef(lm(log10(price) ~ log10(carat), data = diamonds))

ggplot(diamonds, aes(log10(carat), log10(price))) + 
  geom_bin2d() + 
  geom_abline(intercept = mod_coef[1], slope = mod_coef[2], color="white", 
              size=1) + 
  facet_wrap(~cut, nrow = 1)
