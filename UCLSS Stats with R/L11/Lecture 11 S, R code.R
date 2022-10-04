#model 1: smoking and obesity
model.hyper <- glm(hypnonhyp ~ smoking+obesity, binomial)
summary(model.hyper)
step(model.hyper)

#model 2: obesity
model.hyper2 <- glm(hypnonhyp ~ obesity, binomial)
summary(model.hyper2)

#95% CI
confint(model.hyper2)
confint.default(model.hyper2)

#odds ratios, probabilities
coef(model.hyper2)
exp(cbind('Odds ratio'=coef(model.hyper), confint(model.hyper2)))

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
plot(probs~age, data=menar, pch=16, lwd=3, ylab="menarche", type="l")

#factors with >2 levels
model.infant <- glm(healthy ~ as.factor(month),binomial, data=infant)
summary(model.infant)
coef(model.infant)
exp(coef(model.infant))

#interactions
model.chd <- glm(chd~age*cat*chl,binomial, data=evans)
summary(model.chd)

#model optimisation
model.menar2 <- glm(menarche~age*igf1,binomial, data=menar)
model.menar2 <- glm(as.factor(menarche)~age*igf1,binomial, data=menar)
summary(model.menar2)
step(model.menar2)
summary(step(model.menar2))
