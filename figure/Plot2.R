
# PLOT 2

x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
x$date <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %T")

y <- subset(x, date >= "2007-02-01" & date < "2007-02-03")

png("plot2.png")

plot(y$date, y$Global_active_power, type = "l", xlab = NA, ylab = "Global Active Power (kilowatts)")

dev.off()