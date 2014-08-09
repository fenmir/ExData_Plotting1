mydata <- read.table('household_power_consumption.txt', header = T, sep = ';', nrow = 100000, stringsAsFactor = F, na.strings = '?') 

powerdata <- subset(mydata, Date == '1/2/2007' | Date == '2/2/2007'  ) 

png(file = 'plot3.png')

attach(powerdata)

powerdata$n.date <- strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S')


plot(powerdata$n.date, Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering', main = '')
lines(powerdata$n.date, Sub_metering_2, col = 'red')
lines(powerdata$n.date, Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = c(1, 1, 1), col = c('black', 'red', 'blue'))


detach(powerdata)

dev.off()
