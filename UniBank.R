Unibank<-read.csv("C:/Users/E002891/Desktop/DayWiseTracker/Programming Concepts/Data Science/UniversalBank.csv",na.strings = c(""," ","  ","NA","?"))
View(Unibank)
colsToUse<-colnames(Unibank[,c(-1,-5)])
Unibank_New<-Unibank[,colsToUse]
View(Unibank_New)

#Check and Remove NA
sum(is.na(Unibank_New))
summary(Unibank_New)

#Removing -ve from exp column
#Unibank_New$Experience<-ifelse(Unibank_New$Experience<0,"RowsToDelete",Unibank_New$Experience)
sum(Unibank_New$Experience<0)
Unibank_New<-Unibank_New[-which(Unibank_New$Experience<0),]

#Normalizing the values
hist(sqrt(sqrt(Unibank_New$Income)))

Unibank_New$Income<-sqrt(sqrt(Unibank_New$Income))
hist(log(Unibank_New$Mortgage))

#Factorizing the cols
str(Unibank_New)
for (i in 8:12) {
  Unibank_New[,i]<-as.factor(Unibank_New[,i])
}

table(Unibank_New$Education)
Unibank_New$Education<-as.factor(Unibank_New$Education)
table(Unibank_New$Family)
Unibank_New$Family<-as.factor(Unibank_New$Family)
str(Unibank_New)

#Test and Train data creation
nrows<-1:nrow(Unibank_New)
set.seed(125)
trainRows<-sample(nrows,round(0.8*length(nrows)))
trainData<-Unibank_New[trainRows,]
testData<-Unibank_New[-trainRows,]
length(trainRows)
nrow(testData)/length(nrows)



#finding the corr between variables
#No Cor as it is logistic regression

model_glm<-glm(Personal.Loan~.-Personal.Loan-Mortgage-Age-Experience,data = trainData, family = binomial(link = "logit"))
summary(model_glm)


#Predict
preds<-predict(model_glm,testData)
testData$Preds<-preds
View(testData)
testData$Preds<-ifelse(testData$Preds>0.5,1,0)
table(testData$Personal.Loan,testData$Preds,dnn = c('Actual','Preds'))
#P=0.96
#R=0.66
#FStat=0.77