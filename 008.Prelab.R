library(SDSFoundations)
bull <- BullRiders

# Summarize the bull rider weights
mean(bull$Weight)
sd(bull$Weight)

# Visualize the weight distribution
hist(bull$Weight, main='Histogram of Bull Rider Weights',xlab='Weight (lbs)')

# Run the single sample t-test
t.test(bull$Weight, mu=190)