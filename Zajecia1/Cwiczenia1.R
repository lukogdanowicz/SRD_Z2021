# Statystyczne Reguły Decyzyjne
# Łukasz Kraiński lukasz.krainski123@gmail.com
# Ćwiczenia 1

# http://www.cyclismo.org/tutorial/R/
# https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf
# https://www.datacamp.com/courses/free-introduction-to-r
# https://www.edx.org/course/introduction-r-data-science-microsoft-dat204x-3

#### Plan ####

# Pomoc
# Wektory 1x1 [skalary]
# Wektory
# Macierze
# Listy/ramki danych

#### Pomoc ####

help("plot")
?plot

help.search('linear model')
??'linear model'

RSiteSearch('linear model') #szukanie na stronie R

#### Wektory 1x1 [skalary] ####

number <- 145
number

number2 <- 359
number2
number2 <- 433
number2

next_number <- number^2
next_number
number3 <- (number2*3 + 532)/5
number3

(34+93)/14.5

ls() #zawartość środowiska
rm(number) #usuwanie obiektu
rm(number2,next_number,number3) #usuwanie listy obiektów

#### Wektory ####

my_first_vector <- c(4,7,23.5,76.2,80)
my_first_vector
length(my_first_vector) #długość wektora
mode(my_first_vector) #typ lub zawartość wektora

vector_strings<-c(4,7.5,25,72,80,"word")
vector_strings
mode(vector_strings)
vector_strings[2]
vector_strings[1]<-'hello world'
vector_strings

vector_with_missing_value<-c(1,23,NA,444)
vector_with_missing_value
mode(vector_with_missing_value)
vector_logical<-c(T,F,NA,TRUE,FALSE)
vector_logical
mode(vector_logical)

new_vector<-vector() #pusty wektor
new_vector
length(new_vector)
new_vector[2]<-45
new_vector
length(new_vector)
new_vector[5]
new_vector[4]<-4
new_vector

overwrite_vector<-c(124,4,2,5,45,76,45)
overwrite_vector
overwrite_vector<-c(overwrite_vector[5],overwrite_vector[2])
overwrite_vector

## Operacje na wektorach ##

v<-c(4,36,6,2,6,5,6,2,4.6)
k<-sqrt(v) #pierwiastek kwadratowy
k
sort(v) #sortowanie
length(v)
unique(v) #unikalne wartości
length(unique(v))
sort(unique(v))

v1<-c(5,5.5,2)
v2<-c(3,12,5.2)
v1+v2

v1<-c(1,2,3,4)
v2<-c(10,100)
v1+v2

v1<-c(3,4,5,6,7)
2*v1

## Czynniki ##

gender<-c('f','m','f','f','m','f','f','m','f','f')
gender

gender<-factor(gender)
gender

gender2<-factor(c('f','f','f','f','f'),levels=c('f','m'))
gender2

table(gender) #cz?sto?ci

age<-factor(c('>18','<18','<18','<18','<18','>18','>18','>18','>18','>18'))
age
length(age)

t<-table(gender,age)
t
prop.table(t) #

margin.table(t,1)
margin.table(t,2)

prop.table(t,1)
prop.table(t,2)

## Sekwencje ##

counter<-1:10
counter

10:0

seq(-1,1,0.1)

seq(from=-1,to=1,length=21)
seq(length=21,from=-1,by=0.1)

rep(1,5)
rep('hello',3)
rep(1:2,3)
rep(1:2,each=3)

## Liczy losowe ##

set.seed(1) #ziarno
los<-rnorm(1000) #generowanie 1000 losowych realizacji
hist(los,freq=0) #histogram
lines(density(los),col="blue") #krzywa gęstości
x=seq(from=min(los),to=max(los),by=0.1)
mean(los) #średnia
sd(los) #odchylenie standardowe
value.f.density=dnorm(x,mean=mean(los),sd=sd(los))
lines(x,value.f.density,col="red")

