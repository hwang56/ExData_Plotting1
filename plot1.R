######################################
# Exploratory Data Analysis, Coursera
# Course Project 1
# Household_power_consumption
# 08/07/2014
######################################


rm(list = ls())   # clear all variables  
graphics.off()    # close graphics windows  

setwd("C:\\Users\\hang\\Desktop\\Coursera_5Top\\ExploratoryDa_080814\\CourseProject 1\\")
library(sqldf)
filename="household_power_consumption.txt"
dat<-read.csv.sql(filename,sep=";",sql='select * from file where Date="1/2/2007" OR Date="2/2/2007"')
dat$datetime<-strptime(paste(dat$Date,dat$Time),"%d/%m/%Y %H:%M:%S")
save(dat, file="dat.RData")

########################################
## Plot1, histogram of Global_active_power
load("dat.RData")
hist(dat$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png, file = "plot1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!