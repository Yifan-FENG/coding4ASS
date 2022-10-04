#power of one.sample t-test 
# enter any 3 parameters in any order, the 4th is caculated 
power.t.test(delta,sd,n,power)

power.t.test(n=20,delta=5,sd=7,type="one.sample") 

#if we want a power of 90%, what sample size do we need? 
power.t.test(delta=5,sd=7,power=0.9,type="one.sample") 

#two sample t-tests 
power.t.test(power=0.8,delta=2,sd=5）
#paired t-test 
power.t.test(....,type="paired")

#power of two-proportion tests 
power.prop.test(power=0.9,p1=0.1,p2=0.25 )