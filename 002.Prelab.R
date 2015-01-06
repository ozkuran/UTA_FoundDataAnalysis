library(SDSFoundations)
animaldata <- AnimalData
topTenAdopted <- subset(animaldata[1:10,], animaldata$Outcome.Type=='Adoption')
topTenAdopted
animalOS <-  subset(animaldata ,animaldata$Intake.Type=='Owner Surrender')
animalOS[1,]


#Find the number of animals that were adopted
table(animaldata$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))


median(daystoadopt)
range(daystoadopt)

animaldata[425,]