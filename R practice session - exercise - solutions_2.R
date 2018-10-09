#Generate example dataframe with character column
train=read.csv("D:\\train_ap.csv")
str(train)



#1) convert "4+" in "Stay_in_current_city_years" variable  to a value of 4
table(train$Stay_In_Current_City_Years)
train$Stay_In_Current_City_Years1=as.character(train$Stay_In_Current_City_Years)
train$Stay_In_Current_City_Years1=ifelse(train$Stay_In_Current_City_Years1=="4+",
                                         4,train$Stay_In_Current_City_Years1)






#2)	How many rows exist with a marital_status = 0?
nrow(train[train$Marital_Status==0,])
#3) How many rows exist within the age_group of "26-35" with a marital status =0?
nrow(train[(train$Age=="26-35"& train$Marital_Status==0),])
# 4) How many distinct users exist within the age_group of "26-35" with a marital status =0?
a=train[(train$Age=="26-35"& train$Marital_Status==0),]
length(unique(a$User_ID)) 
              ##OR 
length(unique(train[(train$Age=="26-35"& train$Marital_Status==0)
                    ,"User_ID"]))


# 	How many distinct age groups exist?
length(unique(train$Age))

##	How many distinct User_IDs exist?
length(unique(train$User_ID))


seq(1,nrow(train),2)

  mean(train[seq(1,nrow(train),2),"Purchase"])
mean(df$Purchase)
##7.	Which product_ID occurs the most frequently
a=data.frame(table(train$Product_ID))
names(a)=c("prod_id","freq")
b=a[order(a$freq,decreasing = T),]
b[1,1]

##What is the average purchase rate of gender = f & gender = m?
aggregate(train$Purchase,list(train$Gender),
          mean)

###	What is the average value of purchase when gender = f or age_group = "0-17"
mean(train[(train$Gender=="F"|train$Age=="0-17"),"Purchase"])


##	What is the average value of purchase within the odd rows of train.csv?
mean(train[seq(1,nrow(train),2),"Purchase"])
## 	create a new dataset (train2) that does not have any row in train.csv that has  missing value
sum(is.na(train))
train2= na.omit(train)
sum(is.na(train2))





tarin21 <- train[rowSums(is.na(train)) < 1, ]
### 	In which city_category do most of the users within age group "0-17" live?




c=data.frame(table(train[train$Age=="0-17",
                         "City_Category"]))
d=c[order(c$Freq,decreasing = T),]
d[1,1]

###For how many rows is "Product_category_2" missing a value?
sum(is.na(train$Product_Category_2))
length(train[is.na(train$Product_Category_2),
             "Product_Category_2"])

###Which value of "Product_category_1" occurs the most whenever product_category_2 value is missing?
m=data.frame(table(train[is.na(train$Product_Category_2)
                         ,"Product_Category_1"]))
m=m[order(m$Freq,decreasing = T),]
m[1,1]

### 15, 16 are same : Of all the users that exist in "test.csv", how many of them, also exist in "train.csv"
test=read.csv("D:\\test_ap.csv") ## reading test.csv file 
m=merge(train,test,by="User_ID")##this may throw you memeory error if RAM size is less
        OR 
length(intersect(unique(train$User_ID),
                 unique(test$User_ID)))

###	What is the average purchase of customers who exist in "train.csv" but not in "test.csv"
m1=merge(train[,c(1,12)],test,by="User_ID",
         all.x=T,all.y=F)## may get memory error 
## calcluate avg purchase 
mean(m1$Purchase)

setdiff(train$User_ID,test$User_ID)

###	18.	How many distinct combinations of "user_id" & "Product_id" are available in train.csv?
length(unique(paste(train$User_ID,train$Product_ID,
                    sep="_")))
###19.	Among all the variables from "Gender" to "Product_Category_3":
##A)	Calculate the average purchase rate for all the distinct values of each variable

for(i in 3:11)
{
  print(colnames(train[i]))
  a=aggregate(train$Purchase,list(train[,i]),mean)
  print(a)
}
### output is storing in a data frame 
a=NULL
for (i in 3:11)
{
  b=aggregate(train$Purchase,list(train[,i]),mean,na.rm=T)
  b$var=colnames(train[i])
  a=rbind(a,b)
}

a=aggregate(train$Purchase,list(train$Gender),mean)


lift=(max(a$x)-min(a$x))/mean(train$Purchase)
  

##19  B)	identify the variable that has the highest lift in purchase rate
#(For example, if city has 3 distinct values (A,B,C) with average purchase rate of 	100,200,300 & overall average of 200 - lift is (300/200 - 100/200) 
 # i.e., (highest average value/ overall average purchase - lowest average value/ 	overall average purchase)

for(i in 3:11)
{
  print(colnames(train[i]))
  a=aggregate(train$Purchase,list(train[,i]),mean)
  lift = (max(a$x)-min(a$x))/mean(train$Purchase)
  print(lift)
}


c=NULL
for(i in 3:11)
{
  #print(colnames(train[i]))
  a=aggregate(train$Purchase,list(train[,i]),mean)
  lift = (max(a$x)-min(a$x))/mean(train$Purchase)
  lift$var=colnames(train[i])
  c=rbind(c,lift)
}

c=data.frame(c)
c$V1=as.numeric(c$V1)
c[which.max(c$V1),"var"]
#20.	Write a function that takes variable name as input & gives out the frequency of
#occurrence table of the distinct values of the variable

squar= function(x){ return(x**2)}


tab=function(x) {
  a=aggregate(x,list(x),length)
  return(a)
}
  

  
###21 21.	Write a function that takes variable name & creates dummy variables:


### create a placeholder a for storing dummy variable for
#variable b 

a=data.frame(id=rep("",
                    len=length(train$City_Category)))
a=NULL
### dummy function 
dummy = function(y){for(level in unique(y)){
  a[paste("dummy", level, sep = "_")] = 
    ifelse(y == level, 1, 0)
}
  return(a)
}

#example : 
b=c("m","f","m","f","m")
dummy(train$City_Category)









