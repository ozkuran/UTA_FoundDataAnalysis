library(SDSFoundations)
WR <- WorldRecords

#Subset the data

menmile <- WR[WR$Event=='Mens Mile',]
womenmile <- WR[WR$Event=='Womens Mile',] 

#Create scatterplots

plot(menmile$Year,menmile$Record,main='Mens Mile World Records',xlab='Year',ylab='World Record Time (s)',pch=16)
plot(womenmile$Year,womenmile$Record,main='Womens Mile World Records',xlab='Year',ylab='World Record Time (s)',pch=16)

#Run linear models

linFit(menmile$Year, menmile$Record)
linFit(womenmile$Year,womenmile$Record)