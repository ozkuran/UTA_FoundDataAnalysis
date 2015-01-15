library(SDSFoundations) 

survey <- StudentSurvey

hist(survey$austin)

mean(survey$austin)

sd(survey$austin)

selection10 <- rep(NA, 1000)

for(i in 1:1000){
  vect10 <- sample(survey$austin, size = 10)
  selection10[i] <- mean(vect10)
}


hist(selection10, xlim = c(0,10))

mean(selection10)
sd(selection10)
sd(survey$austin)/sqrt(10)


1 - pnorm(3.2,3.08,0.40)

pnorm(3.2,3.08,0.40) - pnorm(2.9,3.08,0.40)