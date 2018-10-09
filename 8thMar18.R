libarary()
library()
class(T)
class(NA)
x<-T
x
class(T)
c<-2.6
c<-2.6
class(c)
v<-3
class(v)
z<-1
class(z)
is.numeric(z)
is.numeric(2L)
x<-2
class(x)
x<-3L
class(x)
x<-2.8
class(xL)
class(2.8L)
x=3
x<-8
x<-2.8L
y<-3.5L
x+y
class(x)
class("2")
class(2)
class(2L)
class(2.6L)
as.numeric("a")
as.character(2)
as.character(FALSE)
as.array("d",2)
as.logical("ad")
as.logical(2)
as.logical(0)
as.logical("1")
as.logical(as.integer("1"))
as.integer(3.4)
as.numeric(3)
as.numeric(3L)
x<-1+2i
class(x)
sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))
?NaN
re(x)
Re(x)
Im(x)
sqrt(x)
class(3.7L)
as.numeric(FALSE)
as.integer(FALSE)
as.numeric("hi")
as.integer("hi")
as.logical("add")
x=0+1i
sqrt(Im(x))
sqrt(x)
?vector
x<-c("a","b","d")
class(x)
class(c("a","z"))
is.vector(x)
x<-c("a",1)
class(c)
x[0]
y<-c(FALSE,"a")
class(y)
x[1]
vec1<-c(a=11,b=12,c=13)
vec1
vec1<-c(5=11,6=12,7=13)
vec1
vec2<-c("d","e","f")
names(vec1)<-vec2
vec1
vec2<-c("d","e","f","g")
names(vec1)<-vec2
?array
vec3<-c(a<-1,b<-2)
vec3
vec3<-c(a=1,b=2)
vec3

print("Hello World")
"Hello World"
23.9+16.1
"ac"+2
"ac"+FALSE
"ac"+as.character(FALSE)
install.packages("plotrix")
if(FALSE)
{
  "Satyadeep"
}
v<-charToRaw("Satya")
v
charToRaw("A")
?charToRaw
list1<-list(c(2,5,3),6.7,sin)
list1
dim(list1)
b<-1947.0
sqrt(729)
as.character(b)
b<-as.character(b)
b
getwd()
myEnv<-new.env()
myEnv
?env
?new.env
assign(b,3,envir = myEnv)
get(b,envir = myEnv)
rm(b,envir = myEnv)
get(b,envir = myEnv)
rm(b,envir = myEnv)
assign('a',3,envir = myEnv)
get('a',envir = myEnv)
rm('a',envir = myEnv)
get(a,envir = myEnv)
vec4<-c('a',1,'2')
vec4
mat1<-matrix(c(1,2,3,4),nrow = 2,ncol = 2,byrow = TRUE)
mat1
mat1[2,2]
vec5<-c(a,b,c)
vec5<-c('a','b','c')
names(vec4)<-vec5
vec4
x=5
is.vector(x)
length(x)
length(mat1)
length(vec4)
vec6<-vec4+vec5
vec5>=vec4
vec4>=vec5
vec4
vec5
c(1,2)+3
c(1,2)+c(1,2,3)
c(1,2,3,4)+c(1,2)
c(1,2)>=c(3,4,5,6)
c(1,2)+c(1,2,3,4)
x<-0:5
x
sum(x)
sum(x>1)
sum(x[x>1])
sum(x[x<3])
vec7<-1:7
sort(vec7)
sort(vec7,decreasing = FALSE)
sort(vec7,decreasing = T)
sort(vec7)[2:4]
sort(vec7)[3:4]
vec7[-2]
vec7[c(-3,-4)]
vec7[1]<-NULL
matrix(1:3,nrow = 3,ncol = 3)
matrix(1:3,nrow = 3,ncol = 2)
matrix(1:3,nrow = 3,ncol = 2,byrow = TRUE)
cbind(1:3,1:3)
rbind(1:3,1:3)
cbind(c(1:3),c(4:6))
matrix(1:3,nrow = 3,ncol = 2,byrow = TRUE,byrow=FALSE)
m1<-matrix(1:6,byrow = TRUE,nrow = 2)
rbind(m1,c(1,2))
m1
dimnames(m1)<-list(c('r1','r2'),c('c1','c2','c3'))
m1
?dimnames

provideDimnames(x, sep = "", base = list(LETTERS), unique = TRUE)

provideDimnames(m1, sep = "", base = list(LETTERS), unique = TRUE)
is.matrix(vec7)
char1<-matrix(LETTERS[1:6],nrow = 4,ncol = 6)
char1
0/0
sample(1:15,12)
m1
m1[,1]
m1[4]
m2<-matrix(1:10,nrow = 3,byrow = TRUE)
m2
m2<-matrix(1:17,nrow = 2,dimnames=list(c('r1','r2'),c('c1','c2','c3','c4','c5','c6','c7','c8','c9')))
'c1':'c10'
1:10
m2
t(m2)
t(t(m2))
m2
c(m2)
m2[-18]
vec6
vec1
vec2
vec2<-c(1,2,3,4,11,9,8,6)
vec2
vec2[-6]
vec2[4]
letters(1:24)
LETTERS(1:24)
letters(1:6)
letters[1:24]
letters[1:30]
m2<-matrix(letters[1:30],nrow = 7)
m2
v1<-c(1,2,4)
v2<-c(4,5,6)
v2>v1
v3<-v2>v1
class(v3)
class(m2)
class(v1)
char1<-character(26)
char1
char2<-as.character(26)
char2
char1[1]<-'a'
class(m2)
'
'
sort(m2)
m2
order(m2)
?order()
m2
v3<-c(1,2,34,4)
class(v3)
is.array(v3)
serach()
Search()
search()


arrange()

as.numeric("a")
as.integer("a")
as.logical("a")
as.integer(20.0)
as.logical(20.0)
as.logical(-1)
as.numeric(20L)
'a':'z'
1:5
x<-1:7
x<-1:5
x=1:5
x
x=1:3
x
