#Youtube videos with MarinStatsLectures - NEXT IS LECTURE 8

LungCapData <- read.delim("C:/dev/R/workspace/marin-stats-lectures-101/data/Lung/LungCapData.txt")
View(LungCapData)

names(LungCapData)                 # Get the names of the columns

mean(LungCapData$Age)              # We go nito the object 'LungCapData' and then extract the variable 'Age' from the object 'LungCapData'
LungCapData$Age                    # Every time we want to use the data in a column we use the object, dollar sign and then variable/column name

#Another way to extract the data from an object data set - You don't have to use the dollar sign

attach(LungCapData)                # First we have to 'attach' the data which stores it in R's memory
Age                                # Now I can call the variables/column names without the dollar sign
detach(LungCapData)                # Error: No longer reckonised. Removes the data from R's memory
Age                                # Now it won't reckonise the variable 'Age' in it's memory

names(LungCapData)
class(LungCap)                     # Class function tells use what type of data is in our variables / column names
class(Age)
class(Height)
class(Smoke)
class(Gender)
class(Caesarean)

# Smoke, Gender and Caesarean are 'factor' class. To see what factors they are storing we use the function 'levels'
levels(Smoke)
levels(Gender)
levels(Caesarean)

# Summarises the entire data
summary(LungCapData)

# Test
x <- c(0,1,1,1,0,0,0,0,0,0)
class(x)
summary(x)
x <- as.factor(x)
class(x)
summary(x)



















