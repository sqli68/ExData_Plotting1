check.and.install.Package<-function(package_name) {
  if(!package_name%in%installed.packages()){
    install.packages(package_name)
  }
}


loadData <-function(){
  #check and load the package
  check.and.install.Package("dplyr")
  
  #load the library
  library("dplyr",character.only=TRUE)
 
  #read the data frame
  df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", 
                  col.names = colnames(read.table("household_power_consumption.txt", 
                                     sep=";", nrow = 1, header = TRUE)),
                  colClasses = "character")
  
  #filter data frame to be used for plotting later
  df <- filter(df, Date %in% c("1/2/2007","2/2/2007"))
  
  #convert character dates and times to calendar dates and times
  df <- mutate(df, Time=paste(df$Date, df$Time, sep=" "))

  df$Time <- strptime(df$Time, "%d/%m/%Y %H:%M:%S")
  df
}