#Question1
train<-read.csv("D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\Exercises\\train.csv",stringsAsFactors = F)
train
View(head(train))

#1st Approach
train[which(train$Stay_In_Current_City_Years=='4+'),7]<-5
head(train)
  
#2nd approach
temp<-filter(train,Stay_In_Current_City_Years=='4+')
temp[,7]=4
temp

#Question2
#1st app
filter(train,train$Marital_Status==0)%>%count()
#2nd app
sum(train$Marital_Status==0)
#3rd app
train[which(train$Marital_Status==0),]%>%count()

#Question3
train%>%filter(train$Age=='26-35' & train$Marital_Status==0)%>%count()
train%>%filter(train$Occupation>7,train$Occupation<20,train$Marital_Status==0)%>%count()

#Question4
train%>%filter(train$Occupation>7,train$Occupation<20,train$Marital_Status==0)%>%distinct(User_ID)%>%count()
temp<-train%>%filter(train$Occupation>7,train$Occupation<20,train$Marital_Status==0)

unique(temp['User_ID'])%>%count()

#Question5
train%>%distinct(Age)%>%count()


#Question6
unique(train['User_ID'])%>%count()
train%>%distinct(User_ID)%>%count()


#Question7
table(train$Product_ID)%>%sort(decreasing = T)%>%head(1)
train%>%summarise(group_by(Product_ID))
?select
group_by(train,Product_ID)%>%summarise(freq=n())%>%select(Product_ID,freq)%>%arrange(desc(freq))%>%head(1)%>%select(Product_ID)

#Question8
train%>%filter(Gender=='F')%>%summarise(mean(Purchase))

#Question9
train%>%filter(Gender=='F',Age=='0-17')%>%summarise(mean(Purchase))

#Question10
#1st app
train[c(T,F),]

#2nd app
train[as.logical(seq_len(nrow(train))%%2),]%>%head()



#Question11
temp<-train[which(!is.na(train$Product_Category_3)),]
temp


#Question12


train%>%filter(Age=='0-17')%>%group_by(City_Category)%>%summarise(freq=n())%>%arrange(desc(freq))%>%head(1)

#Question13
#app 1
train%>%filter(is.na(Product_Category_2))%>%count()

#app2
train[which(is.na(train$Product_Category_2)),]%>%count()
?split


#app3
train[train$Product_Category_2%in%NA,]%>%count()

#app4
sum(train$Product_Category_2%in%NA)

#Question14
#app1
train%>%filter(is.na(Product_Category_2))%>%group_by(Product_Category_1)%>%summarise(freq=n())%>%arrange(desc(freq))%>%head(1)

#app2
s=train%>%filter(is.na(Product_Category_2))%>%group_by(Product_Category_1)%>%summarise(freq=n())
s[which.max(s$freq),"Product_Category_1"]

#app3 (not working)
train%>%filter(is.na(Product_Category_2))%>%group_by(Product_Category_1)%>%summarise(freq=n())%>%sapply(freq, max)
sapply(c(1,4,6,2), max)
test<-read.csv("D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\Exercises\\test.csv",stringsAsFactors = F)
inner_join(test,train,by='')


#Question15
trainUser<-train%>%select(User_ID,Product_ID)%>%distinct()
trainUser


#Question18
train%>%distinct(User_ID,Product_ID)

unique(train$User_ID,train$prod)


#Question19
tapply(train$Purchase, train$Gender, mean)

colName1<-'User_ID'
train
nrow(train)









aaa<-function(col)
{
  a<-distinct(train[col])
  
    summarise(group_by(train,Gender),mean(train$Purchase),na.omit(train$Purchase))
  
  
  return(v)
}
aaa('Gender')


aaa<-function()
{
  # v<-NULL
  # j<-0
  # a<-distinct(train[col])
  # for(i in a)
  # {
  #   v[j]<-summarise(group_by(train,i),mean(train$Purchase))
  #   j<-j+1
  # }
  
  for(col in train$Gender:train$Product_Category_3)
  {
    a<-summarise(group_by(train,col),mean(train$Purchase))
    print(a)
  }
  
  #return(nrow(a))
}
aaa()
summarise(group_by(train,train$Product_Category_3),mean(train$Purchase))
for(colName in colnames(select(train,Gender:Occupation)))
{
  select(train,colName)
}

colnames(select(train,Gender:Occupation))
?by













i<-grep("Gender",colnames(train))
while(i<ncol(train))
{
  individual_avg(names(train)[i])
  i<-i+1
}

individual_avg<-function(colName)
{
  a<-summarise(group_by(train,train[,which(colnames(train)==colName)]),avg=mean(train$Purchase))
  print(a)
  #return(a)
}



summarise(group_by(train,Age),avg=mean(Purchase))
aggregate(train$Purchase, by=list(train$Age=='0-17'), mean)


View(train)

i<-grep("Gender",colnames(train))
while(i<ncol(train))
{
  individual_avg(i)
  i<-i+1
}

individual_avg<-function(colIndex)
{
  a<-summarise(group_by(train,train[,colIndex]),avg=max(train$Purchase))
  print(a)
  #return(a)
}


summarise(group_by(train,train$Age),avg=max(train$Purchase))

















#Question19
i<-grep("Gender",colnames(train))
while(i<ncol(train))
{
  individual_avg(i)
  i<-i+1
}

individual_avg<-function(colIndex)
{
  a<-summarise(group_by(train,train[,i]),avg=mean(Purchase))
  max_avg<-arrange(a,desc(avg))%>%head(1)
  min_avg<-arrange(a,avg)%>%head(1)
  overall_avg<-apply(a[,2],2,mean)
  lift<-(max_avg[2]%/%overall_avg)-(min_avg[2]%/%overall_avg)
  print(a)
  
  print(paste('Maximum Avg: ',max_avg[2],sep = ''))
  print(paste('Minimum Avg: ',min_avg[2],sep = ''))
  print(paste('Overall Avg: ',overall_avg,sep = ''))
  print(paste('Lift: ',lift,sep = ''))
}





#Question20
freqOfVar<-function(colName)
{
  colIndex<-grep(colName,colnames(train)) #3
  summarise(group_by(train,train[,colIndex]),freq=n())
}
freqOfVar('Gender')








#Question21
dummy<-function(colName)
{
  colIndex<-grep(colName,colnames(train))
  distinct_vals<-distinct(train,train[,colIndex])
  j<-1
  for(i in distinct_vals)
  {
    dummyCols<-paste(colName,i,sep = '-')
    #mutate(train,dummyCols[j]='NA')
    j<-j+1
  }
  dummyCols
  
}

dummy('Gender')





#Part2
dummy<-function(colName)
{
  colIndex<-grep(colName,colnames(train))
  distinct_vals<-distinct(train,train[,colIndex])
  j<-1
  for(i in distinct_vals)
  {
    dummyCols<-paste(colName,i,sep = '-')
    mutate(train,dummyCols[j]='NA')
    j<-j+1
  }
  dummyCols
  
}

dummy('Gender')

