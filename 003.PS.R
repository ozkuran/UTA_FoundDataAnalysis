bull$RidesPerEvent <- bull$Rides/bull$Events
hist(bull$RidesPerEvent)
fivenum(bull$RidesPerEvent)

plot(bull$RidesPerEvent, bull$Place)
abline(lm(bull$Place ~ bull$RidesPerEvent),xlab='Rides per Event',ylab='Yearly Ranking')
cor(bull$RidesPerEvent, bull$Place)

Mints <- c(30,45,180,95,130,140,30,80,60,110,0,80)
fivenum(Mints)
Grade <- c(74,68,87,90,94,84,92,88,82,93,65,90)

cor(Mints,Grade)

80/180
plot(Mints, Grade, xlab='Minutes', ylab='Grade')
Mints_nooutlier <- c(30,45,180,95,130,140,80,60,110,0,80)
Grade_nooutlier <- c(74,68,87,90,94,84,88,82,93,65,90)
cor(Mints_nooutlier, Grade_nooutlier)