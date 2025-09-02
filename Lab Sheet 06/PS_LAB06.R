setwd("C:\\Users\\ASUS\\Desktop\\PS_Lab")
getwd()
#Question 01
#Part 1
#Binomial Distribution
#Here,random variable X has binomial distribution with n=44 and p=0.92

#part 2
#It asks to find P(x=40).Following command gives the density
#In other words,probability of getting an exact value can be calculated using"dbinom" command.
dbinom(40,44,0.92)

#Part 3
#It asks to find P(X>=35).Following command gives the cummulative
#Probability (<=),if""lower.tail"argument equals to "TRUE".
pbinom(35,44,0.92,lower.tail = TRUE)

#Part 4
#It asks to find P(X>=38).This can find using "pbinom"command as follows.
#You need to rearrange the probability statement as follows.
#P(X>=38)=1-p(X<38)=1-p(x<=37)
#Then command will be as follows
1-pbinom(37,44,0.92,lower.tail=TRUE)
#Or else following command can also used by keeping argument"lower.tail"as"FALSE".
#Here,when that argument is "FALSE" it means that P(X>=38).
pbinom(37,44,0.92,lower.tail = FALSE)

#Part 5
#It asks to find P(40<=x<=42).This can find using "pbinom"command as follows.
#You need to rearrange the probability statement as follows.
#P(40<=X<=42) = P(x<=42)-P(X<=39)
#Then command will be as follows.
pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail=TRUE)

#Question 2
#Part 1
#Number of babies in a hospital on a given day

#Part 2
#Poisson distribution
#Here ,random variable X has poisson distribution with lambda = 5

#Part 3
#It asks to find P(X=6).Following command gives the density.
#In other words,probability of getting an extra value can be calculated using "dpois" command.
dpois(6,5)

#Part 4
#It asks to find P(X>6).This can find using "ppois"command as follows.
#If you keep "lower.tail"argument as "TRUE",that means P(X<=6).
#Since we need P(X>6),keep the "lower.tail" argument as "FALSE".
ppois(6,5,lower.tail = FALSE)


#Exercise 
#Part 1
X~Binomial(n=50,p=0.85)
1-pbinom(46,size =50,prob = 0.85)

#Part 2
#Define the random variable
#X = number of calls in one hour
#Distriution
# X ~ Poisson(lambda = 12)
dpois(15,lambda = 12)
