y<-3.453
y
?options
options(digits = 6)
options(op)
search()
library(dplyr)
data()
data("mtcars")
data(mtcars)
str(mtcars)
data(mtcars)
head(mtcars)
v<-data(mtcars)
View(mtcars)
mtcars[mtcars$cyl==899 & mtcars$gear==5,]
subset(mtcars,mtcars$cyl==8 & mtcars$gear==5)
filter(mtcars,mtcars$cyl==8,mtcars$gear==5)
search()
filter(mtcars, cyl %in% c(8))
mtcars$a<-NULL
View(mtcars)
mtcars$abc<-NULL
View(mtcars)
select(mtcars,hp:cyl,contains("d"))
mtcars[,contains("d")]

c<-c(22,56,1001,321,3)
order(c)
rank(c)
sort(c)
a<-c('satty','papu','pinku','bhai','rinku')
b<-c('papu','satty')
b%in%a
a%in%b
b[which(b%in%a)]
a<-letters[1:26]
a
b<-1:26
paste(a,b,sep = "")
x<-c('apple','orange','grape',10)
x[grep('an',x)]
grep('//*',x)
?grep
if(T %in% (is.integer(5)))
{
  2+4
}
repeat(2+4)
repeat
{
  2+4
}

v<-c('Hello','Hi')
cnt<-2
repeat
{
  print(v)
  cnt<-cnt+1
  if(cnt>5)
    break
}

data()
View(CO2)
co2
cars
View(cars)
data()
data(co2)
View(co2)
filter(cars,cars$speed>20 & cars$dist>20)
head(cars)
mtcars[which(mtcars$cyl>6),]
filter(mtcars,mtcars$cyl<6)
mtcars$IndexCol<-rownames(mtcars)
mtcars
filter(select(mtcars,cyl),mtcars$cyl>6)
mtcars[order(mtcars$cyl),c('cyl','gear')]
       










a<-c(1,2,3,'a')
class(a)
a
names(a)<-c('a','b','c','d')
a
a$b
3
matrix(1:6)
matrix()
df1 <- tibble(x = 1:3, y = 3:1)
df1
cbind(1:2,9:12,3:5)
rbind(1:3,4:6,9:11)
cbind(1:2)
c<-matrix(c(4,7,3,9),byrow = T,nrow = 2)
d<-matrix(c,nrow = 3)
d
c
df1
c<-rbind(c,c(4,5))
c
d
e<-cbind(c,d)
e
e[1:3,c(2,3,4)]
dimnames(e)<-list(c('r1','r2','r3'),c('c1','c2','c3','c4'))
e
e$c1
list7<-list(c(1,2,3))
list8<-list(c(2,3,4))
list7+3
list1[3][[1]]
list1[[3]][2,2]
list1
list1[[1]]<-c(2,5,3)
list1
list_data[2][1][[1]][2,3]
list_data[[2]][5]
df1
name<-as.character(c("aaa","bbb","ccc","ddd","eee"))
age<-c(28,12,13,15,17)
child<-as.factor(c(T,F,T,F,F))
baap<-matrix(c(1,2,4,7,3),nrow = 5)
baap
df1<-data.frame(name,age,child,baap)
str(df1)
str(mtcars)
c<-as.character(c('a','b','a','a'))
length(c)
levels(c)
log(e^2)
log(e)
e
e<-NULL
?dplyr

format(round(x,digits = -2), nsmall = 7)

x<-16.768565778
round(x,digits = -2)
trunc(-6.7)
abs(2)
a
b
sort(b,decreasing = T)
sort(desc(b))
b<-c(56,78,3,9,9,9)
rank(b)
c
order(b)
name<-c('x','b','c')
age<-c(19,28,20)
child
child<-c(T,F,F)
df1
df1<-data.frame(name,age,child)
name1<-c('x','u','a','b')
occu<-c('m','n','p','c')
df2<-data.frame(name1,occu)
merge(df1,df2,by.x = 'name', by.y = 'name1', all.x = T)
df1
df2

