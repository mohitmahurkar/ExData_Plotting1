setwd("E:/MOHIT/Coursera/ExData_Plotting1")
dt <- read.table("E:/MOHIT/Coursera/ExData_Plotting1/household_power_consumption.txt",sep = ';', header = FALSE,stringsAsFactors = FALSE,as.is=F,na.strings=c('?'))
dt1 <- read.table(pipe('findstr /B /R ^[1-2]/2/2007 household_power_consumption.txt'),header=F, sep=';'
                  ,as.is=F,na.strings=c('?'),stringsAsFactors=F)

colnames(dt1) <- names(read.table('household_power_consumption.txt', header = TRUE, nrows = 1, sep = ";"))


hist(dt1$Global_active_power, xlab = "Global Active Power(kilowatts)", main = "Global Active Power", col = "Orange" )

dev.copy(png, file = "plot 1.png")
dev.off()