
# install.packages("feasts")
# install.packages("fracdiff")
# install.packages('fabletools')
# install.packages("urca")
library(feasts)

library(fabletools)
library(urca)

time_series <- c(0.29875031, 0.25506379, 0.75053665, 0.99802279, 0.53397792,
       0.94420272, 0.39661011, 0.10668245, 0.40877383, 0.29612777,
       0.49340696, 0.65704368, 0.46105022, 0.93516051, 0.88476482,
       0.7019776 , 0.48968491, 0.13168728, 0.39701367, 0.70440154,
       0.28488552, 0.10398808, 0.90789846, 0.70905081, 0.61527643,
       0.79249891, 0.83564604, 0.483459  , 0.88118825, 0.91641901,
       0.2715511 , 0.60754536, 0.52658403, 0.53794578, 0.93766309,
       0.3051887 , 0.98343398, 0.90213121, 0.45872289, 0.81745326,
       0.76904699, 0.67789497, 0.31983389, 0.19645099, 0.6715277 ,
       0.8429733 , 0.01625279, 0.64280338, 0.44287302, 0.89808776,
       0.32147293, 0.47418481, 0.5147671 , 0.14043952, 0.7128923 ,
       0.83047635, 0.05790928, 0.29138882, 0.03804468, 0.9565441 ,
       0.66716882, 0.96420042, 0.53149428, 0.80206852, 0.37441398,
       0.35381903, 0.37826782, 0.65786213, 0.35945315, 0.90036745,
       0.98327487, 0.03042652, 0.19362329, 0.11224999, 0.04236405,
       0.22774099, 0.44679332, 0.83699037, 0.22182403, 0.49394526,
       0.92961874, 0.66721471, 0.79807902, 0.55099397, 0.98046646,
       0.58866215, 0.04551071, 0.1979828 , 0.40477363, 0.60127717,
       0.77193087, 0.41308613, 0.71005831, 0.7898695 , 0.3172602 ,
       0.97927024, 0.6496565 , 0.88099806, 0.55593769, 0.74160311)
#
# time_series <- c(100,102,105,103,104,100)
# Create a one-dimensional time series in R
# time_series <- ts(data = c(100, 102, 105, 103, 104,100), start = 1, end = 6, frequency = 1)

# Applying mean to a time series in R

# hurst_coefficient <- coef_hurst(time_series)
#
# feat_spectral_power <- feat_spectral(time_series)
#
# box_pierce_result <- box_pierce(time_series)

# ljung_box_result <- ljung_box(time_series)

# feat_pacf_result <- feat_pacf(time_series,.period = 3)
# unitroot_kpss_result <- unitroot_kpss(time_series,lags = 'long')
#___________________________
# unitroot_pp_result <- unitroot_pp(time_series)
#__________________________
# unitroot_ndiffs_result <- unitroot_ndiffs(time_series)
# #__________________________
# unitroot_nsdiffs_result <- unitroot_nsdiffs(time_series)
# #__________________________

# var_tiled_mean_result <- var_tiled_mean(time_series,.size=6)
# var_tiled_mean_result <- var_tiled_var(time_series,.size=6)




# #_____________________________
shift_level_max_result <- shift_level_max(time_series,.size=6)
#
# # shift_level_index_result <- shift_level_index(time_series)
# #___________________________
# shift_var_max_result <- shift_var_max(time_series,.size=6)
#--------------------
# shift_kl_max_result <- shift_kl_max(time_series,.size=7)

# n_crossing_points_result <- n_crossing_points(time_series)
# longest_flat_spot_result <- longest_flat_spot(time_series)
#  fd <- stat_arch_lm(time_series)
# guerrero_c <- guerrero(time_series)







# print(hurst_coefficient)
# print('-----------------')
# print(feat_spectral_power)
# print('-----------------')
# print(box_pierce_result)
# print('-----------------')
# print(ljung_box_result)
# print('-----------------')
# print(feat_pacf_result)
# print('-----------------')
# print(unitroot_kpss_result)
# print('-----------------')
# print(unitroot_pp_result)
# print('-----------------')
# print(unitroot_ndiffs_result)
# print('-----------------')
# print(unitroot_nsdiffs_result)
# print('-----------------')
# print(var_tiled_mean_result)
# print('-----------------')
# print(shift_level_max_result)
# # print('-----------------')
# # print(shift_level_index_result)
# print('-----------------')
# print(shift_var_max_result)
# print('-----------------')
# print(shift_kl_max_result)
# print('-----------------')
# print(n_crossing_points_result)
# print('-----------------')
# print(longest_flat_spot_result)
# print('-----------------')
# print(fd)
print(guerrero_c)
