library(SDSFoundations) 

world <- WorldBankData

brazil <- world[world$Country == 'Brazil' & world$year >= 1990, ]

brazilMobile100 <- world[world$Country == 'Brazil' & world$mobile.users >= 100000000, ]

yr <- brazil$year - 1995

tripleFit(yr, brazil$mobile.users, xlab='Year',ylab='Users')


logisticFit(yr,  brazil$mobile.users, xlab='Year',ylab='Users')

#Q2
Day <- c(0:9)
Flu <- c(73, 105, 137, 257, 367, 658, 898, 1085, 1490, 1893)

(367 - 257)/257

expFit(Day, Flu, xlab='Days', ylab='Flue Cases')
1.46 - 1   

expFitPred(Day, Flu,xlab='Days',ylab='Flu Cases', 14)
logisticFitPred(Day, Flu,xlab='Days',ylab='Flu Cases', 14)

a <- 76.64
b <- 1.46
t <- 14
a*b^t

C <- 3273.31
a <- 43.59
b <- 1.57
C/( 1 + a*b^(-t) )

4379 - 15325 
4379 - 3034

#Q3

year <- c(1,3)
wolves <- c(25,45)
linFit(year, wolves, xlab='Year', ylab='Wolves')
(45-25)/(3-1)

25 - 10

expFit(year, wolves, xlab='Year', ylab='Wolves')
1.34164 - 1
18.6339

linFitPred(year, wolves, xlab='Year', ylab='Wolves', 2002-1995)
expFitPred(year, wolves, xlab='Year', ylab='Wolves', 2002-1995)


year <- c(1,3,7)
wolves <- c(25,45,147)
linFit(year, wolves, xlab='Year', ylab='Wolves')
expFit(year, wolves, xlab='Year', ylab='Wolves')

a <- 18.58487
b <- 1.34361
t <- log10(325/a)/log10(b)


#q4

C <- 2000
a <- 152.10
b <- 2.17

log10(a)/log10(b)

t <- 2010-2001
C/(1 + a*b^(-t))
