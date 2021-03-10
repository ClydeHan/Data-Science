
# Exercise 1
#1.- Create a linear regression model using the women dataset. The response variable is: weight 

#2.- Create a linear regression model using the rock dataset. The response variable is: area

#3.- Create a linear regression model using the pressure dataset. The response variable is: pressure 

#4.- Using the mtcars dataset, display a table on the console with the name, horsepower and number of cylinders of the cars with a horsepower value higher than the mean

##########################################
# use ?dataset_name to check description 
# answer_1
data('women')
linear.model1<-lm(weight~height, data=women)
summary(linear.model1)

# answer_2
data('rock')
linear.model2<-lm(area~peri+perm, data=rock)
summary(linear.model2)

# answer_3
data('pressure')
linear.model3<-lm(pressure~temperature, data=pressure)
summary(linear.model3)

# answer_4
data("mtcars")
mtcars[mtcars$hp > mean(mtcars$hp),c("cyl","hp")] 

############################################
#data("mtcars")
#d <- mtcars[mtcars$hp > mean(mtcars$hp),1:4] 
#head(d[c("cyl","hp")],n=nrow(d))

