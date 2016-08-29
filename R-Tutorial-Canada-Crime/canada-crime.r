# Canadian Crime data
# Copyright 2016 by Paul Murphy

# Set working directory to where csv file is located
setwd("C:/dev/R/workspace/R-Tutorial-Canada-Crime/data")

# Read the data
mydata<- read.csv("C:/dev/R/workspace/R-Tutorial-Canada-Crime/data/Hartnagel.csv")

# View data in seperate window
#View(mydata)

# Show first lines of data
head(mydata)
mydata[1:10,]

#Position of data as a vector row 1 column 4
mydata[1,4]


x <- subset(year, ftheft < mtheft)
# print(paste0("Year female theft was greater than male theft ", x))
sprintf("Year female theft was greater than male theft ", x)
# cat("Year female theft was greater than male theft", x)



