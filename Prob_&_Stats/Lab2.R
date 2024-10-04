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
# What is the probability of getting a total of 8 when you roll two dice? -- 0.13888889
print(counts[counts$Var1==8 , "prob"])
# What is the probability of getting an even number when you roll two dice? -- 0.5
# changing the var1 column is factor data type, not a numeric type. a factor is used to represent categorical data.
counts$Var1 <- as.numeric(as.character(counts$Var1))
even_sums <- counts[counts$Var1 %% 2 == 0, ]
#selected all the rows from count dataframe  with all columns 
even_prob <- sum(even_sums$prob)
print(even_prob)

sample50 <- sample(dice$Sum , 50 , replace = TRUE )
prob50_table <- table(sample50)
prob50 <- data.frame(prob50_table)
prob50$relfreq <- prob50$Freq/50
print(prob50)

# part B
# In your sample of 50, what proportion of the time did you get a total of 8? -- 0.20
prob50[prob50$sample50 == 8, "relfreq"]
# What proportion of the time did you get an even number? --  
prob50$sample50 <- as.numeric(as.character(prob50$sample50))
even_sums_sample50 <- prob50[prob50$sample50 %% 2 == 0, ]
even_prob50 <- sum(even_sums_sample50$relfreq)
print(even_prob50)


sample500 <- sample(dice$Sum , 500 , replace = TRUE)
prob500_table <- table(sample500)
prob500 <- data.frame(prob500_table)
prob500$relfreq <- prob500$Freq/500
print(prob500)
# In your sample of 500, what proportion of the time did you get a total of 8? --
prob500[prob500$sample500 == 8, ]
# What code did you use to find this? --
prob500[prob500$sample500 == 8, ]
# Compare the proportion of times you got an 8 in each sample with the true probability of getting an 8. What do you notice? -- 
print(paste("True Probability of Rolling an 8 ", counts[counts$Var1==8 , "prob"]))
print(paste("proportion of times you got an 8 For sample 50:", prob50[prob50$sample50 == 8, "relfreq"]))
print(paste("proportion of times you got an 8 For sample 500:", prob500[prob500$sample500 == 8, "relfreq"]))

cat("Conclusion: \n",
    "1. The smaller sample size (50) shows more variation and tends to overestimate the true probability.\n",
    "2. The larger sample size (500) gives a proportion closer to the true probability of getting a sum of 8, as expected from statistical theory.\n",
    "3. As the sample size increases, the sample proportion tends to stabilize and become a better estimate of the true probability.\n")
