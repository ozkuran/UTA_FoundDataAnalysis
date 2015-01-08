acl <- AustinCityLimits

FacebookLikesMoreThan100K <- acl[which(acl$Facebook.100k == 1),]

FBLMT100KAgeGroup <- table(acl$Age.Group, acl$Facebook.100k)
FBLMT100KAgeGroup

prop.table(FBLMT100KAgeGroup,1)


Freshman <- c(5,10,9,10,6)
Sophomore <- c(8,10,9,7,4)
Junior <- c(11,5,4,4,2)
Senior <- c(9,9,4,2,0)

Freshman[1]

Freshman[1]+Sophomore[1]+Junior[1]+Senior[1]/ sum(c(Freshman,Sophomore,Junior,Senior))

sum(c(Junior,Senior)) / sum(c(Freshman,Sophomore,Junior,Senior))

Freshman[5] / sum(Freshman)

Sophomore[2] / sum(c(Freshman,Sophomore,Junior,Senior))

Freshman[5]+Sophomore[5]+Junior[5]+Senior[5]
sum(c(Freshman,Sophomore,Junior,Senior))

sum(Senior)

Senior[4]

Freshman[4]+Sophomore[4]+Junior[4]+Senior[4]

M <- 35+25+32.5+7.5

W <- 12+34+30+24

(12*50+35*80)/130

12/((12*50+35*80)/130)