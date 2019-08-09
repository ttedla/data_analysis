
# -------------------------------------------------------------------------

          # Test Distribution of your data # 

# -------------------------------------------------------------------------

library(fitdistrplus)
library(logspline)

# -------------------------------------------------------------------------
                          # The data #
x <- c(37.50,46.79,48.30,46.04,43.40,39.25,38.49,49.51,40.38,36.98,40.00,
       38.49,37.74,47.92,44.53,44.91,44.91,40.00,41.51,47.92,36.98,43.40,
       42.26,41.89,38.87,43.02,39.25,40.38,42.64,36.98,44.15,44.91,43.40,
       49.81,38.87,40.00,52.45,53.13,47.92,52.45,44.91,29.54,27.13,35.60,
       45.34,43.37,54.15,42.77,42.88,44.26,27.14,39.31,24.80,16.62,30.30,
       36.39,28.60,28.53,35.84,31.10,34.55,52.65,48.81,43.42,52.49,38.00,
       38.65,34.54,37.70,38.11,43.05,29.95,32.48,24.63,35.33,41.34)

# -------------------------------------------------------------------------

          ############### let's describe the distribution # 
descdist(x , discrete = FALSE)

# The kurtosis and squared skewness of your sample is plottet as a 
# blue point named "Observation". It seems that possible distributions
# include the Weibull, Lognormal and possibly the Gamma distribution.

# -------------------------------------------------------------------------
          # Let's fit a Weibull distribution and a normal distribution: #

# -------------------------------------------------------------------------

fit.weibull <- fitdist(x, "weibull")
fit.norm <- fitdist(x, "norm")

# -------------------------------------------------------------------------

      # Now inspect the fit for the normal:#

# -------------------------------------------------------------------------

plot(fit.norm)


# -------------------------------------------------------------------------

plot(fit.weibull)

# -------------------------------------------------------------------------

# Both look good but judged by the QQ-Plot, the Weibull maybe 
# looks a bit better, especially at the tails. Correspondingly,
# the AIC of the Weibull fit is lower compared to the normal fit:

# -------------------------------------------------------------------------

fit.weibull$aic
fit.norm$aic

# -------------------------------------------------------------------------

                # Kolmogorov-Smirnov test simulation #
# I will use @Aksakal's procedure explained here
#[https://stats.stackexchange.com/questions/126539/testing-whether-data-follows-t-distribution/126552#126552]
#to simulate the KS-statistic under the null/

# -------------------------------------------------------------------------

n.sims <- 5e4

stats <- replicate(n.sims, {      
  r <- rweibull(n = length(x)
                , shape= fit.weibull$estimate["shape"]
                , scale = fit.weibull$estimate["scale"]
  )
  estfit.weibull <- fitdist(r, "weibull") # added to account for the estimated parameters
  as.numeric(ks.test(r
                     , "pweibull"
                     , shape= estfit.weibull$estimate["shape"]
                     , scale = estfit.weibull$estimate["scale"])$statistic
  )      
})

# -------------------------------------------------------------------------

# The ECDF of the simulated KS-statistics looks like follows:
plot(ecdf(stats), las = 1, main = "KS-test statistic simulation (CDF)", col = "darkorange", lwd = 1.7)
grid()

# -------------------------------------------------------------------------

# Finally, our p-value using the simulated null distribution of 
# the KS-statistics is:

# -------------------------------------------------------------------------

fit <- logspline(stats)

1 - plogspline(ks.test(x
                       , "pweibull"
                       , shape= fit.weibull$estimate["shape"]
                       , scale = fit.weibull$estimate["scale"])$statistic
               , fit
)

# This confirms our graphical conclusion that the sample is compatible
# with a Weibull distribution. #

# -------------------------------------------------------------------------

# As explained here, we can use bootstrapping to add pointwise confidence
# intervals to the estimated Weibull PDF or CDF:
# [https://stats.stackexchange.com/questions/60511/weibull-distribution-parameters-k-and-c-for-wind-speed-data/60530#60530]

# -------------------------------------------------------------------------

xs <- seq(10, 65, len=500)

true.weibull <- rweibull(1e6, shape= fit.weibull$estimate["shape"]
                         , scale = fit.weibull$estimate["scale"])

boot.pdf <- sapply(1:1000, function(i) {
  xi <- sample(x, size=length(x), replace=TRUE)
  MLE.est <- suppressWarnings(fitdist(xi, distr="weibull"))  
  dweibull(xs, shape=MLE.est$estimate["shape"],  scale = MLE.est$estimate["scale"])
}
)

boot.cdf <- sapply(1:1000, function(i) {
  xi <- sample(x, size=length(x), replace=TRUE)
  MLE.est <- suppressWarnings(fitdist(xi, distr="weibull"))  
  pweibull(xs, shape= MLE.est$estimate["shape"],  scale = MLE.est$estimate["scale"])
}
)   

#-----------------------------------------------------------------------------
# Plot PDF
#-----------------------------------------------------------------------------

par(bg="white", las=1, cex=1.2)
plot(xs, boot.pdf[, 1], type="l", col=rgb(.6, .6, .6, .1), ylim=range(boot.pdf),
     xlab="x", ylab="Probability density")
for(i in 2:ncol(boot.pdf)) lines(xs, boot.pdf[, i], col=rgb(.6, .6, .6, .1))

# Add pointwise confidence bands

quants <- apply(boot.pdf, 1, quantile, c(0.025, 0.5, 0.975))
min.point <- apply(boot.pdf, 1, min, na.rm=TRUE)
max.point <- apply(boot.pdf, 1, max, na.rm=TRUE)
lines(xs, quants[1, ], col="red", lwd=1.5, lty=2)
lines(xs, quants[3, ], col="red", lwd=1.5, lty=2)
lines(xs, quants[2, ], col="darkred", lwd=2)

