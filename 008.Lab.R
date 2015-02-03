library(SDSFoundations)
bull <- BullRiders

h0 <- .5
ridePercentage <- bull$RidePer

averageRidePercentage <- mean(ridePercentage)
standardDeviationRidePercentage <- sd(ridePercentage)

n <- length(ridePercentage)
standardError <-  standardDeviationRidePercentage/sqrt(n)

hist(ridePercentage, main='Bull Rider Ride Percentage',xlab='Percentage')

tstats <- t.test(ridePercentage, mu=h0, alternative=c("two.sided"))
