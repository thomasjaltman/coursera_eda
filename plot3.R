data <- read.csv("data.csv")
data$dateTime <- strptime(data$dateTime, format="%Y-%m-%d %H:%M:%S")

png("plot3.png")
plot(data$dateTime, data$Sub_metering_1, type="l")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3, col="blue")
dev.off()