library(readr)
KungCensus<-read_csv("KungCensus.csv")

#producing a bell-shaped curve

#create an x-axis sector around 0
x <- seq(-3,3,0.05) 

#exponential functions
plot(exp(x) ~ x, type="l")
plot(exp(-x) ~ x, type="l")
plot(exp(x^2) ~ x, type="l")
plot(exp(-x^2) ~ x,type="l", lwd=3, ylab="", xlab="")

#cumulative distributions from normal curve
pnorm(170, 180, 10)

#Coursework
#import KungCensus again 
#creating a file with adults only:
kc <- KungCensus 
kungadults <- subset(kc, age > 18 & sex == "woman")





rnorm(20)
pnorm(170,180,10)
pnorm(185,180,10)
##larger than 185 smaller than 175
1-pnorm(185,180,10)+pnorm(175,180,10)
##between 173-187
pnorm(187,180,10)-pnorm(173,180,10),


qnorm(0.025)
qnorm(0.975)
