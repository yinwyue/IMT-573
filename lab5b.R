# set 1: 12-sided dice
# set 2: 6-sideed dice

dice1 <- sample(12,10000, replace = TRUE)
dice2 <- sample(6, 10000, replace = TRUE) + sample(6, 10000, replace = TRUE)

#dice1 = c(1,2,3,4,5,6,7,8,9,10,11,12)
#dice2 = c(1,2,3,4,5,6)

par(mfrow = c(1,1))
barplot(table(dice1), ylim = c(0,2000), xlab = "number", ylab = "count", main = "count for set1")
barplot(table(dice2),ylim = c(0,2000), xlab = "number", ylab = "count", main = "count for set2")

sampleList <- c(5,15,50,225)
ymax = c(5,15,50,225)

for (i in 1:length(sampleList)){
  numsample <- sampleList[i]
  means = 
    for (j in 1:numsample){
      
    }
}

