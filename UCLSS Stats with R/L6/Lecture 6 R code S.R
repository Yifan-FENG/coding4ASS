#ANOVA, Bartlett's test
tapply(SBR2$head, SBR2$year, mean, na.rm=T)
tapply(SBR2$head, SBR2$year, var, na.rm=T)
bartlett.test(SBR2$head ~ SBR2$year)

#ANOVA
anova(lm(SBR2$head ~ as.factor(SBR2$year)))
#note use of as.factor(), because SBR2$year is a numeric variable; compare
class(SBR2$year)
class(SBR2$delivery)
pairwise.t.test(SBR2$head, SBR2$year)


#remove variable in a file 
filename$variable <- NULL 

#ANOVA with oneway()
tapply(SBR3$head, SBR3$delivery, mean, na.rm=T)
tapply(SBR3$head, SBR3$delivery, var, na.rm=T)
hist(SBR2$head[SBR2$head < 45 & SBR2$head > 25], breaks = seq(25, 45, 1))
bartlett.test(SBR3$head ~ SBR3$delivery)
oneway.test(SBR3$head ~ SBR3$delivery)
pairwise.t.test(SBR3$head, SBR3$delivery, pool.sd=F)

#Kruskal-Wallis test
tapply(brain$PrebyT, brain$group, mean, na.rm=T)
bartlett.test(brain$PrebyT ~ brain$group)
summary(brain$group)
kruskal.test(brain$PrebyT ~ brain$group)
pairwise.wilcox.test(brain$PrebyT, brain$group)

#Two-way ANOVA
anova(lm(SBR2$head ~ SBR2$year + SBR2$delivery))


The ChickWeight data frame has 578 rows and 4 columns from an experiment on the effect of diet on early growth of chicks

a. what are the mean weights of each chick at Time=0?

b. what are the mean weights of each chick at Time=10?

c. is there a difference across diets at time=21?

d. is there a difference in weight between times 20 and 21 (across all chicks and diets)? I.e are they still growing?