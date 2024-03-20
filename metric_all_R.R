library(tsibble)
library(dplyr)
library(feasts)

df <- data.frame(
  index = seq(as.Date("2022-01-01"), by = "1 month", length.out = 12),
  value = rnorm(12, mean = 50, sd = 10)
)


shifted_ts_data <- shift_level_max(df$value, 4)

value_at_index <- df[shifted_ts_data[2],]

plot(df$index, df$value)
lines(df$index, df$value)
points(value_at_index$index,value_at_index$value, col = "red", pch = 16)

