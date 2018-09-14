
# PLOT 3

x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
x$date <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %T")

y <- subset(x, date >= "2007-02-01" & date < "2007-02-03")

png("plot3.png")

plot (y$date, y$Sub_metering_1, type ="l", xlab =NA, ylab = "Energy sub metering")
lines(y$date, y$Sub_metering_2, col ="red")
lines(y$date, y$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering 1", "Sub_metering 2", "Sub_metering 3"), col = c("black", "red", "blue"), lty = 1)

dev.off()