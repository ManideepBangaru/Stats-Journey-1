rm(list=ls(all=T))

vec <- c(20,34,56,23,45,22,60,23,56,78,23,45)

scatter.smooth(vec)

mean(vec) # mean of the vector
median(vec) # median of the vector

# For symmetrical distributed data mean, median and mode are almost equal in value
# For asymmetrical distributed data, following relationship holds good approximately
# Mode = 3 * Median - 2 * mean (or)
# Mean - Mode = 3 * (Mean - Median)
# above realtion is called as empirical relation. Using this if two measures are known, it is easy to 
# find out the third measure

# Harmonic Mean of a vector
hm_ <- function(vcetor) {
  return(length(vec)/sum(1/vec))
}

hm_(vec)

# geometric Mean of a vector
gm_ <- function(vcetor) {
  return(prod(vcetor)^(1/length(vcetor)))
}
gm_(vec)


# Variation and shape

# range of a vector
range_ <- function(vcetor) {
  return(max(vcetor)-min(vcetor))
}
range_(vec)

# variance of a vector
variance_ <- function(vcetor){
    var_ <-  0
    for (ele in 1:length(vcetor)){
      var_ = var_ + (vcetor[ele] - mean(vcetor))^2
    }
    return (var_/length(vcetor)-1)
}

variance_(vec)

# standard deviation of a vector
stddev_ <- function(vcetor){
  return (variance_(vcetor) ^ 0.5)
}
stddev_(vec)

# Coefficient of Variation
# It measures the scatter in the data with respect to the mean
CoeffVar_ <- function(vcetor){
  return (stddev_(vcetor)/mean(vcetor)) *100
}
CoeffVar_(vec)

# Z Scores
# a Z score of 0 indicates that the value is same as the mean
# helps in identifying outliers, less than -3 and greater than +3 are considered to be outliers
zscore <- function(vcetor){
  temp_ <- c()
  for (ele in 1:length(vcetor)){
    temp_ <- append(temp_, (vcetor[ele]-mean(vcetor))/stddev_(vcetor))
  }
  return (temp_)
}
zscore(vec)

# skewness
# Mean < Median ----> left skewed or negative skew
# Mean = Median ----> symmetrical distribution (zero skewness)
# Mean > Median ----> right skewed or positive skew

# Kurtosis
# A distribution that has a sharper-rising center peak than the peak of a normal distribution has 
# positive kurtosis, a kurtosis value that is greater than zero, and is called lepokurtic. 
# 
# A distribution that has a slower-rising (flatter) center peak than the peak of a normal distribution 
# has negative kurtosis, a kurtosis value that is less than zero, and is called platykurtic. 
# 
# A lepokurtic distribution has a higher concentration of values near the mean of the distribution 
# compared to a normal distribution, while a platykurtic distribution has a lower concentration 
# compared to a normal distribution.
