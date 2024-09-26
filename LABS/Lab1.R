runif(10)
x1 <- c( 0 , 1)
x1

w <- c("dog", 4)
w
mode(w)
length(w)

v <- c(TRUE , 9)
v[0] #indexing starts from 1 
mode(v)

str(iris)

a = 123 # also acceptable 
a
sum(v)

 b <- "aakriti" 
 # if does not consider string as vector so cannot acess b[3]
 bvector <- strsplit(b, "")[[1]]
 bvector[3]
 
c<- 12345
cvector <- as.character(c)
csplit <- strsplit(cvector , "")[[1]]
cnumeric <- as.numeric(csplit)
clist <- as.list(cnumeric)

sum(cnumeric) # i cannot use sum function on clist as it is a list but cnumeric a vector of numeric 
#to use clist to calculate sum use for loop 

total <- 0
for ( x in clist ){
  total = total +  x
}
total
