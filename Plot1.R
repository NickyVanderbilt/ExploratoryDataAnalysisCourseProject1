## Exploratory Data Analysis Peer-graded assignment Course Project 1
##  Read and clean the data:
Energy_data <- read.table("/Users/nickychu/Desktop/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Format date to Date Type
Energy_data$Date<- as.Date(Energy_data$Date, "%d/%m/%Y")

## Subset data from Feb.1, 2007 to Feb.2, 2007
Energy_data<- subset(Energy_data, Date>= as.Date("2007-2-1") & Date<= as.Date ("2007-2-2"))

## Remove incomplete observation
Energy_data<- Energy_data[complete.cases(Energy_data), ]

## Combine Date and Time column
dateTime<- paste(Energy_data$Date, Energy_data$Time)

## Name the vector
dateTime<- setNames(dateTime, "DateTime")

## Delete Date and Time columns
Energy_data<- Energy_data[, !(names(Energy_data) %in% c("Date", "Time"))]

## Add DateTime column
Energy_data<- cbind(dateTime, Energy_data)

## Format dateTime variable
Energy_data$dateTime<- as.POSIXct(dateTime)


## Plot 1

## Create the histogram

hist(Energy_data$Global_active_power, main= "Global Active Power", xlab= "Global Active Power (kilowatts)", col= "red")

## Save file and close the device
dev.copy(png, "/Users/nickychu/Desktop/plot1.png", width=480, height=480)

dev.off()


