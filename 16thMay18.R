#######################
#Titanic Data Set
#######################
#survival:	Survival	0 = No, 1 = Yes
#pclass:	Ticket class	1 = 1st, 2 = 2nd, 3 = 3rd
#sex:	Sex	
#Age:	Age in years	
#sibsp:	# of siblings / spouses aboard the Titanic	
#parch:	# of parents  / children aboard the Titanic	
#ticket:	Ticket number	
#fare:	Passenger fare	
#cabin:	Cabin number	
#embarked:	Port of Embarkation	C = Cherbourg, Q = Queenstown, S = Southampton


#######################
#K Means Clustering
#######################
Titanic_Data<-read.csv("D:/DayWiseTracker/Programming Concepts/Data Science/ML/titanic.csv", na.strings = c(""," ","  ","?","NA"))
View(Titanic_Data)
table(Titanic_Data$home_dest)

Titanic_Data<-Titanic_Data[,-c(2,8,9,12,13)]

table(Titanic_Data$age)
str(Titanic_Data)
Titanic_Data$pclass<-as.factor(Titanic_Data$pclass)

Titanic_Data$age<-ifelse(Titanic_Data$age<20,"0-20",ifelse(Titanic_Data$age<40,"20-40",ifelse(Titanic_Data$age<60,"40-60",ifelse(Titanic_Data$age<80,"60-80","80-100"))))

summary(Titanic_Data)
Titanic_Data<-knnImputation(Titanic_Data,k = 5)
Titanic_Data$parch<-as.numeric(Titanic_Data$parch)

str(Titanic_Data)



Titanic_Dummies<-dummy.data.frame(Titanic_Data[,c(1,2,3,7)])
Titanic_Dummies<-Titanic_Dummies[,-c(3,5,10,13)]

View(Titanic_Dummies)

withInByBetween<-c()
for(i in 2:15)
{
  clust<-kmeans(x=Titanic_Dummies,centers = i)
  withInByBetween<-c(withInByBetween,mean(clust$withinss/clust$betweenss))  
}


plot(2:15,withInByBetween,type="l")

clusters<-kmeans(x=Titanic_Dummies,centers = 6)
Titanic_Dummies$clusters<-clusters$cluster

clusters$centers

rbind(1:ncol(Titanic_Data),colnames(Titanic_Data))

##########################
#Hierarchical Clustering
##########################