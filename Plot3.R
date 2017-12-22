plot3 <- function(){
  source("LoadData.R")
  
  df <-loadData()
  
  str(df)
  
  png("Plot3.png", width=480, height=480, units="px")
  
  #draw lines plot
  plot(df$Time, as.numeric(df$Sub_metering_1),type="l", ylab="Energy sub metering")
  lines(df$Time,as.numeric(df$Sub_metering_2), col="red") 
  lines(df$Time,as.numeric(df$Sub_metering_3), col="blue")
 
  legend("topright", lty=1, col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))
  dev.off()
}
