#Import the data in R


data=read.table("http://jse.amstat.org/datasets/diamond.dat.txt")
head(data,2)


#Insert the variable names: Size and Price for column 1 and column 2 respectively.


names(data)=c("size","price")
head(data,3)


#Display the Size and Price of the rings using scatterplot.


plot(data$price~data$size,main="Scatter Plot b/w Size and Price",col.main=76,col.lab=34,col=c(8,7,1,6,4,3))


#Fit a simple linear regression model using Price as a response variable.

model=lm(data$price~data$size)
model


#Test for significance of the Size to determine the price of the ring.
  
t.test(data$size)


#Predict the price of a ring of size 0.24 carat. Construct a 95% confidence interval and prediction interval for the predicted price.

predict(model,data.frame(size=0.24),interval="conf",level=0.95)  
