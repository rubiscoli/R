 #read and cut the file
 data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, as.is = TRUE)
 data0 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
 data0$datetime <= strptime(paste(data0[,1],data0[,2]), "%d/%m/%Y %H:%M:%S")
 #plot the figure and save as PNG
 plot(data0[,10], data0[,7], type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
 lines(data0[,10], data0[,8], col='Red')
 lines(data0[,10], data0[,9], col='Blue')
 legend("topright", col = c("black", "red", "blue"), lwd = 1, cex = 0.5, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
 dev.copy(png, file = "plot3.png", height = 480, width = 480)
 dev.off()
 ## The Chinese characters shown in the figure is the same as "Thursday, Friday, and Saturday"!
