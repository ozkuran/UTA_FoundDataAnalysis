library(SDSFoundations)
WR <- WorldRecords

UniqueEvents <- c(unique(WR$Event))
UsainsFirst100mRecord <- WR[which(WR$Event =="Mens 100m" & WR$Athlete == "Usain Bolt"),]

WomensMileUnder260s <- WR[which(WR$Event == "Womens Mile" & WR$Record < 260),]

#Invoke the SDSFoundataions package
library(SDSFoundations)

#Subset the data

menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots

plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models

linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)