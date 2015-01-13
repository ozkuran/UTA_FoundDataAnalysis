library(SDSFoundations) 

world <- WorldBankData

denmark <- world[world$Country == 'Denmark' & world$year >= 1990, ]
belarus <- world[world$Country == 'Belarus' & world$year >= 1990, ]

year <- denmark$year - 1990

denmarkInternetPercent <- denmark$internet.users / denmark$population 
belarusInternetPercent <- belarus$internet.users / belarus$population 

expFit(year, denmarkInternetPercent, xlab='Year', ylab='Internet Percent (DK)')

logisticFit(year, denmarkInternetPercent, xlab='Year', ylab='Internet Percent (DK)')


expFit(year, belarusInternetPercent, xlab='Year', ylab='Internet Percent (BY)')

logisticFit(year, belarusInternetPercent, xlab='Year', ylab='Internet Percent (BY)')

# %10 using internet
dk <- log(308.8345/(0.89668*10 - 1))/log(1.73124)
dk + 1990

by <- log(422.4322/(0.8987*10 - 1))/log(1.31884)
by + 1990


# %80 using internet
dk <- log(308.8345/(0.89668/0.8 - 1))/log(1.73124)
dk + 1990


by <- log(422.4322/(0.8987/0.8 - 1))/log(1.31884)
by + 1990
