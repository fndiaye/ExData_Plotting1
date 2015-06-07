## Loading the data
data <- read.table("../household_power_consumption.txt", sep = ";", header = TRUE)

##Subsetting data to extract only those on 01/02/2007 and 02/02/2007
engyCons <- subset (data, Date == "1/2/2007" | Date == "2/2/2007")

##Setting the height and the width of graphs
par(pin = c(480,480))
par(mar = c(1,1,1,1))

##Launch a graphic device
png("plot2.png")

##Create plot
#xrange = range(strptime(engyCons$Date, "%a"))
xrange = range(as.numeric(engyCons$Time))
yrange = range(as.numeric(engyCons$Global_active_power))

plot(xrange, yrange, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
lines(engyCons$Time, as.numeric(engyCons$Global_active_power), type = "l")


##Close the graphic device
dev.off()
