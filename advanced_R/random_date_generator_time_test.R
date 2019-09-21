library(lubridate)
random_dates <- replicate(1e6, paste0(sample(1:12,1), "/", sample(1:31,1), "/", sample(1900:2019,1)))

random_dates <- replicate(1000, paste0(sample(1:12,1), "/", sample(1:31,1), "/", sample(1900:2019,1)))
random_dates
time <- system.time({mdy(random_dates)})
time
time2 <- system.time({as.Date(random_dates, "%m/%d/%y")})
time2
