library(SDSFoundations)
acl <- AustinCityLimits

TopTenGrammy <- subset(acl[1:10,],acl$Grammy == "Y")

GenreOfFirstFemaleArtistOlderThan60 <- acl[which(acl$Age > 60 & acl$Gender == 'F'), ]