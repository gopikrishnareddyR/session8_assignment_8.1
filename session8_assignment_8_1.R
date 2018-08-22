#session8_assignment_8.1

#1. Use the package RcmdrPlugin.IPSUR. 

library(RcmdrPlugin.IPSUR)
data(RcmdrTestDrive)
summary(RcmdrTestDrive)
table(RcmdrTestDrive$gender)

#and perform the below operations: 

#a. Calculate the average salary by gender and smoking status.

table(RcmdrTestDrive$gender)
tapply(RcmdrTestDrive$salary, list(gender=RcmdrTestDrive$gender, smoking=RcmdrTestDrive$smoking), mean)


#b. Which gender has the highest mean salary? 
x<-tapply(RcmdrTestDrive$salary, list(gender=RcmdrTestDrive$gender), mean)


#c. Report the highest mean salary. 

max(RcmdrTestDrive$salary)
median(RcmdrTestDrive$salary)
mean(RcmdrTestDrive$salary)


#d. Compare the spreads for the genders by calculating the standard deviation of salary by gender

x<-tapply(RcmdrTestDrive$salary, list(gender=RcmdrTestDrive$gender), sd)
range<-range(RcmdrTestDrive$salary, list(gender=RcmdrTestDrive$gender))
variance<-var(RcmdrTestDrive$gender,RcmdrTestDrive$salary) #variance of salary
iqr<-IQR(RcmdrTestDrive$salary) # inter quqrtile range

