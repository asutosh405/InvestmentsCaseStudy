##### DATA-STRUCTURES #####

### VECTOR ###

# Vector is a basic data structure in R. It contains element of the same type. 
# the data types can be logical, integer, double, character, complex or raw.

# number of elements can be checked by length()

# vector must have elements of same type
# otherwise the elements will be coerced to same type

# coersion is from lower to higher types

x <- c(1,3,5,9,100)
typeof(x)
length(x)

y <- c(1,TRUE, 5.4, 'Hello')
typeof(y)
length(y)

### how to access elements in the vector
# elements used in the vector can be accessed using vector indexing
# the vector used for indexing can be logical, integer or character vector

# vector in R starts from index =  1

x <- c(0,2,4,6,8,10)
x
x[3] # access 3rd element

x[c(2,4)] # access 2nd and 4th element

x[-1] # access all but 1st element

x[c(2, -4)] # cant mix positive and negative integers

x[c(0, -4)]

x[c(2.45, 3.7)] # decimal numbers will b truncated

## using logical vector as index

# the position where logical vector is TRUE is returned
x <- c(1,2,3,4, 5, 6)
x[c(TRUE, FALSE, FALSE, TRUE )]

x<4
x[x<4]

x[x>2]

## using character vectors as index
# this type of indexing helps when the vector is named

x <- c("first" = 3, "second" = 0, "third"=9)
x
names(x)

x["second"]

x[c("first", "third")]

x[c(-"first")] ## error

## how to modify a vector
# modify using assignment operator
# if u want to truncate, use reassignments

x <- c(-3, -2, -1, 0, 1,2)

x[2] <- 100 # modify 2nd element
x

x[x< 0] <- 5 # modify elemts less than 0
x


x <- x[1:4] # truncate the vector to 1st four elemts
x

### how to delete a vector

x
x <- NULL
x

x[4]


### SORT a vector

x <- c(7, 1, 8, 3, 2, 6, 5, 2, 2, 4)

sort(x)

sort(x, decreasing = TRUE)

x # vector remains still unaffected

x<- sort(x)
x

## FACTORS ##
#Converting this into factors
#Factor is a data structure used for fields that takes only predefined, finite number of values (categorical data).
heights <- c("medium", "short", "short", "tall", "medium", "medium")
factor_heights <- factor(heights)
factor_heights
class(factor_heights)
levels(factor_heights)
factor_heights[1] <- "Ultra-short"     #This will not work
factor_heights
summary(factor_heights)

str(factor_heights)
# factors are stored as integer vectors.

# introduce a new level
levels(factor_heights) <- c(levels(factor_heights), "Too Tall")

levels(factor_heights)


# say we create a numeric vector to store values of a die roll:
dice <- c(1, 2, 4, 5, 5, 3, 2, 6, 3, 5, 6, 2, 1, 4, 3, 6, 5, 3, 2, 2, 5) 
#We can convert the vector into 6 factor levels. 
dice_levels  <-  factor(dice)
dice_levels

summary(dice_levels)


# OMR responses of Objective examination
logical_levels <- factor(c(TRUE,FALSE, TRUE, FALSE,TRUE,TRUE,FALSE,TRUE,TRUE,TRUE))
logical_levels
summary(logical_levels)



### LISTS ###
 ### List is a datastructure component of mixed data types

### create a list with list() function

x <- list("a" = 2.5, "b" = TRUE, "c" = 1:3)

x

x$a

x$b

x$c

# 3 components of datatypes: double, logical and integer vector respectively

## structure can be determined by str() function

str(x)

## a,b,c were the tags to reference the components of the list

# lists can also be created without tags; default tags will be numeric

y <- list(2.5, TRUE, 1:3)

str(y)

## access the values of the list like vectors
x[c(1,2)]

x[-2]

x[c(T,F,F)] # index using logical vectors

x[c("a", "c")]

## Indexing with [ as shown above will give us sublist not the content inside the component.
## To retrieve the content, we need to use [[.

## this approach will allow us to access only a single component at a time.

x["a"]

typeof(x["a"])

x[["a"]]

typeof(x[["a"]])

new_list <- list(name='John', age=19, speaks=c('English', 'French'))
typeof(new_list)

new_list$name
new_list$speaks
##or
new_list["name"]

new_list$na # can do partial matching

new_list["n"] # cannot do partial matching

## indexing can be done recursively
new_list[["speaks"]][2]
#or
new_list$speaks[2]

