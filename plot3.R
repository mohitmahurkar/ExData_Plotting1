setwd("E:/MOHIT/Coursera/ExData_Plotting1")
dt3<-read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.string="?")

data2<-dt3[with(dt3, Date=="1/2/2007"|Date=="2/2/2007"), ]


datetime1 <- strptime( paste(data2$Date,data2$Time), format= "%d/%m/%Y %H:%M:%S")
##Plot
with(data2,{
  plot(datetime1, Sub_metering_1, 
                , xlab = "", ylab = "Energy Sub Metering", type="l")
     lines(datetime1,Sub_metering_2, col = "red")
     lines(datetime1,Sub_metering_3, col = "blue")
})
     legend("topright", lty= 1, col = c("black", "red", "blue"),        
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file = "plot 3.png")
dev.off()