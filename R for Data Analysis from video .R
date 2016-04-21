#creating a vector 
x <- c("hockey" , "cat" , "gig")
x
x <- 9:22
x#in R first element is 1 
x[1]
x[1:4]
#selecting specific emelment 
x[c(1,4)]
c(One = "a", Two = "y", Last = "r")
w <- 1:3
names(w) <- c("a","b", "c")
w
#NA represent missing value 
#Null represent null or nothin 
zChar <- c("hock" , NA , "lac")
zChar
#to find if there is na in the array 
is.na(zChar)

#create vector 1:10 and find mean 
x <- 1:10 
mean(x)
sum(x)
nchar(x)
mean(x = x, trim = .1)
mean(x,na.rm = TRUE)
x[c(2,6)] = NA
x
mean(x, na.rm = TRUE)

#creating and Access Dataframes 
x <- 10:1
y <- -4:5
q <- c("hocl", "jack", "kim", "san", "rugby", "basketball", "lion", "hih","gig", "jimm")
thedf <- data.frame(x,y,q)

#renaming the dataframe 
thedf <- data.frame(First = x, sec = y , sport = q)
class(thedf$sport)

#convert Factor to Character for modeling 
thedf <- data.frame(First = x, sec = y , sport = q, stringsAsFactors =FALSE)
class(thedf$sport)

nrow(thedf)
ncol(thedf)
dim(thedf)

names(thedf)
row.names(thedf)
row.names(thedf)
head(thedf)

thedf$sport

#get induvidual data 
thedf[3, 2]
thedf[3 , 2:3]
thedf[c(3,5) ,2:3]
#grab entire thrid column 
thedf[,3]
#grab sec and thrid column 
thedf[,2:3]

#grab on column and check class
class(thedf[,3])
# means that the one column should be displayes as Dataframe
thedf[,3, drop = FALSE] 

class((thedf[,3, drop = FALSE] ))
#choose just one rows 
class(thedf[2,])
thedf[2:4,]

thedf[,c("First","sport")]

#LISt creating 
a <- list(1,2,3)
a
b <- list(c(1,2,3),3:7)
b

exdf <- data.frame(First = 1:5 , sec = 5:1 , Sport = c("hoc", "foot", "curl", "tenn","cat" ), stringsAsFactors = FALSE)
exdf

#create Matrix 

A <- matrix(1:10 , nrow = 5)
A

B <- matrix(21:30 , nrow = 5)
B
nrow(A)

#matrix addition 
A + B

#matrix multiplication 
A * B

#equality 
A == B

#important one is dot product 

ncol(A)
nrow(B)
t(B)

A %*% t(B)

colnames(A)
colnames(A) <- c("LEFT", "Ri")
A

#read CSV
url <- "http://www.jaredlander.com/data/TomatoFirst.csv"
tomato <- read.table(file = url, header = TRUE, sep = ',', stringsAsFactors = FALSE)
head(tomato)
class(tomato$Tomato)
#stringasfactor = false to speed up computation time 

#read from CSV

#load data included with R
library(ggplot2)
data(diamonds)
data("diamonds" , package = reshape2)

# scrape data from web 
library(xml2)

#theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
#bowlgame <- readHTMLTable(theURL, header = FALSE , stringsAsFactors = FALSE)

#vizualization of diamonds data 

#histogram frquency 
hist(diamonds$carat)
#label the hist 
hist(diamonds$carat, main = "caret", xlab = "Caret value")

#making scatter plot 
plot(diamonds$carat , diamonds$price)

plot(price ~ carat , data = diamonds , main = "price vs carat")

#box plot --> try to get a sense of how data spreads out 

boxplot(diamonds$carat)#this box means 50% data if 50% data is inside the box  the other 50% is not 

#familiarizing with ggplot
ggplot(data) 
geom_point()
geom_histogram()
geom_line()
aes(x, y )
#ggplot(data) is basic function you build on it with point or hist using + 
ggplot(data) + geom_point(aes(x,y))#layers are seperated by + , aes is aesthetic value 
#maping layers to physical dimension 


#ploting using ggplot 
ggplot(data = diamonds) + geom_histogram((aes(x = carat)))
#adjusting bin width 
ggplot(data = diamonds) + geom_histogram(aes(x = carat), binwidth = .5)

