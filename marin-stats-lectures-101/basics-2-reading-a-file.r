#Importing data from CSV (Comma Seperated File) file and TXT file

# If you need a discription of how to use any function. 
## ?read.table
### help(read.table)

# .Choose makes a manu popup and navigate to CSV file
data1 <- read.csv(file.choose(), header=TRUE)
print(data1)

#Comma seperator read.TABLE
data2 <- read.table(file.choose(), header=T, sep=",")
print(data2)

#Reading from the .TXT file with data seperated by TAB
data3 <- read.delim(file.choose(), header=T)
print(data3)

##Reading from the .TXT file with data seperated by TAB (i.e \t = Tab seperated)
data4 <- read.table(file.choose(), header=T, sep="\t")
print(data4)

# Reading and working wiht the data
data5 <- read.table(file="C:/dev/R/workspace/marin-stats-lectures-101/data/Lung/LungCapData.txt", header=TRUE, sep="\t")
data5 <- read.table(file-"data/Lung/LungCapData.txt", header=TRUE, sep="\t")
print(data5)

LungCapData <- read.delim("C:/dev/R/workspace/marin-stats-lectures-101/data/Lung/LungCapData.txt")
View(LungCapData)

dim(LungCapData)                   # Shows rows and columns
head(LungCapData)                  # First 6 rows
tail(LungCapData)                  # Last 6 rows
LungCapData[c(5, 6, 7, 11, 44), ]  # Show rows 5, 6, 7, 11, 44 and leave last one blank to specify all columns
LungCapData[63:67, ]               # Show rows 63 to 67 and leave last one blank to specify all columns
LungCapData[-(5:723), ]            # All rows accept between specified - Minus sign used to say not these rows
names(LungCapData)                 # Get the names of the columns