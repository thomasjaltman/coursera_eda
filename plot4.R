data <- read.csv("data.csv")
data$dateTime <- strptime(data$dateTime, format="%Y-%m-%d %H:%M:%S")

png("plot4.png")
par(mfrow=c(2,2))
plot(data$dateTime, data$Global_active_power, type="l")

plot(data$dateTime, data$Voltage, type="l")

plot(data$dateTime, data$Sub_metering_1, type="l")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3, col="blue")

plot(data$dateTime, data$Global_reactive_power, type="l")

dev.off()