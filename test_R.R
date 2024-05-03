library(slider)


x <- c(1, 2, 10, 4, 11, 12)


rollmean <- slider::slide_dbl(x, mean, .before = 2 - 1, na.rm = TRUE)


means <- abs(diff(rollmean, 2 ))



print(rollmean)
print(means)


library(slider)


x <- c(1, 2, 10, 4, 11, 12)


rollvar <- slider::slide_dbl(x, var, .before = 2 - 1, na.rm = TRUE)


vars <- abs(diff(rollvar, 2 ))



print(rollvar)
print(vars)