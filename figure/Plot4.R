
# PLOT 4

x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
x$date <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %T")

y <- subset(x, date >= "2007-02-01" & date < "2007-02-03")

png("plot4.png")

# Multiple Base Plots
par(mfrow=c(2, 2))
with(y, {
  plot(y$date, y$Global_active_power, type = "l", xlab = NA, ylab = "Global Active Power")
  plot(y$date, y$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  plot (y$date, y$Sub_metering_1, type ="l", xlab =NA, ylab = "Energy sub metering")
  lines(y$date, y$Sub_metering_2, col ="red")
  lines(y$date, y$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering 1", "Sub_metering 2", "Sub_metering 3"), col = c("black", "red", "blue"), lty = 1)
  plot(y$date, y$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
})

dev.off()