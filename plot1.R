setwd("F:/探索性数据分析")
data <- read.csv("household_power_consumption.txt",header=T,sep=";",as.is=T,na.strings="?")
d <- subset(data,subset=(Date=="1/2/2007"|Date=="2/2/2007"))

hist(d$Global_active_power,xlab="Global Active Power(kilowatts)",main="Global Active Power",col="red")
dev.copy(png,file="plot1.png")
dev.off()
