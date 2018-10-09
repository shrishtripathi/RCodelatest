m1
m1[1,c(2,3)]
m1[c(1,2),2]
m1[c(1,2,3),1]
list1<-list(c(1,2,3),11.2,sin)
list1
list2<-list(c(1,2),list1)
list2
class(list2)
n<-c(1,2,3)
s<-c("a","b","c")
b<-c(T,T,F,F)
x<-list(n,s,b,3)
class(x)
x[42]
x[2,4]
x[2,3]
x
x[1,2]
x[1]
x[[1]]
x[[4]]<-4
x
x[[2]]<-"ta"
x
x[[4]][1]<-3
x
class(x)
x[[4]][2]<-2
x
x(2,1)
length(x)
fil<-c('first','second','third','fourth')
names(x)<-fil
x
v<-list(sam=c(2,3,4),mike=c('aa','bb'))
v
v['sam']
v[[1]]
v[1]
v<-list(sam=c(2,3,4),sam=c('aa','bb'))
v
v$sam
v$sam
v$1
v
attach(v)
sam
mike
detach(v)
sam
list_data<-list(c('Jan','Feb','Mar'),matrix(c(3,9,5,1,-2,8),nrow = 2),list('green',12.3))
names(list_data)<-c('1st Quarter','A_Matrix','A Inner List')
list_data
list_data[3]
list_data[3][[1]]
list_data[3][[1]][[1]]
list_data$A_Matrix
list_data$A_Matrix[2,3]
list_data
list_data$`A Inner List`[[1]]
list_data$A_Matrix
list1
list_data
merge.list<-c(list1,list_data)
merge.list
length(merge.list)
v1<-list_data
v1
class(v1)
v1<-list(1:5)
v1
class(v1)
v1<-unlist(list(1:5))
class(v1)
v3<-list(1:5,'Mon')
v4<-unlist(v3)
v4
class(v4)
v5<-unlist(list_data)
v5
name <- c('a','b','b')
age<-c(12,13,14)
child <- c(T,T,F)
df1<-data.frame(name,age,child)
df1
df2<-data.frame(c('a','b','c','d'),c(1,2,3,4),c(T,F,F,T))
df2
str(df2)
c<-factor('a','b')
df1
str(df1)
df1[name]
df1[1]
df1[1]
str(df1)
as.character(df1$name)
str(df1)
str(df2)
df2
mat1
mat1<-matrix(c(1,2,3,4),nrow = 3)
mat1
mat1[1]
mat1
mat1[1,]
mat1[,1]
mat1[1,c(2,3)]
mat1[1,c(2,2)]
mat1[2,c(1,2)]
rownames(mat1)<-c('r1','r2','r3')
mat1
list1<-list(c(1,2,3),mat1,3,c(T,T,F))
list1
class(list1)
list[2]
list1[2]
list[2][1]
list1[2][1]
list1[[1]]
list1[[2]]
list1[1][1]
list1[1]
list1[[1]][1]
list[[2]]
list1[[2]]
list1[[2]][1,c(1,2)]
list1
names(list1)<-c('e1','e2','e3','e4')
list1
list1$e1
list1$e1[1]
list1$e2[1,c(1,2)]
list_data
list_data[3]
list_data[3][1]
list_data[3][2]
list_data[3][[1]]
list_data[[3]][1]
list_data[2]
list_data[2][1]
list_data[2][2]
list_data[[3]][2]
class(list_data[[3]][2])
f<-list_data[[3]][2]
f
class(f)
mat1
class(mat1)
f<-mat1[1,2]
f
class(f)
typeof(f)
f<-list_data[3][[1]]
f
list_data[3][[1]][[1]]
list[[3]][[1]]
list[[3]]
list_data[[3]][[1]]
list_data$`1st Quarter`
df1
df2<-data.frame(c(1,2,3),c(T,F,F))
df2
class(df2)
type(df2)
typeof(df2)
names(df2)<-c('c1','c2')
df2
name<-c('a','b','c','d')
age<-c(12,13,14,15)
child<-c(T,F,F,T)
df3<-data.frame(name,age,child)
df3
str(df3)
simPrice <- data.frame(simId=c(1,1,2,2), 
                       crop=rep(c('apple','pear'),2), 
                       mean=rep(c(10,22),2), 
                       sd=rep(c(2,4),2), 
                       price=c(9,21,12,18))
simPrice
rep('a',2)
rep('a',1.3)
rep('1',1.6)
rep('a',1.9)
simPrice
df2
df1
df3
df4
df2
df4<-merge(df1,df2)
df4
txt1 <- "column1   column2   column3   column4
row1   0         1         0         0
row2   0         0         -1        0
row3   1         0         0         -1
"
txt1
data.frame(orderNum=1:10, customer=sample(1,3,5))
orders<-matrix(as.matrix(data.frame(orderNum=1:1000, customer=sample(100,1000,TRUE))),sparse=TRUE)
?sample
sample(1:10)
sample(1:10,replace = T)
customer=sample(100,1000,TRUE)
customer
sample(1:1000,replace = T)
sample(1:1000)
m[1]
m1
m1[2]
m1[2,]
m1[1,c(1,2)]
m1[2,c(2,3)]
m1(c(1,2),c(2,3))
m1(c(1,2),2)
m1
m1[c(1,2),c(2,3)]
m1[c('r1','r2'),c('c2','c3')]
list1<-list(c(2,5,3),21.3,matrix(c(1,2,4,5,6,7,5),nrow = 3))
list1
list2<-list(c(1,2))
list3<-list(c(5,6))
class(list2)
list4<-list2+list3
list1[[1]][1]
class(list1[[1]][1])
m1
m2
m1+m2
m3
m3<-matrix(c(1,2,3,4,5,6),nrow = 2)
m1+m3
l1<-list(matrix(1,3,3),matrix(2,3,3))
l2<-list(matrix(3,3,3),matrix(4,3,3))
l1+l2
l1[[1]]
l1[[2]]
l1[[1]][c(1,2),c(2,3)]
l3<-list(l1[[1]]+l2[[1]],l1[[2]]+l2[[2]])
l3
list1
list1[[3]][3,2]
list1[[3]]
list1[1]
list5<-list(c(1,2,3,4,5))
list5[[1]][4]
list5[1][[1]][1]
list5[[1]][1]
list5[1]
list5[[1]]
list5[[5]][1]
list5[[1]][1]
names(list5)<-'e1'
list5
list5[1]
list5[[1]]
attach(list5)
e1
detach(list5)
e1
list_data


















list_data
list_data$A_Matrix[2,1]
list_data[[2]][2,1]
list_data[2][[1]][2,1]
list_data[3]
list_data[3][[1]][1]
list_data[[1]]
list_data[[3]][2]





list_data[1]
list_data[[1]]







list_data[3][[2]]
list_data[[3]][1]
list_data
list1
merge(list_data,list1)
merge(c(1,2),3)
c(list_data,list1)
name<-c('a','b','c')
age<-c(12,13,14)
child<-c("Male","Female","Male")
df4<-data.frame(name,age,child)
df4
class(df4)
typeof(df4)
names(df4)<-c('d','e','f')
df4
str(df4)

c<-c('a','b','c','a')
class(c)
d<-as.factor(c)
d
is.factor(d)
class(d)
typeof(d)
length(c)
