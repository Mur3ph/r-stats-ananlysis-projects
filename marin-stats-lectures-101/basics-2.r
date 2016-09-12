#Youtube videos with MarinStatsLectures - NEXT IS LECTURE 5

#Importing data from CSV (Comma Seperated File) file and TXT file

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