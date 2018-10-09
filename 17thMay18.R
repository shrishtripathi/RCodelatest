train<-read.csv("D:/DayWiseTracker/Programming Concepts/Data Science/DayWiseClasses/17thMay18_LinRegPracticals/train.csv",na.strings = c(""," ","  ","?","NA"))

sum(is.na(train$Customers))

summary(train)
str(train$Customers)
train<-head(train,30000)




nrow(train)
View(train)
table(train$Open)
summary(train)

#Exploring lubridate
library(lubridate)
.libPaths()
?lubridate
wday(as.Date(train$Date[1]))
weekdays(as.Date(train$Date[1]))
yday(train$Date[1])




#Remove the rows from dataset where open is 0 (store is closed)
train<-train[-which(train$Open==0),]
summary(train)
nrow(train)


str(train)
table(train$SchoolHoliday)



View(filter(train,SchoolHoliday==1))
cor(train[,-c(2,3,8,6,7,9)])

#Checking month end has any effect on sales
monthEnd<-c()
for(i in 1:length(train$Date))
{
  monthEnd<-c(monthEnd,ifelse(day(train$Date[i])>=25,1,0))
}
length(monthEnd)
train$isMonthEnd<-monthEnd

table(train$DayOfWeek)



weekend<-c()
for(i in 1:length(train$DayOfWeek))
{
  weekend<-c(weekend,ifelse(train$DayOfWeek[i]>5,1,0))
}
train$isWeekend<-weekend



yearEnd<-c()
for(i in 1:length(train$Date))
{
  yearEnd<-c(yearEnd,ifelse(month(train$Date[1])>=11,1,0))
}
length(yearEnd)
train$isYearEnd<-yearEnd
train[month(train$Date)>=11,]


summary(train)
head(train[which(train$isWeekend==1),])

train$DayOfWeek<-as.factor(train$DayOfWeek)

train$isYearEnd<-NULL
train$StateHoliday<-NULL
train$Open<-NULL
train$Store<-NULL


#Did not appy log or sqrt on store as it is ID column only
hist(train$Customers)
hist(sqrt(train$Customers))
train$Customers<-sqrt(train$Customers)
summary(train)

#Handling Outliers

plus3Sigma<-mean(train$Customers)+3*sd(train$Customers)
minus3Sigma<-mean(train$Customers)-3*sd(train$Customers)
summary(train$Customers)
plus3Sigma
minus3Sigma


#In imputation dont put NA values instaed remove those rows
#for(i in 1:length(train$Customers))
#{
#  if((train$Customers[i]>plus3Sigma) | (train$Customers<minus3Sigma))
#    train$Customers[i]<-NA
#}
train = train[(train$Customers >minus3Sigma & train$Customers <plus3Sigma),  ]
nrow(train[(train$Customers >minus3Sigma & train$Customers <plus3Sigma),  ])
head(train[which(train$Customers>plus3Sigma),])
hist(train$Customers)

nrow(train)
summary(train)
str(train)

train$Date<-NULL
summary(train)

.libPaths()
library(DMwR)
dim(train)
train1<-knnImputation(data = train, k=5)
#Error in knnImputation(data = train, k = 5) : Not sufficient complete cases for computing neighbors.
#It comes if there are invalid cols like all the values in the col are 0. Drop them and try again
summary(train)


summary(sqrt(train$Customers))

#Constructing training and test data sets
totalRows<-1:nrow(train)
set.seed(123)
trainSetRows<-sample(totalRows,round(0.8*length(totalRows)))
length(trainSetRows)/length(totalRows)
trainSet<-train[trainSetRows,]
testSet<-train[-trainSetRows,]
nrow(trainSet)/nrow(train)
nrow(testSet)/nrow(train)


#Applying LM and constructing model

#Model1 65.05%
str(trainSet)
model1<-lm(Sales~Customers,data=trainSet)
summary(model1)

#Model2 (No change on R sq as Open is NA mostly)
model2<-lm(Sales~Customers+Open, data=trainSet)
summary(model2)
which(is.na(train$Open))

#Model3 71.4%
model3<-lm(Sales~Customers+DayOfWeek+Promo, data=trainSet)
summary(model3)

#Model4 (No Effect on R sq)
model4<-lm(Sales~Customers+DayOfWeek+Promo+isWeekend+isMonthEnd, data=trainSet)
summary(model4) 

#Model5 70.69%
model5<-lm(Sales~Customers+DayOfWeek+Promo+SchoolHoliday+isWeekend+isMonthEnd, data=trainSet)
summary(model5) 

#Hence Model 5 is optimal
#Prediction phase
preds<-predict(model5, testSet)
testSet$Preds<-preds
View(testSet)


#Calculate RMSE
sqrt(mean((testSet$Preds-testSet$Sales)**2))

plot(model5)



#dayOfMonth,WkOfMonth, weekend,monthend,monthstart,holidayseason,yearEnd