# -------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Plot CDF
#-----------------------------------------------------------------------------

par(bg="white", las=1, cex=1.2)
plot(xs, boot.cdf[, 1], type="l", col=rgb(.6, .6, .6, .1), ylim=range(boot.cdf),
     xlab="x", ylab="F(x)")
for(i in 2:ncol(boot.cdf)) lines(xs, boot.cdf[, i], col=rgb(.6, .6, .6, .1))

# Add pointwise confidence bands

quants <- apply(boot.cdf, 1, quantile, c(0.025, 0.5, 0.975))
min.point <- apply(boot.cdf, 1, min, na.rm=TRUE)
max.point <- apply(boot.cdf, 1, max, na.rm=TRUE)
lines(xs, quants[1, ], col="red", lwd=1.5, lty=2)
lines(xs, quants[3, ], col="red", lwd=1.5, lty=2)
lines(xs, quants[2, ], col="darkred", lwd=2)
#lines(xs, min.point, col="purple")
#lines(xs, max.point, col="purple")


# -------------------------------------------------------------------------

d1 <- data.frame(y1 <- c(1, 2, 3), y2 <- c(4, 5, 6))
class(d1)
typeof(d1)

d1
d1 <- data.frame(y1 = c(1, 2, 3), y2 = c(4, 5, 6))
d2 <- data.frame(y1 = c(3, 2, 1), y2 = c(6, 5, 4))
my.list <- list(d1, d2)
my.list
typeof(my.list)

# -------------------------------------------------------------------------

library(abind)
myfiles2 <- abind(my.list, along = 3)

# -------------------------------------------------------------------------

my.list

# -------------------------------------------------------------------------

mean(1,2,3,3,2,1)
mean(4,5,6,6,5,4)

# -------------------------------------------------------------------------

library(dplyr)
x <- my.list %>%
  bind_rows() %>%
  summarise_all(mean, na.rm=T)

# -------------------------------------------------------------------------

# Using dplyr
df1 <- data.frame(a1 = c(1, 3, 9), y2 = c(4, 8, 6))
df2 <- data.frame(a2 = c(3, 5, 9), y2 = c(6, 7, 2))

# -------------------------------------------------------------------------

List of df1 and df2
my.list <- list(d1, d2)
bind_cols(my.list)
# -------------------------------------------------------------------------
mean(c(1,4,5))
set.seed(42)
list1 <- replicate(3, matrix(sample(1:12), 3, 4), simplify=FALSE)
list1
class(list1)
typeof(list1)
t <- t(apply(simplify2array(list1), 1:2, mean))
t
type(t)
typeof(t)
class(t)


# -------------------------------------------------------------------------
# List1 
# [[1]]
# [,1] [,2] [,3] [,4]
# [1,]   1    9    8    3
# [2,]   12    6    1    9
# [3,]    3    4   10    2
# 
# [[2]]
# [,1] [,2] [,3] [,4]
# [1,]   12    9   11    7
# [2,]    3    8    6    2
# [3,]    5    1    4   10
# 
# [[3]]
# [,1] [,2] [,3] [,4]
# [1,]    1    9    5    3
# [2,]    6   10    7   12
# [3,]    4   11    2    8
# 
set.seed(42)
list1 <- replicate(3, matrix(sample(1:12), 3, 4), simplify=FALSE)
list1
pss <-
  structure(list(LengthSize = c(48, 39, 94, 30, 81, 49, 44, 85, 
                                44, 55, 45, 47, 44, 43, 42, 44, 76, 42, 65, 43, 43, 90, 105, 
                                32, 31, 43, 36, 65, 21, 15, 113, 113, 44, 46, 94, 90, 95, 37, 
                                25, 72, 49, 46, 48, 49, 49, 44, 50, 48, 37, 37, 55, 60, 65, 30, 
                                22, 26, 43, 43, 43, 43, 18, 67, 110, 64, 28, 29, 38, 37, 38, 
                                37, 38, 70, 58, 65, 55, 60, 40, 22, 68, 88, 88, 32, 44, 86, 37, 
                                38, 67, 52, 48, 123, 50, 114, 37, 38, 39, 41, 60, 55, 50, 99, 
                                57, 44, 45, 45, 51, 44, 45, 37, 39, 43, 43, 50, 51, 34, 42, 44, 
                                46, 67, 67, 56, 56, 57, 56, 47, 65, 66, 43, 41, 69, 45, 114, 
                                60, 55, 37, 88, 85, 39, 39, 46, 50, 60, 44, 77, 61, 68, 46, 114, 
                                51, 105, 48, 95, 32, 40, 28, 42, 47, 46, 48, 50, 96, 45, 47, 
                                118, 55, 60, 34, 118, 39, 52, 119, 40, 55, 60, 55, 59, 102, 73, 
                                42, 78, 56, 74, 102, 88, 38, 36, 33, 34, 41, 120, 50, 46, 79, 
                                98, 65, 40, 45, 42, 50, 61, 44)), 
            row.names = c(NA, 200L), class = "data.frame")
pss
library(ggplot2)
ggplot(pss, mapping = aes(LengthSize)) + geom_histogram(binwidth = 3, bins=50, col = "black", fill = "grey") + ggtitle("My plot title") + xlab("My X axis label - length size") + ylab("Y axis label - Fequency count") + theme(plot.title = element_text(hjust = 0.5))

a <- c(1:7, 4,4,4)
a
library(dplyr)
library(naniar)
b <-  a %>% mutate(b = replace(a, which(a[]==4), NA))
b <- ifelse(a==4, NA, a)
b

Numeric <- c(1:7, 4,4,4)
Numericnomid <- ifelse(Numeric==4, NA, Numeric)
Numericnomid
