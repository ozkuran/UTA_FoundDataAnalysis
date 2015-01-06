library(SDSFoundations) 
animaldata <- AnimalData
head(animaldata)
table(animaldata$Sex)

plot(animaldata$Sex, main = 'Animal Gender Count', xlab = 'Genders' , ylab = 'Count');

adultAnimals <- animaldata[animaldata$Age.Intake >= 1, ]

adultDogs <- adultAnimals[adultAnimals$Animal.Type == 'Dog', ]
adultCats <- adultAnimals[adultAnimals$Animal.Type == 'Cat', ]

hist(adultDogs$Weight, main = 'Adult Dog Weight', xlab = 'Weight' , ylab = 'Count');
hist(adultCats$Weight, main = 'Adult Cat Weight', xlab = 'Weight' , ylab = 'Count');

mean(adultCats$Weight)

sd(adultCats$Weight)

1-pnorm(2.3)

mean(adultDogs$Weight)

sd(adultDogs$Weight)


dogs <- animaldata[animaldata$Animal.Type == 'Dog', ]
intakeDog <- dogs$Intake.Type
table(intakeDog)

dogStray <- table(intakeDog)[2]
dogTotal <- sum(table(intakeDog))
dogStray / dogTotal


surDogs <- dogs[dogs$Intake.Type == "Owner Surrender", ] 
returnDogs <- surDogs[surDogs$Outcome.Type == "Return to Owner", ] 

mean(returnDogs$Days.Shelter)

1 - pnorm(4.5,6.7,1.1)