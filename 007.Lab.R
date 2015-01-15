library(SDSFoundations) 

survey <- StudentSurvey

hist(survey$happy)

mean(survey$happy)

sd(survey$happy)

selection5 <- rep(NA, 1000)
selection15 <- rep(NA, 1000)
selection25 <- rep(NA, 1000)

for(i in 1:1000){
  vect5 <- sample(survey$happy, size = 5)
  selection5[i] <- mean(vect5)
}


hist(selection5, xlim = c(0,100))

mean(selection5)
sd(selection5)
sd(survey$happy)/sqrt(5)

for(i in 1:1000){
  vect15 <- sample(survey$happy, size = 5)
  selection15[i] <- mean(vect15)
}


hist(selection15, xlim = c(0,100))

mean(selection15)
sd(selection15)
sd(survey$happy)/sqrt(15)

for(i in 1:1000){
  vect25 <- sample(survey$happy, size = 5)
  selection25[i] <- mean(vect25)
}


hist(selection25, xlim = c(0,100))

mean(selection25)
sd(selection25)
sd(survey$happy)/sqrt(25)