### modify a list
## change the components of a list through re-assignment

new_list[["name"]] <- "asutosh"; new_list

## add components to a list

new_list[["married"]] <- FALSE
new_list
str(new_list)
## delete components from a list
# delete components by assigning NULL to it

new_list1 <- new_list
new_list[["age"]] <- NULL
str(new_list)

new_list[["married"]] <- NULL
str(new_list)

new_list["name"] <- NULL
str(new_list)

new_list$name
new_list$married


new_list2 <- list(name='John', age=19, speaks=c('English', 'French'), native='USA')

new_list2$nat

new_list <- NULL

new_list

####################
# NA and NaN
######################

### MATRICES ###
## 2-D datastructure
# matrix is similar to vectors but additionally contains the dimension attribute
# all the object can be accessed with the attributes() function
# dimension can be checked directly with dim() function
# class() function can tell if a variable is a matrix or not

# created using matrix() function
# dimension is created by passing value to arguments: nrow and ncol

# both dimension providing value not necessary

matrix(1:9, nrow=3, ncol=3)

matrix(1:9, nrow=3)

# Default - matrix is filled col wise

# fill row wise

matrix(1:9, nrow=3, byrow=TRUE)

matrix(1:9, ncol=2, byrow=TRUE)

# name the rows and columns of matrix during creation by passing a 2 element LIST 
# argument dimnames.

x <- matrix(1:9, nrow = 3, dimnames = list(c("X","Y","Z"), c("A","B","C")))
x

## names can be accessed or changed with two helpful functions colnames() and rownames()

colnames(x)

rownames(x)

## change the names of the col and row

colnames(x) <- c("C1", "C2", "C3")
rownames(x) <- c("R1", "R2", "R3")

x

## another way of creating matrices

cbind(c(1,2,3), c(4,5,6))
rbind(c(7,8,9), c(6,8,9))

## create a matrix from vector

x <- 1:6
x
class(x)

dim(x) <- c(2,3)

x

class(x)


# access elements of a matrix

## We can access elements of a matrix using the square bracket [ indexing method. 
## Elements can be accessed as var[row, column]


## row numbers and column numbers as vectors and use it for indexing
## any field inside the bracket is left blank, it selects all
## negative integers to specify rows or columns to be excluded

x <- 1:9
dim(x) <- c(3,3)
x

x[c(1,2), c(2,3)] #select rows 1 & 2 and columns 2 & 3

x[c(3,2),]  #leaving column field blank will select entire columns

x[,]  #leaving row as well as column field blank will select entire matrix

x[-1,] #select all rows except first

x[1,] #matrix returned after indexing is a row matrix or column matrix, 
#the result is given as a vector

class(x[1,])

# avoid this change in behaviour
x[1,,drop=FALSE] # result now is a 1X3 matrix, rather than a vector


# possible to index a matrix with a single vector
# While indexing in such a way, it acts like a vector formed by 
# stacking columns of the matrix one after another. The result is returned as a vector

x

x[1:4]

x[c(3,5,7)]

# logical vector as index

x

x[c(TRUE,FALSE,TRUE), c(TRUE,TRUE,FALSE)]
x
x[c(T,F,T), c(T,T,F)]

x[c(T,F), c(2,3)] # the 2 element logical vector is recycled to 3 element vector

# also possible to index using a single logical vector where recycling takes place if necessary

x[x>5] # elements greater than 5


x[x%%2==0] # even elements


# character as index

x

colnames(x) <- c("A", "B", "C")

x

x[,"A"]

x[TRUE, c("A", "C")]

x[2:3, c("A", "C")]

# modify a matrix 

x <- 1:9
dim(x) <- c(3,3)
x

x[2,2] <- 10;x

x[x<5] <- 0;x

# transpose of a mtrix
x <- 1:9;dim(x) <- c(3,3);x

t(x)

# add row or column using rbind() and cbind() function respectively. 
# Similarly, it can be removed through reassignment

cbind(x, c(1,2,3)) # add col

rbind(x, c(1,2,3)) # add row

x <- x[1:2,];x # remove last row
x

# dimension of a matrix can be changed
x
dim(x) <- c(3,2);x # change to 3X2 matrix

dim(x) <- c(1,6);x # change to 1X6 matrix

# matrix addition/subtraction
# matrix multiplication/division
# inverse of matrix
# determinant
x <- 1:9;dim(x) <- c(3,3);x
1*(5*9-6*8) - 4(2*9-3*8) + 7(2*6-3*5)



















