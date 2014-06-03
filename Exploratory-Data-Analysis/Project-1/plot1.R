 #read and cut the file
 data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, as.is = TRUE)
 data0 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
 #plot the figure and save as PNG
 hist(data0[,3], main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")
 dev.copy(png, file = "plot1.png", height = 480, width = 480)
 dev.off()
