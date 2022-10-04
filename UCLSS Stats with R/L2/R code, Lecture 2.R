#producing a bell-shaped curve
kc
#create an x-axis sector around 0
x <- seq(-3,3,0.05) 

#exponential functions
plot(exp(x) ~ x, type="l")
plot(exp(-x) ~ x, type="l")
plot(exp(x^2) ~ x, type="l")
plot(exp(-x^2) ~ x,type="l", lwd=3, ylab="", xlab="")

#cumulative distributions from normal curve
pnorm(170, 180, 10) #for lower 
1-pnorm #for upper 
z = qnorm(0.025/0.975)

#Coursework
#import KungCensus again 
#creating a file with adults only:
kc <- KungCensus 
kungadults <- subset(kc, age > 18 & sex == "woman")
