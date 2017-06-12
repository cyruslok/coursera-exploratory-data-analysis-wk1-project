# Get Data Set
dataFile <- "household_power_consumption.txt"
# Read Data Set
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot Data
global_Active_Power <- as.numeric(subSetData$Global_active_power)
#Set Plot Label And Output Format
png("plot1.png", width=480, height=480)
hist(global_Active_Power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()