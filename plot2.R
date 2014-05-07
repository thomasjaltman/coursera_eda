data <- read.csv("data.csv")

png("plot2.png")
plot(data$Global_active_power, type="l")
dev.off()