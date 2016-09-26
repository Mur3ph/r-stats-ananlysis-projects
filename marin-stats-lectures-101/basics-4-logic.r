#Youtube videos with MarinStatsLectures - NEXT IS LECTURE 10

LungCapData <- read.delim("C:/dev/R/workspace/marin-stats-lectures-101/data/Lung/LungCapData.txt")

attach(LungCapData)                # First we have to 'attach' the data which stores it in R's memory
Age                                # Now I can call the variables/column names without the dollar sign

head(LungCapData)

isAgeGreaterThan15_One <- Age>15                  # Store True in 'isAgeGreaterThan15' if Age is over 15 otherwise False
Age[1:5]
isAgeGreaterThan15_One[1:5]

isAgeGreaterThan15_Two <- as.numeric(Age>15)      # Store '1' in 'isAgeGreaterThan15' if Age is over 15 otherwise '0'
Age[1:5]
isAgeGreaterThan15_Two[1:5]

LungCapData[1:5, ]

isFemaleSmoke_One <- Gender == "female" & Smoke == "yes"
isFemaleSmoke_Two <- as.numeric(Gender == "female" & Smoke == "yes")
isFemaleSmoke_One[1:5]
isFemaleSmoke_Two[1:5]

# Adding another column to the dataset. Column Bind = cbind
MoreData <- cbind(LungCapData, isFemaleSmoke_One)
MoreData[1:5, ]

# Remove all stored objects in R Studio cache. Remove from workspace
rm(list=ls())
