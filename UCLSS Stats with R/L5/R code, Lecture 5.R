#chi-square/proportion tests

#one-sample
prop.test(120, 254, 0.5)
prop.test(39, 87, 0.5)

#to find out the numbers of boys and girls in example 1,
#just solve the two-equation sytem:

#b + g = 254
#b/g = 0.893
#g = n/(1+sex ratio)
#hence
#b = 0.893*g

#and
#0.893g + g = 254
#1.893g = 254
#g = 254/1.893 = 134.17 = 134
#b = 120
  
#two-samples
#x1, x2 should be positive (boys here)
#n2, n2 should be total num
prop.test(c(x1,x2),c(n1,n2))
prop.test(c(120,114), c(254,216))
prop.test(c(39,52), c(87,85))
prop.test(c(x1,x2,x3,x4),c(n1,n2,n3.n4))

#alternatives
binom.test(120,254)
fisher.test(matrix(c(39, 52, 48, 33), 2))

#chisq.test samilar, x should be pos and n neg, m should be the num of groups 
chisq.test(matrix(c(x1,x2,x3,n1,n2,n3),m))
chisq.test(matrix(c(39, 52, 48, 33), nrow=2,byrow=T)) 

#chise.test: one sample, n proportions, nrow is how many rows data is located 
chisq.test(matrix(c(x1,x2,x3,x4,x5,x6),nrow=1))

#binomial test: receive exact P value, x1=test value (pos) 
binom.test(x1, n) 

#fisher.test, m should be number of compared groups 
fisher.test(matrix(c(pos1,pos2,nge1,neg2),m))



