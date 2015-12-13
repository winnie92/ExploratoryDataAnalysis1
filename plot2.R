setwd("F:/探索性数据分析")
data <- read.csv("household_power_consumption.txt",header=T,sep=";",as.is=T,na.strings="?")
d <- subset(data,subset=(Date=="1/2/2007"|Date=="2/2/2007"))
Sys.setlocale("LC_TIME", "English")

z <- paste(d$Date,d$Time)
zz <- as.POSIXlt(z,format="%d/%m/%Y %H:%M:%S")
da <- transform(d,date=zz)

plot(da$date,da$Global_active_power,ylab="Global Active Power(kilowatts)",type="l")
dev.copy(png,file="plot2.png")
dev.off()