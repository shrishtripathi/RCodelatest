hotel = read.csv("C:/Users/satyadeep/Desktop/Shrish/hotel2.csv")
head(hotel)
library(forecast)
library(TTR)
library(fpp2)
library(ggplot2)
library(tseries)
library(zoo)

hotel$DEMAND = as.numeric(gsub(",","",hotel$DEMAND))

hotel_ts = ts(hotel$DEMAND, start=1, end=13, frequency = 7)
#hotel_ts = ts(hotel$DEMAND, frequency=365.25/7, start=c(1987,1), end=c(1987,87))
hotel_ts

#Construct the time series and decompose the demand column
plot(hotel_ts)
decompose(hotel_ts)
plot(decompose(hotel_ts))
hotel_ts
#Insight: 
#1. From seasonal data on weekend demand is less and on mid-week demand is peak
#2. On 6th and 12nd week, the demand is very less and from 12nd week onwards the demand is incresing slowly.


#Check if the data is Stationary or non-Stationary by adf.test
hotel_diff = diff(hotel_ts,2)
adf.test(hotel_diff,alternative = c("stationary"))


#*****************Output***********************
# Augmented Dickey-Fuller Test

# data:  hotel_diff
# Dickey-Fuller = -6.0231, Lag order = 4, p-value = 0.01
# alternative hypothesis: stationary
#***********************************************

#Insight: Demand column is stationary as pValue is 0.01


#Applying Holt Winters
hotel_ts
hotel_train = hotel[1:77,]
hotel_test = hotel[78:84,]


hotel_train$DEMAND = as.numeric(gsub(",","",hotel_train$DEMAND))
hotel_test$DEMAND = as.numeric(gsub(",","",hotel_test$DEMAND))



train_ts = ts(hotel_train$DEMAND, start =1 , end =11, frequency = 7)
test_ts = ts(hotel_test$DEMAND, start =12, frequency = 7)

plot(decompose(train_ts))


train_hw = HoltWinters(train_ts, seasonal = "additive")
train_hw
train_hw_forecast = forecast(train_hw, h=7)
train_hw_forecast
plot(train_hw_forecast)


err = test_ts - train_hw_forecast$mean

###Calculating RMSE error
rmse = sqrt(mean(err**2))
rmse
#820.42


### Calculating Mape Error
mape = mean((abs(err)/test_ts)*100)
mape
#77.54521



###ACF and PACF 
par(mfrow = c(1,2))
acf(ts(diff(log10(hotel_ts))),main='ACF Demand')
pacf(ts(diff(log10(hotel_ts))),main='PACF Demand')
#Since, there are enough spikes in the plots outside the insignificant zone (dotted horizontal lines) 
#we can conclude that the residuals are not random.

require(forecast)
ARIMAfit = auto.arima(train_ts)
summary(ARIMAfit)

arimaForeCast = forecast(ARIMAfit, h=7)
plot(arimaForeCast)




err = test_ts - arimaForeCast$mean

###Calculating RMSE error
rmse = sqrt(mean(err**2))
rmse
#676.8565


### Calculating Mape Error
mape = mean((abs(err)/test_ts)*100)
mape
#63.97509



#################Forecast for Saturday onwards##########################
#By Holt Winters

train_hw_forecast1 = forecast(train_hw, h=28)
train_hw_forecast1
plot(train_hw_forecast1)

#By Arima

train_hw_forecast2 = forecast(ARIMAfit, h=28)
train_hw_forecast2
plot(train_hw_forecast2)
