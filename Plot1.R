plot1 <- function(){
  source("LoadData.R")

  df <-loadData()
  
  png("Plot1.png", width=480, height=480, units="px")
  
  hist(as.numeric(df$Global_active_power), main="Global Active Power", col="red",
       xlab="Global Active Power(kilowatts)", ylab="Frequency")
  
  dev.off()
}
