library(SDSFoundations)
WR <- WorldRecords

#Subset the data

menpole <- WR[WR$Event=='Mens Polevault',]


first6m <- menpole[menpole$Record > 6.00, ]

#Create scatterplots


menpole <- menpole[which(menpole$Year > 1969),]
plot(menpole$Year,menpole$Record,main='Mens pole World Records',xlab='Year',ylab='World Record Time (s)',pch=16)

#Run linear models

linFit(menpole$Year, menpole$Record)


h <- c(0,2,4,6)
C <- c(140,280,420,560)
plot(h,C)
linFit(h,C)

2.84 +  (9.7*0.04)

2.91 - (2.84 +  (14.5*0.04))