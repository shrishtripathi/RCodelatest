mat1
mat1<-cbind(mat1,c(10,11,78))
mat1
t(mat1)
mat1<-cbind(mat1,c(22,23,25))
mat1
t(mat1)
reshape_demo
temp_wide
temp_wide<-melt(reshape_demo,c('Country'))
temp_wide
cast(temp_wide,Country~variable,sum)
table(mtcars$cyl,mtcars$mpg)
summarise(mtcars$cyl,freq=n())
summarise(group_by(mtcars,cyl), freq=n(),n_distinct(gear))
?group_by()
temp<-group_by(mtcars,cyl)
temp
df1<-data.frame(Name=c('Ram','Laxman','Chopra','u'), Age=rep(c(1,2),2), Child=rep(1,4), stringsAsFactors = F)
df1
str(df1)
df2[[4,1]]<-'KK'
df2$name1[4]<-'KK'
df1
df1[4,1]<-as.character('u')
df1
df1[which(df1[,1]=='Ram', arr.ind=TRUE),1]<-'Sita'

which(df1[,1]=='Ram', arr.ind=TRUE)
df1
df1[2,1]<-'a'
df1





fixed <- data.frame("Type" = character(3), "Amount" = numeric(3))

# Un-factorize (as.numeric can be use for numeric values)
#              (as.vector  can be use for objects - not tested)
fixed$Type <- as.character(fixed$Type)
fixed[1, ] <- c("lunch", 100)

# Re-factorize with the as.factor function or simple factor(fixed$Type)
fixed$Type <- as.factor(fixed$Type)

levels(df2[2,1])<-'N'
df2<-data.frame(name1=c('x','u','a','b'),occu=c('m','n','p','c'),stringsAsFactors = F)
df2
df2[2,1]<-'b'
df1
merge(df1,df2)
anti_join(df1,df2, by= c('Name'='name1'))

df1[2,1]<-'dd'
df1
df2
temp$mpg<-NULL
temp
mtcars
c(temp$cyl,temp$disp)<-NULL
select(mtcars,-cyl)

reshape_demo
install.packages('xlsx')
library(xlsx)   
temp1<-melt(reshape_demo,c('Country','Dept'))
cast(temp1,Dept~variable,sum)
t(reshape_demo)
reshape_demo
??aaa
aaa<-function()
{
  c<-2+5
  return(c)
}
aaa()
getwd()
setwd('D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R')
install.packages('rJava')
read.csv('D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\bbb.csv',stringsAsFactors = F)
?read.xlsx
mat1
mat2
df1
mat2<-matrix(df1,nrow = 4)
mat2
as.matrix(df1)
data.matrix(df1, rownames.force = F)
df1
reshape_demo
group_by(mtcars,cyl)
?group_by
summarise(group_by(mtcars,cyl),am=sum(am))
mtcars
7**2
2+''
summarise(group_by(mtcars, cyl),mean(gear))
summarise(mtcars, rd(am))
rep(c(11,12,13),each=2,3)
runif(10)
arrange(mtcars,desc(cyl))
temp<-mtcars
temp<-mutate(temp,car_names<-rownames(temp))
View(temp)
mtcars[order(mtcars$cyl, decreasing = T),]
mtcars[c(1,2),]
?which
?contains
which(LETTERS=='R')
which(ll <- c(TRUE, FALSE, TRUE, NA, FALSE, FALSE, TRUE))
if(ll)
{
  "SAtty"
}
names(ll) <- letters[seq(ll)]
as.numeric('ll')
?which
?seq
mtcars
table(mtcars$cyl)
seq(c(1,2,8))
ll
which(c('a','b','c'))
which(ll)
ll
which(lm <- c(TRUE, FALSE, TRUE, NA, FALSE, FALSE, TRUE))
which(lm)
temp3<-1:10
which(temp3)
temp3
temp3[c(T,T)]
temp3[c(T,F)]
temp3[c(F,T)]
temp3[c(F,F)]

temp3[c(T,F)]
temp3[c(T,F,F)]
temp3[c(T,T,T)]
temp3[c(T,T,F,T,T,T,T,F,F,F)]
temp3[c(F,T)]
temp3[c(F,F)]
?substr
read.csv('D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\bbb.csv',stringsAsFactors = F)
?write
write.csv(mtcars,'D:\\DayWiseTracker\\Programming Concepts\\Data Science\\R\\bbb.csv',append = T)
mtcars
mtcars%>%filter(cyl>4 & cyl<8 & gear==4)%>%count()
distinct(mtcars['cyl'])
table(mtcars$cyl)
summarise(group_by(mtcars,cyl),freq=n())%>%arrange(desc(freq))%>%head(1)
summarise(group_by(mtcars,cyl),freq=n())%>%order(mtcars$cyl,decreasing = T)%>%head(1)
