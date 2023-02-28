Bikes <- read.csv("bikes.csv", stringsAsFactors = FALSE)
View(Bikes)
str(Bikes)

library(ggplot2)


ggplot(Bikes, aes(x = Brand)) + theme(axis.text.x = element_text(angle = 90)) + 
  geom_bar() + 
  labs(y = "Count", title = "No. of Bike models W.R.T Brand")


ggplot(Bikes, aes(x = Electric, color=Electric)) + theme(axis.text.x=element_blank()) + 
  geom_bar() + 
  labs(y = "Count", 
       title = "No. of Non-Electric & Electric") + xlab("Non-Electric                                                                 Electric")

ggplot(Bikes, aes(x = CC)) + theme() + 
  geom_histogram(color="black", fill="lightblue",linetype="solid") + 
  labs(y = "Count", title = "No. of Bikes W.R.T CC")

ggplot(Bikes, aes(x = Weight)) + theme() + 
  geom_histogram(color="black", fill="lightblue",linetype="solid") + 
  labs(y = "Count", title = "No. of Bikes W.R.T Weight")

ggplot(Bikes, aes(x = Weight, y = Mileage)) +
  geom_point() + stat_smooth() +labs(title = "Correlation B/W Mileage and Weight with Non-Linear Regression")

ggplot(Bikes, aes(x = CC, y = Mileage)) +
  geom_point() + stat_smooth() + labs(title = "Correlation B/W Mileage and CC with Non-Linear Regression")

ggplot(Bikes, aes(x = CC, y = Price)) +
  geom_point() + stat_smooth() + labs(title = "Correlation B/W CC and Price with Non-Linear Regression")
