## Exploratory Data Analysis Peer-graded Assignment Course Project 1
## Plot 2

## Create the Plot

plot(Energy_data$Global_active_power ~ Energy_data$dateTime, type= "l",  ylab= "Global Active Power (kilowatts)", xlab= "" )

## Save file and close the device

dev.copy(png, "/Users/nickychu/Desktop/plot2.png", width=480, height=480)
dev.off()


