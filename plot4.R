setwd("E:/MOHIT/Coursera/ExData_Plotting1")
dt4<-read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.string="?")

data3<-dt4[with(dt4, Date=="1/2/2007"|Date=="2/2/2007"), ]


datetime2 <- strptime( paste(data3$Date,data3$Time), format= "%d/%m/%Y %H:%M:%S")
##Plot
par(mfrow = c(2, 2))
par( mar = c (4,4,4,4))

with(data3, {
  plot(datetime2, Global_active_power, xlab = "", ylab = "Global Active Power", type="l")
  plot(datetime2, Voltage, xlab = "",ylab = "voltage", type="l")
  plot(datetime2, Sub_metering_1, xlab = "", ylab = "Energy Sub Metering", type="l")
  lines(x= datetime2, y= Sub_metering_2, col ="red")
  lines(x= datetime2, y= Sub_metering_3, col ="blue")

  legend("topright", col = c("black","red","blue")
         , lty= "solid", bty = "n", cex = 0.40 ,y.intersp = 0.5,inset=c(0, 0)
         ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  plot(datetime2, Global_reactive_power,xlab = "", type="l")
}) 

dev.copy(png, file = "plot 4.png")
dev.off()