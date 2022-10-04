#Pearson correlation
cor.test(SBR$size, SBR$head)
                  
#Spearman correlation
cor.test(Brains2$PreWhite, Brains2$PreGray, method="spearman")

#regression statistics
brainreg <- lm(Brains$BrWhite ~ Brains$BrGray)
brainreg
summary(brainreg)

#confidence interval of perameters
confint(brainreg)

#visualising
plot(Brains$BrGray~Brains$BrWhite)

#adding regression line
abline(brainreg)

#anova table
anova(lm(Brains$BrWhite ~ Brains$BrGray))

