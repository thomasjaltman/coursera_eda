data <- read.csv("data.csv")

png("plot1.png")
hist(data$Global_active_power, col="red", xlab="Global Active Power", main="Global Active Power")
dev.off()
