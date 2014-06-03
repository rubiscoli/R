 #read and cut the file
 data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, as.is = TRUE)
 data0 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
 #plot the figure and save as PNG
 plot(strptime(paste(data0[,1],data0[,2]), "%d/%m/%Y %H:%M:%S"), data0[,3], type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
 dev.copy(png, file="plot2.png", height=480, width=480)
 dev.off()
 
 ## The Chinese characters shown in the figure is the same as "Thursday, Friday, and Saturday"!
