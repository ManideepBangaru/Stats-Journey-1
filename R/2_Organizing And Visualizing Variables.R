rm(list=ls(all=T))

array1 <- c(68,94,63,75,71,88,64)
OrderedArray1 <- sort(array1)

array2 <- c(88,78,78,73,91,78,85)
OrderedArray2 <- sort(array2)

AverageTimeToResolve <- c('Less than 1 day',
                          'Between 1 and less than 3 days',
                          'Between 3 and less than 7 days',
                          'Between 7 and less than 14 days',
                          '14 days or more')

Frequency <- c(101,115,47,30,44)

df <- data.frame(AverageTimeToResolve,Frequency)
df$Perc <- df$Frequency/sum(df$Frequency)
df$CummPerc <- round(cumsum(df$Perc)*100,2)