hist(x<-rnorm(100,mean=10,sd=3),freq=0)
lines(density(x))

los<-runif(10^6)
hist(los,xlim=c(-1,2))

## Indeksowanie, filtrowanie ##

x<-c(40,0,-43,44,-61,465,9502,-56)
x>0
x[x>0]
x[x<=-52|x > 55]
x[x>33&x < 111]
x[c(7,4,6)]
x[1:5]
y<-c(1,3)
y
x[y]

x[-1]
x[-c(4,6)]
x[-(1:3)]

age<-c(18,20,33,22)
names(age)<-c('Anna','Adam','Carol','John')
age

age2<-c(Anna=18,Adam=20,Karol=33,Franek=22)
age2
age==age2
all(age==age2)

age['Adam']
age[c('John','Adam')]
age2['Anna']=19
age==age2
all(age==age2)
any(age==age2)
age!=age2
any(age!=age2)

#### Macierze ####

sequence_numbers<-c(5,3,6,7,3,4,6,2,8,3)
sequence_numbers
length(sequence_numbers)
dim(sequence_numbers)
dim(sequence_numbers)<-c(2,5)
sequence_numbers

matrix1<-matrix(c(5,3,6,7,3,4,6,2,8,3),2,5)
matrix1

matrix1==sequence_numbers
all(matrix1==sequence_numbers)

matrix2<-matrix(c(5,3,6,7,3,4,6,2,8,3),2,5,byrow=TRUE)
matrix2

matrix2[2,3]
matrix2[-2,1]
matrix2[1,-c(3,5)]
matrix2[1,]

is.matrix(matrix2)
is.matrix(matrix2[,4])
is.vector(matrix2[,4])

matrix2[1,,drop=F]
is.matrix(matrix2[1,,drop=F])
matrix2[,4,drop=F]
is.matrix(matrix2[,4,drop=F])

matrix1<-matrix(c(4,2,6,7,3,4,5,1,7,2),2,5)
matrix1
cbind(c(4,7),matrix1[,4])
matrix2<-matrix(rep(1,20),4,5)
matrix2
matrix3<-rbind(matrix1[1,],matrix2[3,])
matrix3

array3D<-array(1:24,dim=c(4,3,2)) #macierz 3D
array3D
array3D[1,3,2]
array3D[1,,2]
array3D[4,3,]
array3D[c(2,3),,-2]

matrix1
matrix1*3
matrix2<-matrix(c(12,4,3,2,3,65,32,7,4,78),2,5)
matrix2
matrix1+matrix2 #dodawanie macierzy
matrix1*matrix2
t(matrix2) #transponowanie
matrix1%*%t(matrix2) #mnożenie

#### Listy/ramki danych ####
## Listy ##
student<-list(index=12345,name="Artur",marks=c(MO=4.5,SwAK=5,AM2=NA))
student
names(student)
attributes(student)

student$index
student$marks
student[1]
student[3]
student[[1]]
student[[3]]
mode(student[1])
mode(student[[1]])

names(student)<-c('id','firstname','grades')
student

student$parents<-c("Barbara","Marek")
student

length(student)
names(student)

student[-3]

other_info<-list(age=24,gender='M')
new.list<-c(student,other_info)
new.list

## Ramki danych ##
data_set<-data.frame(id=1:4,
 name=c('Alex','Jacob','Mike','May'),
 average=c(4.93,4.3,4.6,4.7))

data_set
data_set[1,2]
data_set$name
is.factor(data_set$name)

data_set[data_set$average>4.4,]
data_set[data_set$name=='Jacob','average']
data_set[data_set$id>=2,c('name','average')]

attach(data_set)
data_set[name=='May',]
average

subset(data_set,average>4.4)

nrow(data_set)
ncol(data_set)
dim(data_set)

names(data_set)
head(data_set)
tail(data_set)
