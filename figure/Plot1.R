
# PLOT 1

x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
x$date <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %T")

y <- subset(x, date >= "2007-02-01" & date < "2007-02-03")

png("plotA.png")

with(y, hist(Global_active_power,
                main="Global Active Power", 
                xlab = "Global Active Power (kilowatts)",
                axes = FALSE,
                xlim = c(0, 6),
                col = "red")
)

axis(1, at = c(0,2,4,6))
axis(2, at = seq(0,1200,by = 200))

dev.off()