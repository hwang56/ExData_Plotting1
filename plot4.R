######################################
# Exploratory Data Analysis, Coursera
# Course Project 1
# Household_power_consumption
# 08/07/2014
######################################

setwd("C:\\Users\\hang\\Desktop\\Coursera_5Top\\ExploratoryDa_080814\\CourseProject 1\\")
rm(list = ls())   # clear all variables  
graphics.off()    # close graphics windows

####################
# Plot 4, four plots
load("dat.RData")# R object saved (see plot1.R)
png(file="plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(dat$datetime,  dat$Global_active_power, type="l", xlab="", ylab="Global Active Power")#plot1
plot(dat$datetime, dat$Voltage, type="l", xlab="datetime", ylab="Voltage")#plot2
plot(dat$datetime, dat$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")#plot3
points(dat$datetime, dat$Sub_metering_2, type="l", col="red")
points(dat$datetime, dat$Sub_metering_3, type="l", col="blue")
legend ("topright", bty="n", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(dat$datetime, dat$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")#plot4
dev.off() ## Don't forget to close the PNG device!
