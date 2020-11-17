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
hm <- function(vcetor) {
  return(length(vec)/sum(1/vec))
}

hm(vec)

