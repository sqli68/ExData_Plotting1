plot2 <- function(){
  source("LoadData.R")
  
  df <-loadData()

  png("Plot2.png", width=480, height=480, units="px")
  
  #draw line plot
  plot(df$Time, as.numeric(df$Global_active_power), type="l", xlab="", ylab="Global Active Power(kilowatts)")
  
  dev.off()
}
