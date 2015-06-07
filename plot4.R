## Loading the data
data <- read.table("../household_power_consumption.txt", sep = ";", header = TRUE)

##Subsetting data to extract only those on 01/02/2007 and 02/02/2007
engyCons <- subset (data, Date == "1/2/2007" | Date == "2/2/2007")


##Setting the height and the width of graphs

par(mfrow = c(2,2), mar = c(4,4,2,2))

##Launch a graphic device
#png("plot4.png")

##Adding plot2
plot(engyCons$Time, as.numeric(engyCons$Global_active_power), type = "l", ylab = "Global Active Power", xlab = "")


##Adding plot for the voltage
plot(engyCons$Time, as.numeric(engyCons$Voltage), type = "l", ylab = "Voltage", xlab = "Datetime")


##Adding plot3
plot(engyCons$Time, as.numeric(engyCons$Sub_metering_1), col = "black", ylab = "Energy sub metering", type = "l")
lines(engyCons$Time, as.numeric(engyCons$Sub_metering_2), col = "red", ylab = "Energy sub metering")
lines(engyCons$Time, as.numeric(engyCons$Sub_metering_3), col = "blue", ylab = "Energy sub metering")
legend("topright", legend = c("sub_metering_1","sub_metering_2","sub_metering_3"), pch = "_" , col = c("black", "red","blue"))

##Adding plot for the Global reactive power
plot(engyCons$Time, as.numeric(engyCons$Global_reactive_power), type = "l", ylab = "Global_reactive_power", xlab = "Datetime")

##Close the graphic device
#dev.off()
