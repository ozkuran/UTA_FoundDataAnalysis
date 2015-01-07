hist(bull$Earnings)

mean(bull$Earnings)

fivenum(bull$Earnings)
which.max(bull$Earnings)


plot(bull$RidePer,bull$Earnings,xlab='Ride Percentage',ylab='Earning')

cor(bull$RidePer,bull$Earnings)

abline(lm(bull$Earnings ~ bull$RidePer),xlab='Ride Percentage',ylab='Earning')


plot(bull$CupPoints,bull$Earnings,xlab='Cup Point',ylab='Earning')

abline(lm(bull$Earnings ~ bull$CupPoints),xlab='Cup Point ',ylab='Earning')

cor(bull$Earnings,bull$CupPoints)

nooutlier <-bull[-1,]
plot(nooutlier$RidePer,nooutlier$Earnings,xlab='Ride Percentage',ylab='Earning')
abline(lm(bull$Earnings ~ bull$RidePer),xlab='Ride Percentage',ylab='Earning')
cor(nooutlier$RidePer,nooutlier$Earnings)


plot(nooutlier$CupPoints,nooutlier$Earnings,xlab='Cup Point',ylab='Earning')
abline(lm(nooutlier$Earnings ~ nooutlier$CupPoints),xlab='Cup Point',ylab='Earning')
cor(nooutlier$Earnings,nooutlier$CupPoints)