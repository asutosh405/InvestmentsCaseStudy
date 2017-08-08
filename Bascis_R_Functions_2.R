# Functions
# Functions are used to logically break our code into simpler parts 
# which become easy to maintain and understand.

#func_name <- function (argument) {
#statement
#}

#reserved word function is used to declare a function in R

pow <- function(x, y) {
  # function to print x raised to the power y
  
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

pow(2,8)
pow(3,10)

pow(x=2,y=8)
pow(y=10,x=3)
pow(2,x=8)

#Default Values

pow <- function(x, y = 2) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

pow(3)

paste() ## built in function

#function declaration (x and y) are called formal arguments 
#those used while calling the function are called actual arguments

# Return Values

area.of.circle <- function(radius){
   area <- pi * radius * radius
   return(area)
}

area.of.circle(radius = 10)

measurement.of.circle <- function(radius){
  a <- pi * radius * radius
  c <- 2 * pi * radius  
  measurement <- c(area = a, circumference = c ) 
  return(measurement)
}

measurement.of.circle(radius = 5)
measurement.of.circle(10)['area']


# giving default values to the function
pow <- function(x, y = 2) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

#sometimes, we will require our functions to do some processing and return back the result. 
#This is accomplished with the return() function in R.

# return(expression)

# value returned from a function can be any valid object
 #### 1. vector
 #### 2. list
 #### 3. matrix

## return whether a given number is positive, negative or zero

check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  return(result)
}

check(1)


##Functions without return()
##If there are no explicit returns from a function, 
##the value of the last evaluated expression is returned automatically in R.

#the following is equivalent to the above function.

check1 <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  result
}

check1(10)

# use explicit return() functions to return a value immediately from a function
#If it is not the last statement of the function, it will prematurely end the function 
#bringing the control to the place from which it was called.

check <- function(x) {
  if (x>0) {
    return("Positive")
  }
  else if (x<0) {
    return("Negative")
  }
  else {
    return("Zero")
  }
}



# Nested Functions


outer_func <- function(){
  b <- 20
  inner_func <- function(){
    c <- 30
  }
}

outer_func()
a <- 10

outer_func <- function(){
  a <- 20
  inner_func <- function(){
    a <- 30
    print(a)
  }
  inner_func()
  print(a)
}
outer_func()

a <- 2
b <- 3
ls()
environment()
.GlobalEnv


f <- function(f_x){
  g <- function(g_x){
    print("Inside g")
    print(environment())
    print(ls())
  }
  g(5)
  print("Inside f")
  print(environment())
  print(ls())
}


f(6)


outer_func <- function(){
  inner_func <- function(){
    a <<- 30
    print(a)
  }
  inner_func()
  print(a)
}

outer_func()

factorial <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(n * factorial(n-1))
  }
}

factorial(4)

#The Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21


# Program to diplay the Fibonacci
# sequence up to n-th term using
# recursive functions

recurse_fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
  }
}

# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))

# check if the number of terms is valid
if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  print("Fibonacci sequence:")
  for(i in 0:(nterms-1)) {
    print(recurse_fibonacci(i))
  }
}


# Switch Function


switch(2,"red","green","blue")

switch(0,"red","green","blue")



switch("color", "color" = "red", "shape" = "square", "length" = 5)


area.of.circle <- function(radius){
  area <- pi * radius * radius
  return(area)
}

area.of.square <- function(side){
  print("square")
  area <- side * side
  return(area)
}

area.of.triangle <- function(base,height){
  area <- base * height * 0.5
  return(area)
}

params <- c("triangle",10,5)
params <- list("square",10L)

params[[2]]

area <- switch(params[[1]], "circle" = area.of.circle(params[[2]]), "square" = area.of.square(params[[2]]), "triangle" = area.of.circle(params[[2]],params[[3]]))
area

params <- list("circle",5L)