ggplot(data = diamonds) + geom_histogram(aes(x = carat), binwidth = .1)

#using density plot
ggplot(data = diamonds) + geom_density(aes(x=carat))
#fill colour
ggplot(data = diamonds) + geom_density(aes(x=carat),fill = "grey50")


#scatter plot in ggplot

ggplot(data = diamonds, aes(x = carat , y = price)) + geom_point()

g <- ggplot(data = diamonds, aes(x = carat , y = price))

g+geom_point()
#coloring with the color of the diamond 
g+geom_point(aes(color = color))
#using the cut for clarity and mapping aesthetics 
g+geom_point(aes(color = color, shape = cut ))
#geom box plot
g +geom_boxplot()

ggplot(data = diamonds, aes(y = carat , x = cut)) + geom_boxplot()

#using facet_wrap for multiples of colour

#break the plot into discreate color one for each unit and form this into grid 
#induviduall plot for colour 
g + geom_point(aes(color=color ))+ facet_wrap(~color)

#each panes computes for cut and clarity 
g + geom_point(aes(color=color ))+ facet_grid(cut~clarity)


ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)

#create function  function gets assigned to variable 

say.hello <- function()
{
  print ("hello world")
  
}

#basic function arguments 
sprintf("hello %s" , "san")
#sprintf is a substitution function for strings 
sprintf("hello %s,today is %s" , "san" , "monday")                 

hello.person <- function(name)
{
  sprintf("hello %s" , name)
}

hello.person("san")


hello.person <- function(first , last)
{
 print( sprintf("hello %s %s" , first , last))
}

hello.person(first = "san", last = "k")


#return a value from a function 

double.num <- function(x)
{
  return (x * 2)
  
}

double.num(5)


#do.call lets you specify the function and call it 

hello.person <- function(first , last)
{
  print( sprintf("hello %s %s" , first , last))
}

do.call(hello.person, args = list(first = "san", last = "koth"))

run.this<- function(x, func = mean)
{
  do.call(func, args = list(x))
}
  
run.this(1:10, sum)

run.this(1:10, sd)

tocheck <- 1
if(tocheck ==1)
{
  print ("hi")
}


#if statements fails else comes to play 

check.bool <- function(x)
{
  if(x== 5)
  {
    print("hello")
  }else if (x == 0)
  {
    print ("goaway")
  }else 
  {
    print ("itsnot0")
  }
    
  
}

check.bool(8)

#ifesle for computation 
totest <- c(1,1,1,0,0)

ifelse(totest ==1 , totest*3 ,totest)

#iter for loop 

for (i in 1:10 )
{
  print (i )
}

fruit <- c("apple", "bana" , "pom")
#rep repeates something
fruitlen <- rep(NA, length(fruit))
#creates column names with fruits
names(fruitlen) <- fruit

#adds the apple length to the vector 
for (a in fruit)
{
  fruitlen[a] <- nchar(a)
}

fruitlen1 <- nchar(fruit)

#identical funtion to check if they are identical 
thematrix <- matrix(1:9 , nrow = 3)
#apply expects a matrix --> first converts ibnto matrix
#margin --> column if 2 , 1 --> rows
apply(thematrix ,MARGIN =  2 , sum)

apply(thematrix ,MARGIN =  1 , sum)

colSums(thematrix)

thematrix[2,1] <- NA

#adding NA is not possible so dont skip NA

apply(thematrix ,MARGIN =  1 , sum, na.rm = TRUE)


firstlist <- list(A = matrix(1:16, 4), B = matrix(1:16 , 2) , C = 1:15)
seclist <- list(A = matrix(1:16, 4), B = matrix(1:16 , 8) , C = 15:1)

#mapply goes over multiple list 
mapply(identical,firstlist,seclist)
simplefunc <- function(x,y)
{
  NROW(x) + NROW(y)
}
#takes no of rows in first list and added to no of rows in sec list 
mapply(simplefunc, firstlist,seclist)

#Aggregate function 
library(ggplot2)
data(diamonds)
head(diamonds)
mean(diamonds$price)

#left hand is what you are computing on and right hand side will be group by what ?
aggregate(price ~ cut , diamonds ,mean , na.rm = TRUE)

#mean price for each cut and color 
aggregate(price ~ cut +color , diamonds ,mean , na.rm = TRUE)

