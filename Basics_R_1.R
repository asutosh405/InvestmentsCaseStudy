# Basics 
#-------------------------

#Reserve words

?reserved
help(reserved)
example(reserved)
vignettes()

#TRUE and FALSE are the logical constants in R.
var <- TRUE
var
var2 <- 'true'
var2

#NULL represents the absence of a value or an undefined value.

#R is a case sensitive language. Which mean that TRUE and True are not the same.

TRUE <- 1

 187686 -> true 

true

# <- , ->
#  =

#Variables in R
#----------------

#Rules for writing Identifiers in R
# 1) Identifiers can be a combination of letters, digits, period (.) and underscore (_).
# 2) It must start with a letter or a period. If it starts with a period, it cannot be 
#    followed by a digit.
# 3) Reserved words in R cannot be used as identifiers.

#Valid identifiers in R
#total, Sum, .fine.with.dot, this_is_acceptable, Number5


#Invalid identifiers in R
#tot@l, 5um, _fine, TRUE, .0ne

# a.variable.name is preferred over a_variable_name 
# or alternatively we could use camel case as aVariableName

#Constants
#-----------------
#Numaric : integer, double or complex
typeof(5)

typeof(5L)

typeof(5i)

### FLOAT --------- to check

#Char : Represented using either single quotes (') or double quotes (") as delimiters.
'example'

typeof('example')

typeof('5')

#Built-in Constants
LETTERS
letters
pi
month.abb
month.name

#Operators
#----------


#Arithmetic
#Operator	Description
#   +	    Addition
#   -	    Subtraction
#   *	    Multiplication
#   /	    Division
#   ^	    Exponent
#   %%	  Modulus (Remainder from division)
#   %/%	  Integer Division
  
11/3
11%/%3
11%%3


#implicit
2+3
10%%3
10%/%3  
  
#Explicit
`+`(2,3)
`^`(2,10)  
`%%`(10,3)  
  
#Assignment Operators
# Operator	      Description
#   <-, <<-, =	  Leftwards assignment
#   ->, ->>	      Rightwards assignment

x <<- 10
x
y <- 5
x+y

a = 10
b = 15
a+b

"Gurukul Analytics" -> institute.name
institute.name

is.weekdaybatch.started <- '122 TRUE123'
is.weekEndbatch.started = 'TRUE'

is.weekdaybatch.started
is.weekEndbatch.started


typeof(is.weekdaybatch.started)

typeof(is.weekEndbatch.started)

if(is.weekEndbatch.started){
  print("week day batch started")
}

x <- 11

-x
+x


#Logical Operators
# < , > , <= , >= , == , != 

x <- 10
y <- 10

x==y

x >= y

# Vectors 
# The variables used above were in fact single element vectors.
# c() (as in concatenate)
x <- c(1, 5, 4, 9, 0)
typeof(x)
length(x)

typeof(1000L)

y <- c(1000L, TRUE, FALSE)
typeof(y)

z <- c(1, 5.4, TRUE, "hello")
typeof(z)

x <- c(1,2,3,4,5,6,7,8,9,10)
x
x <- 1:10
x

y <- c(1,4,5, 11:15)
y

x <- 1:7;x

y <- 2:-2;y

# All operations are carried out in element-wise fashion
x <- c(2,8,3)
y <- c(6,4,1)

z <- x+y;z


x>y

# When there is a mismatch in length (number of elements) of operand vectors, the elements 
# in shorter one is recycled in a cyclic manner to match the length of the longer one.

#R will issue a warning if the length of the longer 
#vector is not an integral multiple of the shorter vector.

x <- c(1,2,3,4,5)
y <- c(9,10)

x+y
x-1 ## single 1 is recycled into a vector of three 1's. c(1,1,1,1,1)
x+c(1,2,3)

p <- c(1,2,3,4,6)
q <- c(9,10)

p+q

# Logical operations

a <- c(TRUE, FALSE, 0, -6)
b <- c(FALSE, TRUE, FALSE, TRUE)

!a
# Zero is considered FALSE and non-zero numbers are taken as TRUE

a&b

a&&b  #-- understand

a|b

a||y  # -- understand

