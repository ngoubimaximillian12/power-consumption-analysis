# Load necessary libraries
library(data.table)

# 1. Read and preprocess data (only for 2007-02-01 and 2007-02-02)
file <- "household_power_consumption.txt"

# Use fread for efficiency, read everything, then subset
data <- fread(file, na.strings = "?", sep = ";", header = TRUE)

# Convert Date column to Date object and filter rows
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subset_data <- data[data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")]

# Create a new DateTime column by merging Date and Time
subset_data$DateTime <- as.POSIXct(paste(subset_data$Date, subset_data$Time), format = "%Y-%m-%d %H:%M:%S")

### PLOT 1 ###
png("plot1.png", width = 480, height = 480)
hist(as.numeric(subset_data$Global_active_power), col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()

### PLOT 2 ###
png("plot2.png", width = 480, height = 480)
plot(subset_data$DateTime, as.numeric(subset_data$Global_active_power), 
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

### PLOT 3 ###
png("plot3.png", width = 480, height = 480)
plot(subset_data$DateTime, as.numeric(subset_data$Sub_metering_1), 
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(subset_data$DateTime, as.numeric(subset_data$Sub_metering_2), col = "red")
lines(subset_data$DateTime, as.numeric(subset_data$Sub_metering_3), col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1)
dev.off()

### PLOT 4 ###
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

# Top-left
plot(subset_data$DateTime, as.numeric(subset_data$Global_active_power), 
     type = "l", xlab = "", ylab = "Global Active Power")

# Top-right
plot(subset_data$DateTime, as.numeric(subset_data$Voltage), 
     type = "l", xlab = "datetime", ylab = "Voltage")

# Bottom-left
plot(subset_data$DateTime, as.numeric(subset_data$Sub_metering_1), 
     type = "l", xlab = "", ylab = "Energy sub metering")
lines(subset_data$DateTime, as.numeric(subset_data$Sub_metering_2), col = "red")
lines(subset_data$DateTime, as.numeric(subset_data$Sub_metering_3), col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, bty = "n", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Bottom-right
plot(subset_data$DateTime, as.numeric(subset_data$Global_reactive_power), 
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
