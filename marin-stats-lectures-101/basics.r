#Youtube videos with MarinStatsLectures

# The code below is Creating two vectors and using the plot function
x <- 1:5
y <- 6:10
plot(x, y)

#ls()
#rm(x)

# The code below is for basic math functions
z <- x+y
a <- x^2            #Squared
b <- sqrt(y)        #Square root
c <- x^2 + y^2      
d <- x^(1/2)        #Take y and raise it to the power of a half
e <- log(y)         #logorithm
f <- log2(y)        # log base 2
g <- exp(y)         #Exponental
h <- abs(-14)       #Absolute value

# The code below is for Vectors and Matrices

# The code below is Vector using c or concatenate
x1 <- c(1,3, 5, 7, 9)
gender <- c("female", "male")
x2 <- 2:7
print(x2)

# The code below is a 'Sequence' of data 
x3 <- seq(from=1, to=7, by=1)         #from one to seven in increments of one
print(x3)
x4 <- seq(from=1, to=7, by=1/3)       #from one to seven in increments of one third
print(x4)
x5 <- seq(from=1, to=7, by=0.25)      #from one to seven in increments of zero point two five
print(x5)

# The code below is creating a 'Vector' of 'Repeated' numbers
x6 <- rep(1, times=10)                          # Repeat the number one, ten times
print(x6)
x7 <- rep("Bob", times=5)                       # Repeat the word Bob, five times
print(x7)
x8 <- rep(1:3, times=5)                         # Repeat the sequence of numbers from 1-3, five times
print(x8)
x9 <- rep(seq(from=2, to=7, by=1.2), times=3)   # Repeat the sequence of numbers from 2-7 in increments of 1.2, three times
print(x9)
x10 <- rep(c("female", "male"), times=3)
print(x10)

# The code below is adding, subtracting, multiplying and dividing numbers from entire Vectors
x11 <- 1:5
y11 <- c(1, 3, 5, 7, 9)

x11 + 10
x11 - 10
x11 * 10
x11 / 10

# If two vectors are of the same length we can add, subtract, multiply and divid corresponding elements
x11 + y11
x11 - y11
x11 * y11
x11 / y11

#Extracting elements from a Vector

# Retrieves the third element
y11[3]
#Retrieves all but third element
y11[-3]
#Retrieves elements from position 1 to 3
y11[1:3]
#Retrieves elements in position 1 and 5
y11[c(1,5)]
#Retrieves elements except position 1 and 5
y11[-c(1,5)]
#Retrieves elements only where y is less than 6
y11[y11 < 6]

#Matrices
my_matrix <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=TRUE) #byrow true sets elements by row and false by column
print(my_matrix)
my_matrix[1, 2]        # Row 1, Column 2
my_matrix[c(1,3), 2]   # Row 1 and 3, Column 2
my_matrix[2,]          # Row 2, all Columns
my_matrix[,1]          # All rows, Column 1
my_matrix * 10


