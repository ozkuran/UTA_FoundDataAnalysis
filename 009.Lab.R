post <- read.csv("PostSurvey.csv")

post$hw_diff <- post$hw_hours_college - post$hw_hours_HS

hist(post$hw_diff, xlab = "Hours in college - hours in HS", main = "Difference in Homework Hours")

t.test(post$hw_hours_college, post$hw_hours_HS, paired = T, alternative = "greater")

isGreek <- post$sleep_Sat[post$greek == "yes"]
notGreek <- post$sleep_Sat[post$greek == "no"]

hist(isGreek, xlab = "Sleep on Saturday", main = "Sleep on Saturday if Greek")
hist(notGreek, xlab = "Sleep on Saturday", main = "Sleep on Saturday if not Greek")

t.test(isGreek, notGreek, alternative = "less")