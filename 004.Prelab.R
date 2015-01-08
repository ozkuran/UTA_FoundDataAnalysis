library(SDSFoundations)
acl <- AustinCityLimits

TopTenGrammy <- subset(acl[1:10,],acl$Grammy == "Y")

GenreOfFirstFemaleArtistOlderThan60 <- acl[which(acl$Age > 60 & acl$Gender == 'F'), ]

# Create tables of marginal distributions
genre <- table(acl$Genre)
genre
gender <- table(acl$Gender)
gender

# Create contingency table 
twoway <- table (acl$Gender,acl$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, given the artist’s gender
prop.table(twoway,1)

MaleArtists <- acl[which(acl$Gender == 'M'),]

FemaleArtists <- acl[which(acl$Gender == 'F'),]

JazzPerformers <- acl[which(acl$Genre == "Jazz/Blues"),]

MaleJazzPerformers <- acl[which(acl$Genre == "Jazz/Blues" & acl$Gender == 'M'),]

RockPerformers <- acl[which(acl$Genre == "Rock/Folk/Indie"),]

prop.table(genre)

prop.table(twoway,1)