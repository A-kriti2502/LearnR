number1 <- 7
number2 <- number1 + 2
number2 <- sum(number1, 2)
vector1 <- c(1, 3, 6)
vector2 <- c(vector1, number1, number2)
vector3 <- c("one", "three", "six", "seven", "nine")

data1 <- data.frame(vector2, vector3)
data1

studentname <- c("John" , "Anne", "Terry" ,"fred" , "Maria")
exam1 <- c(92,75,98,62,79)
exam2 <- c(81,67,100,56,82)
results <- data.frame(studentname, exam1, exam2)
print(results)
results$avg ((results$exam1 + results$exam2)/2)

results$grade <- cut(results$avg ,breaks = c(0,49,69,84,100), labels = c("D","C","B","A"))
results <- results[order(-results$avg),]
print(results)

results2 <- data.frame(results$studentname, results$grade)
print(results2)
