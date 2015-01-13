library(SDSFoundations) 

world <- WorldBankData

firstLowIncome <- subset(world, world$IncomeGroup == 'Low income')


aruba1970 <- subset(world, world$Country == 'Aruba' & world$year == '1970')

australiaFirstMobile <- subset(world, world$Country == 'Australia' & world$mobile.users >= 0)

# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable that is "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)

# Show how many internet users the US actually had in 2006
us_select[us_select$time == 16, c("Country", "year", "internet.mil")]

# Calculate the residuals for each model
us_select$internet.mil[us_select$time == 16] - e
us_select$internet.mil[us_select$time == 16] - l

# Look at the model fits for all available data (1990 to 2012)
expFit(us_select$time, us_select$internet.mil)
logisticFit(us_select$time, us_select$internet.mil)

# Which model fits the best?
tripleFit(us_select$time, us_select$internet.mil)

# How many internet users would the US have had in 2012 if you had used the original exponential model?
expFitPred(us_select_10$time, us_select_10$internet.mil, 22)
