# Exercise 
setwd(" C:\\Users\\sasin\\OneDrive\\Desktop")

###Question 01

## i. Distribution of X
# Binomial Distribution

## ii. Probability that ≥ 47 students passed
pbinom(35, 44, 0.92, lower.tail = TRUE)

###Question 02

## i. Random variable X
# Number of calls received per hour

## ii. Distribution of X
# Poisson Distribution

## iii. Probability that exactly 15 calls are received
dpois(15, 12)
