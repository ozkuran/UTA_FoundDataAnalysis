acl <- AustinCityLimits

GrammyWin <- table(acl$Grammy)
GrammyWin

GrammyWinners <- acl[which(acl$Grammy == "Y"),]

NoGrammyWinners <- acl[which(acl$Grammy == "N"),]

GenreGrammy <- table (acl$Genre,acl$Grammy)

prop.table(GenreGrammy,2)

GrammyWin[2]/sum(GrammyWin)

prop.table(GenreGrammy,1)

