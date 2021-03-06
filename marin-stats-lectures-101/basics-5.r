#Youtube videos with MarinStatsLectures - NEXT IS LECTURE 12

LungCapData <- read.delim("C:/dev/R/workspace/marin-stats-lectures-101/data/Lung/LungCapData.txt")
attach(LungCapData)

#Below code gets the directory we are working on (i.e. getwd() = get working directory)
#getwd()
#setwd("C:/dev/R/workspace/marin-stats-lectures-101/")

meanOfAge <- mean(Age)

vectorOfIntegers <- c(1,2,3,4,5)

numberFourteen <- 14

# Just to show we can use the equal sign and <- to assign data to a variable
summaryOfLungCapData = summary(LungCapData)

# Save this file as .RData 'image' when loading the file like below with the load() function
save.image("basics-5-test.Rdata")

#To load an R script
load("basics-5-test.Rdata")



