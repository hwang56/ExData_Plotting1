######################################
# Exploratory Data Analysis, Coursera
# Course Project 1
# Household_power_consumption
# 08/07/2014
######################################

setwd("C:\\Users\\hang\\Desktop\\Coursera_5Top\\ExploratoryDa_080814\\CourseProject 1\\")
rm(list = ls())   # clear all variables  
graphics.off()    # close graphics windows

########
# Plot 3
load("dat.RData")# R object saved (see plot1.R)
png(file="plot3.png", width=480, height=480)
with(dat, plot(datetime, Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering"))
points(dat$datetime, dat$Sub_metering_2, type="l", col="red")
points(dat$datetime, dat$Sub_metering_3, type="l", col="blue")
legend ("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#dev.copy(png, file = "plot3.png") ## Copy plot to a PNG file
dev.off() ## Don't forget to close the PNG device!


