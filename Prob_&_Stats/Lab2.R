# we are rolling 2 Dice of colur green and red 
green <- c(1:6, 1:6, 1:6, 1:6, 1:6, 1:6)
red <- rep(1:6, each=6)

dice <- data.frame(red , green)
print(dice) 

dice$Sum <- dice$red + dice$green
counts <- table(dice$Sum)
print(counts)
counts <- data.frame(counts)
print(counts)
counts$prob <- counts$Freq / 36
print(counts)

# part A 
# What is the probability of getting a total of 8 when you roll two dice? -- 
# What is the probability of getting an even number when you roll two dice? -- 

sample50 <- sample(dice$Sum , 50 , replace = TRUE )
prob50_table <- table(sample50)
prob50 <- data.frame(prob50_table)
prob50$relfreq <- prob50$Freq/50
print(prob50)

# part B
# In your sample of 50, what proportion of the time did you get a total of 8?
# What proportion of the time did you get an even number?

sample500 <- sample(dice$Sum , 500 , replace = TRUE)
prob500_table <- table(sample500)
prob500 <- data.frame(prob500_table)
prob500$relfreq <- prob500$Freq/500
print(prob500)
# In your sample of 500, what proportion of the time did you get a total of 8? --
# What code did you use to find this? --
# Compare the proportion of times you got an 8 in each sample with the true probability of getting an 8. What do you notice? -- 

