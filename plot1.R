## Loading the data
data <- read.table("../household_power_consumption.txt", sep = ";", header = TRUE)

##Subsetting data to extract only those on 01/02/2007 and 02/02/2007
engyCons <- subset (data, Date == "1/2/2007" | Date == "2/2/2007")

##Setting the height and the width of graphs
par(pin = c(480,480))

##Launch a graphic device
png("plot1.png")

##Creating the plot
hist(as.numeric(engyCons$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")


##Close the graphic device
dev.off()

