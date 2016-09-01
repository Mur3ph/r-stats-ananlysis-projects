# Canadian Crime data
# Copyright 2016 by Paul Murphy

# Set working directory to where csv file is located
setwd("C:/dev/R/workspace/R-Tutorial-Canada-Crime/data")

# Read the data
crime_data <- read.csv("C:/dev/R/workspace/R-Tutorial-Canada-Crime/data/Hartnagel.csv")

# View data in seperate window
# View(crime_data)

# Show first lines of data
head(crime_data )
crime_data[1:10,]

#Position of data as a vector row 1 column 4
crime_data[1,4]

# Returns a set of rows where the conditional statement is true
x <- subset(crime_data, ftheft < mtheft)
# print(paste0("Year female theft was greater than male theft ", x))
# sprintf("Year female theft was greater than male theft ", x)
cat("Year female theft was greater than male theft", x)

# Getting statistical averages from data
mean(crime_data$fconvict)
mean(crime_data$mtheft, na.rm = TRUE) # Removes the NA from the column and then calculates the mean

median(crime_data$fconvict)
median(crime_data$mtheft, na.rm = TRUE) # Removes the NA from the column and then calculates the median

quantile(crime_data$fconvict)
quantile(crime_data$mtheft, na.rm = TRUE) # Removes the NA from the column and then calculates the quantile

var(crime_data$fconvict)
var(crime_data$mtheft, na.rm = TRUE) # Removes the NA from the column and then calculates the variance

sd(crime_data$fconvict)
sd(crime_data$mtheft, na.rm = TRUE) # Removes the NA from the column and then calculates the standard deviation

# Statistical summary or the entire data set or just one column
summary(crime_data)
summary(crime_data, na.rm = TRUE)

#Plotting data where 's' is a subset of the original dataset
s <- crime_data[1:100,]
plot(x = s$mconvict, y = s$fconvict, type='p')

#Histogram
hist(crime_data$fconvict)























