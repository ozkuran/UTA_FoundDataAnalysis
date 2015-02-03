library(SDSFoundations)
bull <- BullRiders

# Question 1

bull$EarningPerEvent <- bull$Earnings / bull$Events
bull$LogEarningPerEvent <- log(bull$Earnings / bull$Events)

hist(bull$EarningPerEvent, main='Histogram of Bull Rider EarningPerEvent',xlab='EarningPerEvent')
hist(bull$LogEarningPerEvent, main='Histogram of Bull Rider EarningPerEvent',xlab='LogEarningPerEvent')

LogEarningPerEvent <- bull$LogEarningPerEvent

meanOfLogEarningPerEvent <- mean(LogEarningPerEvent)
SDOfLogEarningPerEvent <- sd(LogEarningPerEvent)

n <- length(LogEarningPerEvent)
se <-  SDOfLogEarningPerEvent/sqrt(n)

Q1tt <- t.test(bull$LogEarningPerEvent)
Q1lower <- Q1tt$conf.int[1]
Q1upper <- Q1tt$conf.int[2]

Q1lower2 <- exp(round(Q1lower,2))
Q1upper2 <- exp(round(Q1upper,2))

# Question 2

h0 <- 28.5
Q2sample <- c(29.4,29.0,28.4,28.8,28.9,29.3,28.5,28.2)

Q2mean <- mean(Q2sample)
Q2sd <- sd(Q2sample)

Q2length <- length(Q2sample)
Q2StandardError <-  Q2sd/sqrt(Q2length)

Q2tt <- t.test(Q2sample, Q2mean=h0)

# Question 3

h0 <- 91

n3 <- 25
mu3 <- 93.6
sig3 <- 7.8

se3 <- sig3/sqrt(n3)
t3 <- (mu3-h0)/se3
c3 <- qt(.95, df=n3-1)

mu3b <- 95
t3b <- (mu3b-h0)/se3

# Question 4

n4 <- 12
c4 <- round(qt(.95,df=n4-1),3)

mu4 <- 42.6
sig4 <- 5.3
se4 <- sig4/sqrt(n4)

ci4 <- round(mu4 + c(-1,1)*se4*c4,3)

c4b <- round(qt(.975,df=n4-1),3)
ci4b <- round(mu4 + c(-1,1)*se4*c4b,3)
