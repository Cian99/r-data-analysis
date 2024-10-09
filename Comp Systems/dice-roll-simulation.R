# set random seed to ensure same random numbers each time code run
set.seed(100)

# simulate rolling 2 dice 100 times
dice1 <- sample(1:6,100,replace=T)
dice2 <- sample(1:6,100,replace=T)

# select 10 random rolls from the dice
sample(x=dice1, size=10, replace=TRUE)
sample(x=dice2, size=10, replace=TRUE)

# show how many times each number appeared
table(dice1)
table(dice2)

# add first 10 rolls from each dice
dice1[1:10] + dice2[1:10]

# frequency table of the sums of dice1 and dice2
table(dice1 + dice2)

# median of the sums
median(dice1 + dice2)

# load the tibble library
library(tibble)

# tibble that stores each roll's ID and sum
tibble_rolls <- tibble(ThrowID = 1:100, Outcome = dice1+dice2)

# load ggplot2 library for creating graphs
library(ggplot2)

# histogram to show the distribution of sums of dice1 and dice2
ggplot(tibble_rolls, aes(x=Outcome)) + geom_histogram(binwidth = 1, colour="red", alpha=0.3)