#checking for normality
hist(kaf$height, breaks=seq(130,170,1))
hist(kc$height, breaks=seq(50,190,1))

#normality tests
shapiro.test(kaf$height)
shapiro.test(kc$height)
hist(intake$post, breaks=seq(3500, 8000,100))
shapiro.test(intake$post) #for this you need to load library ISwR 
wilcox.test(intake$post, mu=6500, conf.int=T)

#creating file with babies only
kb <- subset(kc, birthyear>1967)
wilcox.test(kb$weight ~ kb$sex, conf.int=T)
wilcox.test(intake$pre, intake$post, paired=T, conf.int=T)

#mean
tapply(energy$expend,energy$stature,mean)

#proportion tests
prop.test(120, 254, 0.5)
prop.test(39, 87, 0.5)
prop.test(c(120,114), c(254,216))
prop.test(c(39,52), c(87,85))
fisher.test(matrix(c(39, 52, 48, 33), 2))

