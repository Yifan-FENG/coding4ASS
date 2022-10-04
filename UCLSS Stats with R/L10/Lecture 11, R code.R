#model 1: smoking and obesity
model.hyper <- glm(hypnonhyp ~ smoking+obesity, binomial)
summary(model.hyper)
step(model.hyper)

#model 2: obesity
model.hyper2 <- glm(hypnonhyp ~ obesity, binomial)
summary(model.hyper2)

#95% CI
confint(model.hyper)
confint.default(model.hyper)

#odds ratios, probabilities
coef(model.hyper)
exp(cbind('Odds ratio'=coef(model.hyper), confint(model.hyper)))

coef(model.hyper2)
exp(coef(model.hyper2))
exp(-1.676+0.76)
1/(1+exp(-(-1.676)))
1/(1+exp(-(-1.676+0.76)))

#menarche analysis

#model menarche
model.menar <- glm(menarche~age,binomial, data=menar)
summary(model.menar)
#logits
predict(model.menar)
#probabilities
probs <- predict(model.menar, type="response")
probs
#probability plot
plot(probs~age, data=menar, pch=16, cex=0.7, ylab="menarche")

#plot with frequencies by age
ageintervals <- cut(age, c(8,9,10,11,12,13,14,15,16,17,18,19,20))
table1 <- table(ageintervals,menarche)
table1
table2 <- prop.table(table1,1)[,2]
table2
points(table2 ~ c(8.5,9.5,10.5,11.5,12.5,13.5,14.5,15.5,16.5,17.5,18.5,19.5), 
       pch=1,cex=1.5)
#adding menarche by age
points(menarche ~ age, col='darkgrey', data=menar)
