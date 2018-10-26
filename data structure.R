#Data Structures in slides
#control+enter when you are in the line to execute
#vectors-----
x=1:10 #create seq of nos from 1 to 10
x
x1<-1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)
x2a = c(2L, 4L, 7L)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
LETTERS[seq(1,26,2)]
(x3b=c('a',"Harshitha","4"))
class(x3b)

(x4=c(T, FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)

#access elements
(x6=seq(0,100,by=3))
ls() #variables in my environment
x6
length(x6)
x6[20]
x6[3] #access 3rd element

x5[seq(1, length(x6),2)]
#[1]4
x6[c(2,4)]   #access 2nd and 4th element
x6[-1]       #access all but 1st element
x6
x6[-c(1:10),15:20]
x6[c(2, -4)] #cannot mix positive and negative integers
#Error in x[c(2, -4)] :only 0's may be mixed with negative subscripts
x6[c(2,4, 3.54)]  #real numbers are trunacted to integers
x6[-c(1,5,20)]
x6
length(x6)
x6[-(length(x6)-1)]
(x7=c(x6,x2))

#sort, order
set.seed(123)
(x6= sample(1:20))
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing = T)
rev(x6)

seq(-3,10,by=.2)
(x = -3:2)
x[2] <- 10; x        # modify 2nd element
#[1] -3  0 -1  0  1  2
x
x < 0
x[x<= 1 & x >= -1] = 100; x   # modify elements less than 0
x


x = x[1:4]; x      # truncate x to first 4 elements
#[1] 5 0 5 0


#delete vector
(x = seq(1,5, length.out = 15))
#[1] 1.000 1.444 1.889 2.333 2.778 3.222 3.667 4.111 4.556 5.000
x=NULL
x
#NULL
x[4]
#NULL
#Matrix-----
100:111
(m1 = matrix(1:12, ncol=4))
(m2 = matrix(1:15, ncol=3, byrow=T))
x=101:124
length(x)
(m3=matrix(x, ncol=6))
class(m3)
attributes(m3)
dim(m3)
# access elements of matrix
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]
#names of cols and rows
m1

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C',1:3, sep=''))
m1
(rownames(m1) = paste('R',1:4, sep=''))
m1
attributes(m1)
t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" ) #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) #colwise




































































































#DataFrame----
#create Vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA','BTECH'), size=30, replace=T, prob=c(.5,.5,.5)))
rollno; sname; gender;marks;marks2;course

(gender= c('M','F','F','M'))

(gender=sample(c('M','F'), size = 30,replace = T, prob = c(.7,.3)))
table(gender)
prop.table(table(gender))









#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) #DF
summary(df1)  #summary
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
summary(df1)


df1  #full data
df1$gender  #one column
df1[, c(2,4)] #multiple columns
df1[1:10,] #select rows, all columns
#as per conditions
df1[marks>50 & gender=='F', c('rollno', 'sname', 'gender', 'marks')]
df1[marks>50 & gender=='F', c(1,2,3)]
df1[marks>50 | gender=='F',]

names(df1)  # names of columns
dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))




#List -----
g ="My First List"
h = c(25, 26,18,39)
j = matrix(1:10,nrow=2)
k = c('one','two','three')
mylist = list(title=g, ages=h, j, h)
mylist
mylist[2]
mylist[[2]]
mylist[['ages']]
mylist$ages
