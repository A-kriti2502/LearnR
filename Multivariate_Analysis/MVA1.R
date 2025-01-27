#Multivariate Analysis Lab 1

#Exercise 1
music <- read.csv("../../MusicData.csv")
music <- music [1:57,]
dim(music)
#Typically we’ll want to have a quick look at our multivariate data. Therefore
#we want to plot each variable against all the other variables in the data set
pairs(music[,4:8]) #pair plot of all numerical columns in music data 

#for multivariate data we are trying to identify structure in the data 
songtype <- as.numeric(factor(music$Type))
pairs(
  music[, 4:8],
  col = songtype,  # color by song type
  pch = songtype,  # different symbol for each type
  main = "Pair Plot of Music Data"
)

#Exercise 2 
library(MASS) 
# 1.Check if the whiteside dataset is a dataframe or a matrix
whiteside
is.data.frame(whiteside)
is.matrix(whiteside)
# 2.What are the column names?
colnames(whiteside)
# 3.Use R commands to access the values in the second column.
whiteside[,2]
# 4.Change the third value in the Gas column to 10.
whiteside[3,3] <- 10
# 5.Create a histogram of the Temp column. 
hist(whiteside$Temp)
# 6.Create a plot of Temp (on x-axis) versus Gas (on y-axis). Then re-create
plot(whiteside$Temp, whiteside$Gas)
# 7.Summarise the data using:
summary(whiteside)
# 8.Save the first 10 rows of the data into a variable called whiteside.subset.
whiteside.subset <- whiteside[1:10,]
# 9.Display all items in the workspace.
ls()
# 10.Remove the variable whiteside.subset.
rm(whiteside.subset)
# 11.Save the microarray data set discussed in lectures into your working directory 
#   from Brightspace and read the data into a variable called microarray in R. 
#   Below is code which plots the gene expression levels for 3 patients
#   each with a different cancer type. Can you understand what each stage
#   of the code does? The function called points simply adds points to an
#   already open plot.
microarray <- read.csv("../../microarraydata.csv")

str(microarray)
microarray$X <- as.numeric(factor(microarray$X))

plot(1:6829, # specifies the x-axis values, representing the gene number.
     microarray[1, 2:6830], 
     #selects the gene expression values for the first patient (row 1) across 
     #all 6829 genes.
     type="l", #indicates a line plot
     col=as.numeric(microarray[1,1]), 
     #sets the color of the line based on the value in the first column (X) of 
     #the first patient, which has been converted to numeric.
     xlab="Gene number", 
     ylab="Expression level")

#is used to add additional lines (points) to the existing plot.
#The second and third patients’ gene expression data (rows 4 and 5) are added 
#to the plot using the same structure as the first plot.
points(1:6829, 
       microarray[4,2:6830], 
       type="l", 
       col=as.numeric(microarray[4,1]))
# this assign different colors to the lines based on the X values for patients 4 

points(1:6829, 
       microarray[5,2:6830], 
       type="l", col=as.numeric(microarray[5,1]))














