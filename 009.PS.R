post <- read.csv("PostSurvey.csv")

post$hw_diff <- post$hw_hours_college - post$hw_hours_HS

isNurse <- post$hw_diff[post$major == "Nursing"]
isBio <- post$hw_diff[post$major == "Biology"]

hist(isNurse, xlab = "Difference in hours studying college - hs", main = "Hours for Nurses")
hist(isBio, xlab = "Difference in hours studying college - hs", main = "Hours for Biology")

t.test(isNurse, isBio)
