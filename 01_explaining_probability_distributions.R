# Very Normal
# Explainers
# 01 - Explaining Probability Distributions
# https://www.youtube.com/watch?v=k5sbE1_MDwU&list=PLEDdkzD9hUd7JJ8LH7wp8JOw5CMIb-_Do&index=1

library(tidyverse)

set.seed(1)  # reproducibility

# A single double dice roll
double_dice <- runif(n = 2, min = 1, max = 6) |> ceiling()

# 70 double dice rolls in an average Catan game
catan_rolls <- map_dbl(1:70, function(i) {
  runif(2, min = 1, max = 6) |> ceiling() |> sum()
})

(count_8s <- sum(catan_rolls == 8))

# Repeating the experiment 10000 times
count_8_distribution <- map_dbl(1:10000, function(i) {
  
  catan_rolls <- map_dbl(1:70, function(i) {
    runif(2, min = 1, max = 6) |> ceiling() |> sum()
  })
  
  sum(catan_rolls == 8)
})

# Plot the estimated probability distribution (histogram)
tibble(count8 = count_8_distribution) |> 
  ggplot(aes(x = count8)) +
  geom_histogram(bins = 40, color = "white", fill = "black")

mean(count_8_distribution)
