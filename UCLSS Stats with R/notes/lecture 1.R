library(readr)
kung_census<-read_csv("KungCensus.csv")
#discriptive statistic

## attach must follow detach, which is easy to forget, better don't use
mean(kung_census$weight, na.rm=T)
range(kung_census$weight, na.rm=T)
#mode
table(kung_census$weight)
table(as.integer(kung_census$weight))
## sort the table, according to frequency
sort(table(kung_census$weight))
##as integer: forget about what are at the behind the point...only integer. and frequancy also.
sort(table(as.integer(kung_census$weight)))
#median
median(kung_census$weight, na.rm=T)
#summaries
summary(kung_census$weight)
summary(kung_census$sex)
table(kung_census$sex)
summary(kung_census)
#measures of dispersal
var(kung_census$weight, na.rm=T)
sd(kung_census$weight, na.rm=T)
#histogram
hist(kung_census$weight)
hist(kung_census$weight, breaks=seq(0,65,1), freq=T,
     main="Weight of the !Kung", col="lightblue",
     xlab="weight (kg)", ylab="number of people")

#plot two patterns
plot(weight~age, data = kung_census)
plot(kung_census$weight ~ kung_census$age, cex.axis=1.2, 
     col="grey65", xlab="age (years)", ylab="weight")
## grey后面加数字， 数字越小 颜色越深
## cex: size of the point,  cex.axis the size of the number   cex.lab\



hist(kung_census$age)
range(kung_census$age,na.rm = TRUE)
hist(kung_census$age, breaks=seq(0,85,1), freq=T,
     main="Age of the !Kung", col="lightblue",
     xlab="Age (Year)", ylab="number of people")



plot(height~age, data= kung_census)
plot(kung_census$height ~ kung_census$age, cex.axis=1.2, 
     col="blue", xlab="age (years)", ylab="height")
plot(weight, height, data=kung_census)
