plot3 <- function(){
  source("LoadData.R")
  
  df <-loadData()
  
  str(df)
  
  png("Plot4.png", width=480, height=480, units="px")
  
  #set two row and two columns for output
  par(mfrow=c(2,2))
  
  #draw line plot for Global Active power
  plot(df$Time, as.numeric(df$Global_active_power), type="l", xlab="", ylab="Global Active Power")
  
  #draw line plot for Voltage
  plot(df$Time, as.numeric(df$Voltage), type="l", xlab="datetime", ylab="Voltage")
  
  #draw lines plot for Sub_metering
  plot(df$Time, as.numeric(df$Sub_metering_1),type="l", xlab="", ylab="Energy sub metering")
  lines(df$Time,as.numeric(df$Sub_metering_2), col="red") 
  lines(df$Time,as.numeric(df$Sub_metering_3), col="blue")
  
  #draw line plot for global reactive power
  plot(df$Time, as.numeric(df$Global_reactive_power), type="l", xlab="datetime", ylab="Global_rective_power")
  
  dev.off()
}