#cbind builds two column matrix of carat and price 
#aggregate two variable with another using cbind 
aggregate(cbind(price , carat) ~ cut , diamonds ,mean , na.rm = TRUE)

aggregate(cbind(price , carat) ~ cut + color , diamonds ,mean , na.rm = TRUE)

#plyr 
library(plyr)
data(baseball)
head(baseball)
baseball$sf[baseball$year < 1954 ] <- 0
any(is.na(baseball$sf))


baseball$hbp[is.na(baseball$hbp)] <- 0 

any(is.na(baseball$hbp))


#fetching just players who had ab above 50 
baseball <- baseball[baseball$ab >= 50 , ]
# we use with statement for not repeating the dataframe name 
baseball$OBP = with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))

obp <- function(data)
{
  c(OBP = with (data , sum(h + bb + hbp) / sum(ab + bb + hbp + sf)))
}


#ddaply you split the data up , apply som sort of function and then combine them 

#ddaply --> first data , then the variable to combine with and then the function name 

careerOBP <- ddply(baseball, .variables = "id", obp)

head(careerOBP)

# we see players with highest carrer 
careerOBP <- careerOBP[order(careerOBP$OBP , decreasing = TRUE),]

#lapply --> goes from list to list 
#llply 
thelist <- list(A = matrix(1:9 , 3), B = 1:5 , C = matrix(1:4, 2) , D = 2)

lapply(thelist, sum)

llply(thelist, sum)

#takes a list and returns an array 
laply(thelist , sum)

#sapply does not retun name of the result

#use each function to apply more than one function to data 
head(diamonds)
aggregate(price ~ cut , diamonds , each(mean , median))

#colwise allows you to use some function to each column of the dataframe 
numcolwise(sum , na.rm = TRUE)(diamonds)#just sums the the columns 

#combine Dataframes 

sport <- c("hoc", "foot", "grre")
leag <- c("NHL" , "ggl" , "gom")

#cbind column bind , side by side 
sports1 <- cbind(sport,leag)

sports2 <- data.frame(sport = c("bask" , "golf"), leag = c("nba", "pga"))

#rbind combine rows , same column mname is a must , stack them vertically one underneath the other 

sports <- rbind(sports1, sports2)

#Join Datasets 
codes <- read.table("C:\\Users\\Sandhya\\Downloads\\countryCodes.csv", header = TRUE ,sep = "," , stringsAsFactors = FALSE)
countries <- read.table("C:\\Users\\Sandhya\\Downloads\\GovType.csv", header = TRUE ,sep = "," , stringsAsFactors = FALSE)
View(countries)
#merging dataframes

country.merged <- merge(x = codes , y = countries , by.x = "Country.name" , by.y = "Country"  )

View(country.merged)


#joining dataframes 

library(plyr)
codes <- rename(codes, c(Country.name = "Country"))
countryjoined <- join(x= codes , y = countries , by = "Country")

#probablity distrubution 
#drwing random number 
randnorm10<- rnorm(10)
rnorm(10 , mean = 100 , sd = 20)
dnorm(randnorm10) # dnorm denotes roughly how much percent of chances does the number have 

library(ggplot2)
randnorm <- rnorm(30000)
randdensity <- dnorm(randnorm)
ggplot(data.frame(x = randnorm , y = randdensity)) + aes(x=x, y = y ) + geom_point() + labs(x = "random varible " , y = "density")


#avarage , Correlation and STD deviation 

x <- sample(x = 1:100 , size = 100 , replace =  TRUE)

mean(x)
 y<-x

 #to find variance 
 var(x) #how far is each point away from the center 
 
#variance formula 
 sum((x - mean(x))^2)/(length(x) -1 )
 
#std dev 
 sqrt(var(x))
sd(x)

sum(x)
min(x)
max(x)
summary(x)

#quantile 25th lowest and 75th lowest 
quantile(x, probs = .25)

#correlation - how related one variable is to another 

head(economics)
cor(economics$pce , economics$psavert)

#every value of x - mean of x / no of osv 

econcor <- cor(economics[,c(2, 4:6)])

library(reshape2)
econmelt <- melt(econcor , varnames = c("x","y"), value.name = "Correlation")

head(econmelt)

econmelt <- econmelt[order(econmelt$Correlation), ]

ggplot(econmelt, aes(x=x , y = y ))+geom_tile(aes(fill = Correlation ))
