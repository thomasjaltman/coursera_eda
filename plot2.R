data <- read.csv("data.csv")
data$dateTime <- strptime(data$dateTime, format="%Y-%m-%d %H:%M:%S")

png("plot2.png")
plot(data$dateTime, data$Global_active_power, type="l")
dev.off()