bike<-read.csv(file.choose())
head(bike)
is.na(bike)
any(is.na(bike))
sum(is.na(bike))
summary(bike)
str(bike)
library(ggplot2)
ggplot()

#correlation

cor(bike[,c("temp","count")])
cor.test(bike$temp,bike$count)

##build model
temp.model<-lm(count~temp,bike)
print(summary(temp.model))
summary(temp.model)

##how many bike rental count at 25c
6.04+9.17*25
## predict model
temp.test<-data.frame(temp=c(25))
temp.test
predict(temp.model,temp.test)
