getwd
1/0
1/Inf

#Creating a vector with different class of values
y <- c(1.7, "a")
y
class(y)
 z<- c(TRUE,2)
z 
class(z)


#Explicit coercion to change a class of a particular vector
m <- 1:5
class(m)
m
 n <- as.character(m)
class(n)
class(n)
class(m)

#converting to numeric vector
yot <-as.numeric(m)
class(yot)


#Creating a matrix
m<- c(1,2,3,5,6,7)
n <- c(4,5,6)
mat1 <- matrix(m, nrow = 3, ncol = 2, byrow = T)
mat1


dim(m) <- c(2,3)

#dimensions of matrix mat1
dim(mat1)

m


#
attributes(mat1)

p <- 1:100
mat2 <- matrix(p, 50, 2, byrow= T)
mat2



#cerating two vectors and binding them using cbind and rbind functions

Names <- c("Suresh","ramesh", "vidya")
class(Names)

Gender <- c("Male", "Male","Female")
as.factor(Gender)

mat3 <- cbind(Names,Gender)

#third matrix summary
summary(mat3)
as.factor(mat3$Gender)



g <- factor(c("male", "female","male", "male", "female"), levels = c("male", "female"))
g
table(g)

#creating a vector to check for presence of missing values

sam <- c("a", "b", NA, "Y", NaN)
#sam does not show to have NaNs because NaN exists under the category of integer vectors
#lets create sam1

sam1 <- c(1,3,5, NA, NaN, 10,11)
is.na(sam1)
is.nan(sam1)


#creating a data frame using Names and gender just like before
as.factor(Gender)
dat1 <- data.frame(Names, Gender)
dat1
summary(dat1)


#creating a list
h <- list(1,3,5, "SHARAN", "INSHA", 0+4i)
names(h) <- c("A", "B", "C", "D", "E","F")
h$F


p
p[1:10]
h
h[[3]]


#LETS CREATE a vector and use this vector to subset a particular element using the name of that element

j <- c(3,5,7,9)
names(j) <- c("A","B","C","D")
j$C


#continued from 08.09

x <- list(foo=1:4, bar= 0.6)
x
x[[1]]
x[[2]]
x[1]
x[2]
x$foo
x$bar


p <- 1:25
p
mat3 <- matrix(p,5,5, byrow= T)
mat3
mat3[4,2]
mat3[3,1]

#instead of specific element an index can be missing as well
mat3[4,] #prints entire 4th row
mat3[,3] #prints entire third column
#drop=False

rownames(mat3) <- c("shree", "anand", "baba", "dnyaan", "suresh")
mat3

mat3[3,]
mat3[3, , drop=F]


#removing NA values

p
h <- c(1,4,5,6, NA,8,8,8,NA, NA,10)
badele <- is.na(h)
badele

f <- h[!badele]
f



#complete cases functiom

good <- complete.cases(h)
f <- h[good]
f


#removing NAs from a data frame

data("airquality")
head(airquality,20)
good <- complete.cases(airquality)

compdat <- airquality[good,]
head(compdat,20)

#thats how you can remove the NAs in a data frame and later use only 
#the good and producible data for data analyis and computation




