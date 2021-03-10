


# R
#1.- Create a vector containing the first 10 odd natural numbers and number 2 as last element.

#2.- Create a function called is.odd. This function should return TRUE if the argument is odd. Hint: %% is the the module operator in R. 

#3.-Create a function that computes the mean of the elements stored at odd positions in a vector. Apply it to the vector of  exercise 1 .

#4.- Create a data frame where each column will be generated using the vector of exercise 1 as base. Column i will be generated using the aforementioned vector incrementing all its elements in i units. The data frame will have 3 columns called a, b and c

#5.- Write the code to compute the maximum value of the first 5 elements of the second column and also the maximum value of the first 5 elements of the third column of the data frame of exercise 4

#6.- Create a 5x6 matrix with elements sampled from a uniform probability distribution on the interval from -2 to 2

#7.- Plot each column of the data frame of exercise 4 in red using points, in green using a line and in blue using points on a line. The three plots have to be arranged on the same row.


# exercise_1
vec <- vector()
for(i in 1:10) 
  if(i %% 2 ==1) # check the odd number
    vec <- append(vec,i) # store odd number in same vec
print(c(vec,2)) # last number is 2

# exercise_2
vec <- (1:10)
is.odd <- function(i)
  for (i in vec)
  print(isTRUE(i %% 2 ==1)) # check the odd number and return True or False 
is.odd(vec)

# exercise_3
vec <- c(1,3,5,7,9,2) # vector in exercise 1
my_function <- function(mean_odd)
  mean_odd <- mean((vec[c(seq(from = 1, to = length(vec), by=2))])) # mean value of numbers in odd positions 
  odd <- (vec[c(seq(from = 1, to = length(vec), by=2))]) # numbers in odd positions
print(vec) # show original vector
print(odd) # show the odd number
print(my_function(mean_odd)) # show the mean value of odd number

# exercise_4
vec <- c(1,3,5,7,9,2)
a <- vec+1
b <- vec+2
c <- vec+3
my_data <- data.frame(a,b,c)
print(my_data)
print(names(my_data))

# exercise_5
vec <- c(1,3,5,7,9,2)
a <- vec+1
b <- vec+2
c <- vec+3
my_data <- data.frame(a,b,c)
print(my_data)
print(names(my_data))
print(max(my_data[1:5,2])) #the maximum value of the first 5 elements of the second column
print(max(my_data[1:5,3])) #the maximum value of the first 5 elements of the third column

# exercise_6
upd <- runif(50, min = -2, max = 2) # create 50 uniform probability distribution numbers
m <- matrix (sample(upd,30, replace = TRUE),nrow = 5, ncol = 6, byrow = TRUE) # sampling 30 values from upd
print(upd)
print(m)

# exercise_7
# get the range for the x and y axis
xrange <- range(1:6)
yrange <- range(my_data$a)

# set up the plot
plot(xrange, yrange, type="n", xlab="Index",
     ylab="Value" )

# add lines
lines(1:6 ,my_data$a , t="p" , col="red" )
lines(1:6 , my_data$b, t="l", col="green")
lines(1:6, my_data$c, t="p", col="blue")

# add a title and subtitle
title("The Figure", "exercise_7")

# add a legend
legend(1, 10, 1:3,  cex=0.8, col=colors, pch=plotchar, lty=linetype, title="Name")







