# Very Normal
# Explainers
# 02 - Explaining Parametric Families
# https://www.youtube.com/watch?v=GOJkxzkN3m0&list=PLEDdkzD9hUd7JJ8LH7wp8JOw5CMIb-_Do&index=2

# DPQR functions

# R - Random - rnorm()
sample <- rnorm(n = 1000, mean = 0, sd = 1)
head(sample)
hist(sample)

# D - Density - dnorm()
dnorm(x = 0, mean = 0, sd = 1)

# Q - Quantile - qnorm()
qnorm(p = 0.5, mean = 0, sd = 1)

# P - cumulative Probability - pnorm()
pnorm(q = 0, mean = 0, sd = 1)
