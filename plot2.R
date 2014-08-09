mydata <- read.table('household_power_consumption.txt', header = T, sep = ';', nrow = 100000, stringsAsFactor = F, na.strings = '?') 

powerdata <- subset(mydata, Date == '1/2/2007' | Date == '2/2/2007'  ) 

png(file = 'plot2.png')

attach(powerdata)

powerdata$n.date <- strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S')

plot(powerdata$n.date, Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)', main = '')

detach(powerdata)

dev.off()
