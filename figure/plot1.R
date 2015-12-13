#setwd("C:/Users/Ron/Documents/R/Exp_data")

pow<-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
pow1<-pow[pow$Date=="1/2/2007"|pow$Date=="2/2/2007",]

png(file="plot1.png",width=480, height = 480)

hist(as.numeric(as.character(pow1$Global_active_power)), 
     # breaks="sturges", 
     # freq=1, 
     xlab = "Global Active Power (Kilowatts)", 
     col = "red"
)

dev.off()
