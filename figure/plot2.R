#setwd("C:/Users/Ron/Documents/R/Exp_data")

pow<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)

pow2<-pow[pow$Date=="1/2/2007"|pow$Date=="2/2/2007",]

pow2$DateTime<-strptime(paste(pow2$Date,pow2$Time),format = "%d/%m/%Y %H:%M:%S")

png(file="plot2.png",width=480, height = 480)
plot(pow2$DateTime,pow2$Global_active_power, type = "l", 
     ylab = "Global Active Power (Kilowatts)", xlab="")
dev.off()