######################################
# Exploratory Data Analysis, Coursera
# Course Project 1
# Household_power_consumption
# 08/07/2014
######################################

rm(list = ls())   # clear all variables  
graphics.off()    # close graphics windows

setwd("C:\\Users\\hang\\Desktop\\Coursera_5Top\\ExploratoryDa_080814\\CourseProject 1\\")
###############################################
# Plot 2, plot (date/time, Global_active_power)
load("dat.RData") # R object saved (see plot1.R)
plot(dat$datetime,  dat$Global_active_power, type="l", xlab="", ylab="Global Active Power")
dev.copy(png, file = "plot2.png") ## Copy plot to a PNG file
dev.off() ## Don't forget to close the PNG device!