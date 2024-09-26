##################################################################
### Code for Topic 1: Intro to R, RStudio and the tidyverse ###
##################################################################

# Using R

2 + 2
runif(10)

# Vectors

x <- c(1, 3, 6)
y <- c("dog", "cat", "duck")
z <- c(TRUE, FALSE)
mode(y)
mode(z)
w <- c("dog", 4)
w
mode(w)
v <- c(TRUE, 9)
v
mode(v)

# Data Frames

str(iris)

# Equal or not equal?

z <- 2 + 2
z = 2 + 2

3 == 4 # == is the comparison operator for equal
3 != 4 # != is the comparison operator for not equal

# Selecting parts of objects

x <- c(1, 3, 6)
x[3]
x[2:3]

# Functions of objects

sum(x)
y <- sum(x)
y

# Functions of functions

z <- log(sum(x))
z

# Accessing Data

data()

Nile
help(Nile)
mean(Nile)
plot(Nile)
hist(Nile)

# How to get help

help(sum)
help.search('standard deviation')
?mean
??"standard deviation"
example(mean)
demo(graphics)
demo()

# Introduction to functions

standard_deviation <- function(x){
  if(!is.numeric(x)) { # check the input is numeric
    stop('This function needs a numeric input!')
  }
  xbar <- mean(x) # sample mean
  N <- length(x) # sample size
  s <- sqrt(sum((x - xbar)^2) / (N - 1)) # st.dev.
  return(s) # output of the function
}

standard_deviation(Nile)
sd(Nile)
standard_deviation(c("cat", "dog"))

# Working directory

getwd()

# Install Packages

# install.packages("ggplot2") # to run only if the package isn't installed

library(ggplot2) # Load the package

