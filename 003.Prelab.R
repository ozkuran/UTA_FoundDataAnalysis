#Please use MOOCs for learning 

library(SDSFoundations)
bull <- BullRiders

topTenRider <- subset(bull[1:10,], bull$YearsPro>10)

lowestBuckout <- subset(bull[which.min(bull$BuckOuts),])


# Visualize and describe the first variable of interest 
hist(bull$RidePer)
fivenum(bull$RidePer)
mean(bull$RidePer)
sd(bull$RidePer)

# Visualize and describe the second variable of interest 
hist(bull$Top10)
fivenum(bull$Top10)
mean(bull$Top10)
sd(bull$Top10)

# Create a scatterplot
plot(bull$RidePer,bull$Top10)

cor(bull$Rides,bull$Top10)


# Add line of best fit
abline(lm(bull$Top10~bull$RidePer))

# Calculate the correlation coefficient
cor(bull$RidePer,bull$Top10)

# Create a correlation matrix  
vars <- c("Top10", "RidePer")
cor(bull[,vars])

mean(bull$RidePer)


moreThan60percent <- subset(bull, bull$RidePer>=0.60)


which(bull$Top10==5 & bull$RidePer==.53)