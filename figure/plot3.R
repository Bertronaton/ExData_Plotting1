#setwd("C:/Users/Ron/Documents/R/Exp_data")

pow<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)

pow2<-pow[pow$Date=="1/2/2007"|pow$Date=="2/2/2007",]

pow2$DateTime<-strptime(paste(pow2$Date,pow2$Time),format = "%d/%m/%Y %H:%M:%S")



png(file="plot3.png",width=480, height = 480)

plot(pow2$DateTime,pow2$Sub_metering_1, type = "l", 
     ylab = "Energy Sub Metering", xlab="", col=2)
par(new=T)
plot(pow2$DateTime,pow2$Sub_metering_2, type = "l", 
        ylab = "Energy Sub Metering", xlab="", col=3)
par(new=T)
plot(pow2$DateTime,pow2$Sub_metering_3, type = "l", 
     ylab = "Energy Sub Metering", xlab="", col=4)
dev.off()