# a <- 3
# b <- 4
# e <- a + b^2
# r <- 'dddd'
#
# y <- list(a, b, e, r)
#
# print(class((c(11,2,3,4))))
#
#
# class(rock)
# b <- 4L
# class(b)
# vect_1 <- vector(mode = 'numeric', length = 10)
# vect_2 <- c(1,3,5,7,9)
# vect_2[3:4]
#

# sum_array <- function(a){
#   return (sum(a))
#   # Your code
# }
# sum_array(c())

# get_even_numbers <- function(vec){
#   indx <- which(vec %% 2 == 0)
#   return (vec[indx])
#
# }
# get_even_numbers(c(2,4,5,6))

# solution <- function(nums) {
# sort(nums)
# }
# solution(c(1, 2, 3, 10, 5))
# solution(NULL)

# sum_digits <- function(number){
#   sum_num <- 0
#   number_split <- strsplit(as.character(number), "")[[1]]
#   print(number_split)
#     for (i in number_split){
#       if (i == "-"){
#         next
#       }
#       sum_num <- sum_num + as.numeric(i)
#     }
#   return (sum_num)
# }
# sum_digits(-32)
# two_oldest_ages <- function(ages){
#   srt <- sort(ages, decreasing = TRUE)
#   len_str <- length(srt)
#   seq_n <- (seq(1, len_str))
#   return (sort(srt[seq_n[1:2]]))
# }
#
# two_oldest_ages(c(1, 5, 87, 45, 8, 8))

# number_to_string <- function(n) {
#
#   return (toString(n))
# }
#
# number_to_string(c(123))
#
# maps <- function(v) {
#   return (v * 2)
# }
# maps(c(1, 2, 3))

#
# grow <- function(arr) {
#   return (prod(arr))
# }
# grow(c(1, 2, 3))
#
# array_plus_array <- function(vec1,vec2){
#   return (sum(vec1) + sum(vec2))
# }
#
# array_plus_array(c(1, 2, 3), c(4, 5, 6))
# summation <- function(n) {
#   return (sum(seq(1, n)))
# }
# summation(8)


library(catboost)
library(ggplot2)

set.seed(1)

data <- data.frame(value = runif(100))


first_value <- data$value[1]
print(first_value)

data_diff <- diff(data$value)
print(tail(data_diff))

lags <- 52
steps <- 52

X <- matrix(nrow = length(data_diff), ncol = lags)

print(dim(X))

for (i in 1:lags) {
  X[, i] <- data_diff[(i + 1):(length(data_diff) + i)]
}
colnames(X) <- paste0("lag_", 1:lags)

X_clean <- X[complete.cases(X), ]
print(dim(X_clean))

# y <- data_diff[(lags + 1):length(data_diff)]
#
# pool <- catboost.load_pool(data.frame(X, y))
#
# model <- catboost.train(pool)
#
# predictions <- numeric(steps)
# current_input <- tail(X, 1)
#
# for (i in 1:steps) {
#   current_prediction <- catboost.predict(model, current_input)
#   predictions[i] <- current_prediction
#
#   current_input <- rbind(current_input[-1, ], current_prediction)
# }
#
# pred_diff <- predictions
#
# pred_prob <- cumsum(pred_diff) + first_value
#
# pred_index <- seq(length(data$value) + 1, length(data$value) + steps)
#
# pred_series <- data.frame(index = pred_index, value = pred_prob)
#
# ggplot() +
#   geom_line(data = data, aes(x = seq_along(value), y = value), color = "blue", linetype = "solid") +
#   geom_line(data = pred_series, aes(x = index, y = value), color = "red", linetype = "dashed") +
#   labs(x = "Time", y = "Value", title = "Actual values vs Predicted values") +
#   theme_minimal()