setwd("E:/MOHIT/Coursera/ExData_Plotting1")
dt2<-read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", na.string="?")

data<-dt2[with(dt2, Date=="1/2/2007"|Date=="2/2/2007"), ]


datetime <- strptime( paste(data$Date,data$Time), format= "%d/%m/%Y %H:%M:%S")


with(data, plot(datetime, Global_active_power
                , xlab = "", ylab = "Global Active Power (killowatts)", type="l")) 
dev.copy(png, file = "plot 2.png")
dev.off()