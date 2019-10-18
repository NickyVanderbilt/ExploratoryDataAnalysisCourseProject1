## Exploratory Data Analysis Peer-graded Assignment Course Project 1
## Plot 3

## Create the Plot

with(Energy_data, {
  plot(Sub_metering_1 ~ dateTime, type= "l", ylab= "Global Active Power(kilowatts)", xlab= "" )
  lines(Sub_metering_2 ~ dateTime, col= "Red")
  lines(Sub_metering_3 ~ dateTime, col= "Blue")
})
legend("topright", col= c("black", "red", "blue"), lwd=c(1,1,1), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),y.intersp=0.3,x.intersp=0.8,cex=0.5 )

## Save file and close the device
dev.copy(png, "/Users/nickychu/Desktop/plot3.png", width=480, height=480)
dev.off()

