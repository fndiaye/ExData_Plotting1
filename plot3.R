## Loading the data
data <- read.table("../household_power_consumption.txt", sep = ";", header = TRUE)

##Subsetting data to extract only those on 01/02/2007 and 02/02/2007
engyCons <- subset (data, Date == "1/2/2007" | Date == "2/2/2007")

##Setting the height and the width of graphs
par(pin = c(480,480))
par(mar = c(1,1,1,1))

##Launch a graphic device
png("plot3.png")

##Creating the plot
plot(engyCons$Time, as.numeric(engyCons$Sub_metering_1), col = "black", ylab = "Energy sub metering", type = "l")
lines(engyCons$Time, as.numeric(engyCons$Sub_metering_2), col = "red", ylab = "Energy sub metering")
lines(engyCons$Time, as.numeric(engyCons$Sub_metering_3), col = "blue", ylab = "Energy sub metering")

            
legend("topright", legend = c("sub_metering_1","sub_metering_2","sub_metering_3"), pch = "_" , col = c("black", "red","blue"))


##Close the graphic device
dev.off()
