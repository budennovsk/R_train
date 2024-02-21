
# install.packages("feasts")
# install.packages("fracdiff")
# install.packages('fabletools')
# install.packages("urca")
library(feasts)

library(fabletools)
library(urca)

time_series <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 22)




hurst_coefficient <- coef_hurst(time_series)

feat_spectral_power <- feat_spectral(time_series)

box_pierce_result <- box_pierce(time_series)

# ljung_box_result <- ljung_box(time_series)

feat_pacf_result <- feat_pacf(time_series,.period = 3)
unitroot_kpss_result <- unitroot_kpss(time_series,lags = 'long')
#___________________________
# unitroot_pp_result <- unitroot_pp(time_series)
#__________________________
# unitroot_ndiffs_result <- unitroot_ndiffs(time_series)
# #__________________________
# unitroot_nsdiffs_result <- unitroot_nsdiffs(time_series)
# #__________________________

# var_tiled_mean_result <- var_tiled_mean(time_series)
# #_____________________________
# shift_level_max_result <- shift_level_max(time_series,.size=1)
#
# # shift_level_index_result <- shift_level_index(time_series)
# #___________________________
# shift_var_max_result <- shift_var_max(time_series)










print(hurst_coefficient)
print('-----------------')
print(feat_spectral_power)
print('-----------------')
print(box_pierce_result)
print('-----------------')
print(ljung_box_result)
print('-----------------')
print(feat_pacf_result)
print('-----------------')
print(unitroot_kpss_result)
print('-----------------')
print(unitroot_pp_result)
print('-----------------')
print(unitroot_ndiffs_result)
print('-----------------')
print(unitroot_nsdiffs_result)
print('-----------------')
print(var_tiled_mean_result)
print('-----------------')
print(shift_level_max_result)
# print('-----------------')
# print(shift_level_index_result)
print('-----------------')
print(shift_var_max_result)
print('-----------------')
print('-----------------')




# ”становка пакета fable (если еще не установлен)
# install.packages("fable")

# «агрузка пакета fable
# install.packages("tidyr")
library(fable)
# install.packages("tidyverse")  # Uncomment this if the package is not installed

# Your code continues here


# —оздание примера данных в формате "тонких" таблиц
# data <- data.frame(
#   Year = c(2010, 2011, 2012),
#   Q1 = c(100, 150, 200),
#   Q2 = c(120, 160, 210),
#   Q3 = c(130, 170, 220),
#   Q4 = c(140, 180, 230)
# )
#
# # ѕреобразование данных в формат "широких" таблиц
# wide_data <- spread(data, key = Year, value = Q1:Q4)
# print(wide_data)
#
# # ѕреобразование данных обратно в формат "тонких" таблиц
# long_data <- gather(wide_data, key = "Year", value = "Value", -1)
# print(long_data)
#
us_change |>
  GGally::ggpairs(columns = 2:6)