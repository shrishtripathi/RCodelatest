install.packages('sqldf')
library(sqldf)
sqldf('SELECT * FROM mtcars WHERE gear==4')
sqldf('select gear, count(gear) as occurances from mtcars group by gear')
m1
pivot(m1)
install.packages('reshape')
library(reshape)
reshape_demo<-data.frame(Country=c('India','US','India','US','UK'), Dept=c('IT','IT','FI','IT','FI'),Expense=c(1234,2345,3456,4567,4567),No_Months=c(2,3,4,5,6))
reshape_demo
t(reshape_demo)
melt(reshape_demo)
temp_wide<-melt(reshape_demo,c('Country','Dept'))


reshape_demo1<-data.frame(Country=c('India','US','India','US','UK'), Dept=c('IT','IT','FI','IT','FI'),Expense=c('1234','2345','3456','4567','4567'),No_Months=c('2','3','4','5','6'))
reshape_demo1
melt(reshape_demo1)
melt(reshape_demo1,c('Country'))
temp_wide
cast(temp_wide,Country~variable, sum)



#User Defined Functions
?aaa
aaa<-function(){
  print('Satty')
}
aaa()

aaa1<-function(a,b=0){
  c=a+b
  return(c)
}

aaa1(5)

aaa2<-function(a,b=0){
  c=rep(a,b)
  return(c)
}

aaa2('a',2)


aaa3<-function(a){
  b<-a*a
  return(b)
}

aaa3(5)



?aaa3
getwd()
library(xlsx)
a<-read.xlsx('SoftwareCompare-Testdata - Copy_Result_10-9-2017 1.35.49 PM')
?xlsx
x<-matrix(rnorm(30),nrow = 5,ncol = 6)
x
m1
apply(m1, 2, sum)

myList<-list(1:5,20:25)
myList
lapply(myList,median)
nrow(mtcars)
ncol(mtcars)
temp<-mtcars
temp
temp$new<-temp$mpg+temp$IndexCol
str(temp)
temp<-mutate(temp,new_col=mpg+cyl)
str(temp)
unique(temp$drat)
distinct(temp,temp$drat)
unique(temp[c('cyl','gear')])
aggregate(mtcars,by=list(mtcars$cyl),FUN = sum,na.omit=T)
summarise(mtcars,new_mean=mean(cyl))
View(group_by(mtcars,cyl))
table(mtcars$cyl)
summarise(group_by(mtcars,cyl),freq=n(),distinct(gear))
inner_join(df1,df2,by='name')
mtcars%>%select(cyl,gear)%>%head()
mtcars%>%head()%>%select(cyl,gear)
reshape_demo
library(xlsxjars)
write.csv(mtcars,"mtcars.csv")
reshape_demo
melt(reshape_demo)
melt(reshape_demo,c('Country','Dept'))
melt(reshape_demo)
temp_wide
cast(temp_wide,Country~variable,sum)
3456+1234

vec1
rank(vec1)
order(vec1)
vec2
vec3<-c(99,3,10,104,34)
sort(vec3)
order(vec3)
sports<-c('Hockey','Football')
allSportsMatrix<-matrix(c('Hockey','Football','Cricket','Kabbaddi','Luddu','Squash','Badminton','Tennis'),nrow = 4)
sports %in% allSportsMatrix
allSportsMatrix
allSportsMatrix %in% sports
sports
b<-c('1','2','3','4','5')
paste(sports,b,sep = '_')
c(grep('Foot',sports),grep('Foot',sports,value = T))

substring("Football",1,4)
if(T %in% c(F,F,F))
{
  print("Satty")
}
data()
data("mtcars")



mtcars[mtcars$cyl==4 | mtcars$gear==4,]



mtcars
filter(mtcars, mtcars$cyl %in% c(6,10))
d
head(c)
mtcars[mtcars$cyl%in%c(6,10)]
temp<-mtcars
temp$new_col<-rownames(mtcars)
df1
filter(df1,age==28)
rownames(df1)<-c('r1','r2','r3')
colnames(df1)<-c('c1','c2','c3')
mtcars[,c('cyl','mpg','wt','gear')]
filter(select(mtcars,'mpg','cyl','wt','gear'),gear==3)
select(mtcars,hp:mpg,wt)
unique(select(mtcars,'cyl'))

select(mtcars,contains('cy') , contains('ge'))
select(mtcars,4)
mtcars(contains('ge'))
?contains
filter(mtcars,cyl==8)
mtcars[order(mtcars$cyl),c('mpg','gear')]
arrange(select(mtcars,cyl,gear),cyl)
mutate(mtcars,new_one<-c(5,6,7))
sum(10,20,NA)



name<-c('Ram','Laxman','Chopra','KK')
age<-c(1,2)
child<-1
df1<-data.frame(name,age,child)
df1


?aggregate
aggregate(mtcars,by=list(mtcars$cyl), FUN = min())
read.table("D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\abc.txt", sep = ',',stringsAsFactors = T)