# Assignment Operators

var1 <- 1
var1

var2 = 5
var2

100 -> var3
var3


## assignment operators - adv
# <<-    -- used for assigning variables to parent environments
# ->>

# take input from users
my.name <- readline(prompt='Enter Name: ')
my.name
my.age<- readline(prompt='Enter Age: ')
my.age

my.age <- as.integer(my.age)

typeof(my.name)

## paste()
## print()
print(paste("Hi,", my.name, "next year you will be ", my.age+1, "years old."))



## Precedence and Associativity of different operators in R from highest to lowest
#Operator Precedence in R
#Operator	         Description  	          Associativity
#   ^	              Exponent	              Right to Left
# -x, +x	      Unary minus,Unary plus	    Left to Right
#   %%	            Modulus	                Left to Right
#  *, /	        Multiplication, Division	  Left to Right
#+, -	          Addition, Subtraction	      Left to Right
#<, >, <=, 
# >=, ==, !=	    Comparisions	            Left to Right
#   !	            Logical NOT	              Left to Right
#  &, &&	        Logical AND	              Left to Right
#  |, ||	        Logical OR	              Left to Right
# ->, ->>	      Rightward assignment	      Left to Right
# <-, <<-	      Leftward assignment	        Right to Left
#   =	          Leftward assignment	        Right to Left


# sequence function
s <- seq(1,100)
s
odd_no <- seq(1,100, by=2)
odd_no
even_no <- seq(from = 2, to=200,by=2)
even_no

seq(100)
s <- seq(1,100,length.out = 10)
s
s2 <- seq(1,100,length.out = 10)
s2
seq(1, 9, by = pi)
seq.int(0,50,by=5)

## first days of years
seq(as.Date("1910/1/1"), as.Date("1999/1/1"), "years")
## by month
seq(as.Date("2000/1/1"), by = "month", length.out = 12)
## quarters
seq(as.Date("2000/1/1"), as.Date("2001/1/1"), by = "quarter")

st <- as.Date("1998-12-17")  ###---- check
typeof(st)
en <- as.Date("2000-1-7")
typeof(en)
ll <- seq(en, st, by = "-1 month")
ll

##### Flow Control #####
### For Loops ###
 #multiplication table from 1 to 10 for an input of number

num <- as.integer(readline(prompt="Enter a number: "))

# use for loop to iterate for 10 times
for (i in 1:10){
  print(paste(num, 'x', i, '=', num*i))
}

### If else ###
# if (test_expression) {
# statement
# }

x <- 5
if (x > 0) { print("positive number")}

#if (test_expression) {
#statement1
#} else {
#  statement2
#}

x <- -5
if (x>0){print("non-negative number") 
} else {print("Negative number")}

# nested if else
#if ( test_expression1) {
#  statement1
#} else if ( test_expression2) {
#  statement2
#} else if ( test_expression3) {
#  statement3
#} else
#  statement4

x <- 0
if (x < 0) {print("Negative Number")
} else if (x > 0) {print("Positive number")
    } else print("Zero")

# ifelse() function

#ifelse(test_expression,x,y)
a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")

# while loop
#while (test_expression)
#{
#  statement
#}

i <- 1
while (i < 6) {
  print(i)
  i = i+ 1
}

## Repeat loop and break statement
#repeat {
#statement
#}

x <- 1
repeat {
  print(x)
  x = x + 1
  if (x==6) {
    break
    
  }
}

x <- 1:5
for (val in x) {
  print(val)
  if (val == 3) {
    break
    
  }
  print(val)
}

### NEXT statement
# A next statement is useful when we want to skip the current iteration 
# of a loop without terminating it. On encountering next, the R parser 
# skips further evaluation and starts next iteration of the loop.

x <- 1:5
for (val in x) {
  print(val)
  if (val == 3) {
    next
    }
  print(val)
}

##### TASK TO DO #####

# make a program to create a calculator
# it sud take user input of numbers
# if sud take user inputs of operation it needs to do

#1. output odd numbers from 50-100
#2. print if a number is even or odd
#3. year as input, output : Leap year or not leap year
#4. number as input; factorial of the number