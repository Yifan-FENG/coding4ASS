# The real curve may hit zero, but the model curve will never meet zero.

#select the adult woman
kc_woman<-subset(kc,age>18 & sex=="woman")
#histogram of adult femal weight
hist(kc$weight)
#it does not look normal
#we explore the data kc_woman
hist(kc_woman$weight)
#well, it seems more like a normal distribution than the 
#previous one.

#we find the missing value in the weight data
summary(kc_woman$weight)
#we check it and find there are 68 misssing data
#there are 264 observations and there are 68 missing data
#therefore the 196 adult women have weight data

#the mean and sd for adult female weight.
mean(kc_woman$weight,na.rm = TRUE)
sd(kc_woman$weight,na.rm = TRUE)

#based on z-score, under 40kg
pnorm(-0.38)
pnorm(40,42.07,5.3)
#above 60kg
1-pnorm(3.396)
1-pnorm(60,42.07,5.3)
#probability of a value being
#less than z=-3sd
pnorm(42.07-3*5.3,42.07,5.3)
#equal
pnorm(-3)
#more than z=+3sd
1-pnorm(42.07+3*5.3,42.07,5.3)
1-pnorm(3)
#confidence interval defined
#99.73%

