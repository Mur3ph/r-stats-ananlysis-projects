require(rnoaa)
require(lubridate)
require(dp1yr)

# The code below is to get data from two weather stations

# The code below is St. Petersburg, FL station
res1 <- isd(usaf="997353", wban="99999", year=2016)

# The code below is Columbia Metropolitan airport
res2 <- isd(usaf="723100", wban="13883", year=2016)

# The code below is to combine the data of the two cities
res_all <- rbind(res1, res2)

# The code below is to combine date and time into a new column
# *Having the date and time together is advantegous
res_all$date_time <- ymd_hm(
  sprintf("%s %s", as.character(res_all$date), res_all$time)
)

# The code below is to remove 999, which is for data point not available
res_all <- res_all %>% filter(temperature < 900)

# The code below is subset to date range (15 days more or less)
date1 <- as.Date("2016-07-01")
date2 <- as.Date("2016-07-15")
res_all <- res_all[res_all$date >= date1 & res_all$date <= date2,]



