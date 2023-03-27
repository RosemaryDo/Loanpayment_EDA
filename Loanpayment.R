Loanpayment <- read.csv(file="C:/Users/thaod/Documents/STUDYING/DATA ANALYSIS/DATASET POFORLIO/Loan payments data.csv")


library(dplyr)
library(tidyr)
library(magrittr)
summary(Loanpayment)

library("ggplot2")

#Data Distribution Views
#The Loan Status Plot
ggplot(data=Loanpayment, aes(x=loan_status)) + 
  geom_bar(colour="black", fill="blue") +
  xlab("Paid off Status") +
  ylab("Number of Loan") +
  ggtitle("Loan Status")

#Principle Amount Histogram
ggplot(data = Loanpayment, aes(x = Principal)) +
  geom_histogram(bins =7, colour="green", fill="red") +
  ylab("Number of principles") +
  ggtitle("Principle Amount")

#The Education Levels Bar Plot
ggplot(data=Loanpayment, aes(x=education)) + 
  geom_bar(colour="blue", fill="pink") +
  xlab("Education") +
  ylab("Amount") +
  ggtitle("Education levels")

#Past due dates histogram
ggplot(data = Loanpayment, aes(x = past_due_days)) +
  geom_histogram(colour="red", fill="green") +
  ylab("Count") +
  ggtitle("Due Dates")

#The Gender Levels Bar Plot
ggplot(data=Loanpayment, aes(x=Gender)) + 
  geom_bar(colour="black", fill="red") +
  xlab("Gender") +
  ylab("Amount") +
  ggtitle("Gender")

#Age Histogram Plot
ggplot(data = Loanpayment, aes(x = age)) +
  geom_histogram(bins =7, colour="blue", fill="gray") +
  ylab("Number of customers") +
  ggtitle("Age Distribution Plot")
