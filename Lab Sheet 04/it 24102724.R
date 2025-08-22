setwd(" C:\\Users\\it24102724\\Desktop\\New folder")
#read the text file with header
branch_data <- read.table("Exercise.txt",head =TRUE,sep = ",")

#view the file in a separate window
fix(branch_data)

#print the first rows
head(branch_data)


#Attach the file into R
attach(branch_data)

#2
#structure of the data
str(branch_data)

#Get a summery of the data
summary(branch_data)

#3
#boxplot for Sales
boxplot(branch_data$Sales_X1, outline = TRUE, outpch = 8, horizontal=TRUE,main= "Sales Distribution")

#4
#five number summery
summary(branch_data$Advertising_X2)

#calculate IQR 
IQR(branch_data$Advertising_X2)


#5
#Function to find outliers
outliers <- function(years){
  Q1 <- quantile(years)[2]
  Q3 <- quantile(years)[4]
  iqr <- Q3-Q1
  
  lb <- Q1 - 1.5*iqr
  ub <- Q3 + 1.5*iqr
  
  outliers <- years[years < lb | years > ub]
  #sort the outlier
  outliers = sort(outliers)
  
  print(paste("Upper Bound : " , ub))
  print(paste("Lower Bound : " , lb))
  print(paste("IQR : ",iqr))
  print(paste("outliers: ", paste(outliers, collapse=",")))
}
