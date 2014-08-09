mydata <- read.table('household_power_consumption.txt', header = T, sep = ';', nrow = 100000, stringsAsFactor = F, na.strings = '?') 

powerdata <- subset(mydata, Date == '1/2/2007' | Date == '2/2/2007'  ) 

png(file = 'plot1.png')

attach(powerdata)

powerdata$n.date <- strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S')

hist(Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = 'Global Active Power')

detach(powerdata)

dev.off()

